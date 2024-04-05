
#include "WolfensteinCore1App.h"

#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "../../wolfenstein_core_0/src/Addresses.h"
#include "../../wolfenstein_core_0/src/Colour.h"
#include "../../wolfenstein_core_0/src/Constants.h"
#include "../../wolfenstein_core_0/src/Drop.h"
#include "../../wolfenstein_core_0/src/Enemy.h"
#include "../../wolfenstein_core_0/src/Player.h"
#include "../../wolfenstein_core_0/src/SharedDataPacket.h"
#include "../../wolfenstein_core_0/src/Sprite.h"
#include "../../wolfenstein_core_0/src/ValidAckInterface.h"

WolfensteinCore1App::WolfensteinCore1App() {
	xil_printf("Wolfenstein Core 1 App Init\n");

	Xil_DCacheDisable();

	// initialize floor and ceiling buffers
	// Draw 1 row and copy
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		CEILING_BUFFER[j] = CEILING_COLOUR;
		FLOOR_BUFFER[j] = FLOOR_COLOUR;
	}
	for(int i = 0; i < SCREEN_HEIGHT / 2; i++) {
		memcpy(&CEILING_BUFFER[i * SCREEN_WIDTH], &CEILING_BUFFER[0], SCREEN_WIDTH * sizeof(int));
		memcpy(&FLOOR_BUFFER[i * SCREEN_WIDTH], &FLOOR_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}
}

void WolfensteinCore1App::runCore1App() {
	xil_printf("Starting Wolfenstein Core 1 App\n");

	// Times are in double-clock-cycles
	u32 maxTransferTime = 0;
	u32 maxDrawTime = 0;
	u32 maxUpdateTime = 0;
	u32 maxFrameTime = 0;

	while(true) {
		XTime frameStartTime;
		XTime frameEndTime;
		XTime funcStartTime;
		XTime funcEndTime;
		u32 funcTime;

		XTime_GetTime(&frameStartTime);

		// Receive data packet from core 0
		XTime_GetTime(&funcStartTime);
		receiveSharedDataPacket();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxTransferTime) {
			maxTransferTime = funcTime;
		}

		// Draw Environment
		XTime_GetTime(&funcStartTime);
		drawEnvironment();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxDrawTime) {
			maxDrawTime = funcTime;
		}

		// Draw enemies
		XTime_GetTime(&funcStartTime);
		drawEnemies();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxDrawTime) {
			maxDrawTime = funcTime;
		}

		drawDrops();

		drawHUD();

//		Xil_DCacheFlush();

		// Update Screen
		XTime_GetTime(&funcStartTime);
		updateScreen();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxUpdateTime) {
			maxUpdateTime = funcTime;
		}

//		Xil_DCacheFlush();

		XTime_GetTime(&frameEndTime);
		u32 frameTime = (u32)((u64)frameEndTime - (u64)frameStartTime);
		if(frameTime > maxFrameTime) {
			maxFrameTime = frameTime;
		}
	}
}

void WolfensteinCore1App::receiveSharedDataPacket() {
	while(!INTERFACE_PTR->valid);

	memcpy(&SHARED_DATA_PACKETS[1], &SHARED_DATA_PACKETS[0], sizeof(sharedDataPacket_t));

	INTERFACE_PTR->acknowledge = 1;
	while(INTERFACE_PTR->valid);

	INTERFACE_PTR->acknowledge = 0;
}

void WolfensteinCore1App::drawEnvironment() {
	float* distanceArray = SHARED_DATA_PACKETS[1].distanceArray;

	// Calculate the wall height (start row) for each ray column
	for(int r = 0; r < NUM_RAYS; r++) {
		WALL_START_ROW_ARRAY[r] = getScreenRowOfCeilingAtDistance(distanceArray[r]); // Inclusive for walls, exclusive for ceiling
	}

	// Find ray column closest to player
	int indexOfClosest = 0;
	for(int r = 1; r < NUM_RAYS; r++) {
		if(distanceArray[r] < distanceArray[indexOfClosest]) {
			indexOfClosest = r;
		}
	}

	int minWallRow = WALL_START_ROW_ARRAY[indexOfClosest]; // Inclusive
	if(minWallRow < 0) {
		minWallRow = 0;
	}

	int maxWallRow = SCREEN_HEIGHT - minWallRow; // Exclusive
	int maxCeilingRow = minWallRow; // Exclusive
	int minFloorRow = maxWallRow; // Inclusive

	// BEGIN DRAWING

	// Draw 1 row of wall and copy to parts of screen that have visible wall
	for(int r = 0; r < NUM_RAYS; r++) {
		int wallColourInt = getColourFromGradient(WALL_GRADIENT, WALL_GRADIENT_LENGTH, distanceArray[r]);
		for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
			INTERMEDIATE_IMAGE_BUFFER[r * PIXEL_WIDTHS_PER_RAY + j] = wallColourInt;
		}
	}
	for(int i = minWallRow; i < maxWallRow; i++) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	// Copy floor and ceiling buffers to parts of screen that have floor and ceiling across the whole row
	if(maxCeilingRow > 0) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[0], CEILING_BUFFER, maxCeilingRow * SCREEN_WIDTH * sizeof(int));
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[minFloorRow * SCREEN_WIDTH], FLOOR_BUFFER, (SCREEN_HEIGHT - minFloorRow) * SCREEN_WIDTH * sizeof(int));
	}

	// Fill in the rest of the floor and ceiling (non rectangular parts) in columns
	fillNonRectangularCeilingAndFloor(maxCeilingRow);
}

void WolfensteinCore1App::drawSpriteSimple(Sprite* sprite, int rowOffset, int colOffset) {
	short* firstPixelArray = sprite->getFirstPixelArray();
	short* numPixelsArray = sprite->getNumPixelsArray();
	int* pixelData = sprite->getPixelData();

	int startScreenRow = rowOffset;
	int endScreenRow = rowOffset + sprite->getNumRows() * sprite->getGranularity();
	if(startScreenRow < 0) {
		startScreenRow = 0;
	}
	if(endScreenRow > SCREEN_HEIGHT - 1) {
		endScreenRow = SCREEN_HEIGHT - 1;
	}

	for(int screenRow = startScreenRow; screenRow < endScreenRow; screenRow++) {
		int spriteRow = (int)((screenRow - rowOffset) / sprite->getGranularity());
		memcpy(
			&INTERMEDIATE_IMAGE_BUFFER[screenRow * SCREEN_WIDTH + colOffset + firstPixelArray[spriteRow]],
			&pixelData[spriteRow * sprite->getNumCols() + firstPixelArray[spriteRow]],
			numPixelsArray[spriteRow] * sizeof(int)
		);
	}
}

void WolfensteinCore1App::drawObjectWithPosition(
	ObjectWithPosition* object,
	Player* player,
	float* distanceArray,
	Sprite* sprite,
	int rowOffset
) {
	if(sprite == nullptr) {
		return;
	}

	float playerToObjectX = object->getPositionX() - player->getPositionX();
	float playerToObjectY = object->getPositionY() - player->getPositionY();
	float distanceFromPlayer = sqrtf(playerToObjectX * playerToObjectX + playerToObjectY * playerToObjectY);

	float objectAngle = player->getAngle() - atan2f(playerToObjectY, playerToObjectX);

	if(objectAngle < -M_PI) {
		objectAngle += 2.0 * M_PI;
	}
	else if(objectAngle > M_PI) {
		objectAngle -= 2.0 * M_PI;
	}

	bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;
	int objectMiddleCol = (objectAngle / HORIZONTAL_FOV + 0.5) * float(SCREEN_WIDTH);

	if(inPlayerFOV && distanceArray[objectMiddleCol / GRANULARITY_H] >= distanceFromPlayer) {

		const float SCALE_FACTOR_LOWER_BOUND = 1;
		float scaleFactor = distanceFromPlayer;
		if(scaleFactor < SCALE_FACTOR_LOWER_BOUND) {
			scaleFactor = SCALE_FACTOR_LOWER_BOUND;
		}

		int objectLeftCol 	= objectMiddleCol - sprite->getNumCols() / (2 * scaleFactor);
		int objectRightCol 	= objectMiddleCol + sprite->getNumCols() / (2 * scaleFactor);

		int spriteHeightInScreenSpace = (int)(sprite->getNumRows() * sprite->getGranularity() / scaleFactor);

		int objectTopRow = SCREEN_HEIGHT / 2 - (sprite->getNumRows() * sprite->getGranularity() - rowOffset) / (2 * scaleFactor);
		int objectBottomRow = objectTopRow + spriteHeightInScreenSpace;

		int screenGranularity = (int)(sprite->getGranularity() / scaleFactor);
		if(screenGranularity < 1) {
			screenGranularity = 1;
		}

		int* pixelData = sprite->getPixelData();

		int startScreenRow = objectTopRow;
		int endScreenRow = objectBottomRow;
		if(startScreenRow < 0) {
			startScreenRow = 0;
		}
		if(endScreenRow > SCREEN_HEIGHT) {
			endScreenRow = SCREEN_HEIGHT;
		}

		for(int screenRow = startScreenRow; screenRow < endScreenRow; screenRow += screenGranularity) {
			int spriteRow = (int)ceil((screenRow - objectTopRow) * scaleFactor / sprite->getGranularity());
			int firstPixel = (int)(sprite->getFirstPixelArray()[spriteRow] / scaleFactor);
			int numPixels = (int)(sprite->getNumPixelsArray()[spriteRow] / scaleFactor);

			int startScreenCol 	= objectLeftCol + firstPixel; // Inclusive
			int endScreenCol 	= objectLeftCol + firstPixel + numPixels; // Exclusive
			if(startScreenCol < 0) {
				startScreenCol = 0;
			}
			if(endScreenCol > SCREEN_WIDTH) {
				endScreenCol = SCREEN_WIDTH;
			}

			// Check if left part of sprite is behind wall
			while(distanceArray[startScreenCol / GRANULARITY_H] < distanceFromPlayer) {
				startScreenCol += GRANULARITY_H - startScreenCol % GRANULARITY_H;
			}

			// Check if right part of sprite is behind wall
			while(endScreenCol >= 0 && distanceArray[endScreenCol / GRANULARITY_H] < distanceFromPlayer) {
				endScreenCol -= 1 + endScreenCol % GRANULARITY_H;
			}

			// Draw 1 row of sprite, then copy
			for(int screenCol = startScreenCol; screenCol < endScreenCol; screenCol += screenGranularity) {
				// Draw 1 screen granule
				int spriteCol = (int)ceil((screenCol - objectLeftCol) * scaleFactor);

				for(int j = 0; j < screenGranularity && screenCol + j < endScreenCol; j += sprite->getGranularity()) {

					int numPixelsToCopy = screenGranularity - j;
					if(numPixelsToCopy > sprite->getGranularity()) {
						numPixelsToCopy = sprite->getGranularity();
					}
					if(screenCol + j + numPixelsToCopy > endScreenCol) {
						numPixelsToCopy -= screenCol + j + numPixelsToCopy - endScreenCol;
					}

					memcpy(
						&INTERMEDIATE_IMAGE_BUFFER[screenRow * SCREEN_WIDTH + screenCol + j],
						&pixelData[spriteRow * sprite->getNumCols() + spriteCol],
						numPixelsToCopy * sizeof(int)
					);
				}
			}

			// Copy row of sprite to adjacent rows below it
			for(int ii = 1; ii < screenGranularity && screenRow + ii < SCREEN_HEIGHT; ii++) {
				memcpy(
					&INTERMEDIATE_IMAGE_BUFFER[(screenRow + ii) * SCREEN_WIDTH + startScreenCol],
					&INTERMEDIATE_IMAGE_BUFFER[screenRow * SCREEN_WIDTH + startScreenCol],
					(endScreenCol - startScreenCol) * sizeof(int)
				);
			}
		}

		// Update distance array with new distances for drawn enemies
		for(int ray = objectLeftCol / GRANULARITY_H; ray < objectRightCol / GRANULARITY_H; ray++) {
			if(distanceFromPlayer < distanceArray[ray]) {
				distanceArray[ray] = distanceFromPlayer;
			}
		}
	} // if inPlayerFOV
}

void WolfensteinCore1App::drawEnemies() {
	float* distanceArray = SHARED_DATA_PACKETS[1].distanceArray;
	Player* player = &SHARED_DATA_PACKETS[1].player;
	Enemy* enemyArray = SHARED_DATA_PACKETS[1].enemyArray;


	for(int e = 0; e < MAX_NUM_ENEMIES; e++) {
		Enemy* enemy = &enemyArray[e];

		if(enemy->getHealth() <= 0) {
			continue;
		}

		Sprite enemySprite(ENEMY_SPRITE);

		drawObjectWithPosition(
            enemy,
            player,
            distanceArray,
			&enemySprite,
            40 // row offset adjustment
        );
	}
}

void WolfensteinCore1App::drawDrops() {
	float* distanceArray = SHARED_DATA_PACKETS[1].distanceArray;
	Player* player = &SHARED_DATA_PACKETS[1].player;

	Drop* healthDropArray = SHARED_DATA_PACKETS[1].healthDropArray;
	for(int i = 0; i < MAX_NUM_HEALTH_DROPS; i++) {
		Drop* healthDrop = &healthDropArray[i];

		if(healthDrop->isPickedUp()) {
			continue;
		}

		Sprite healthDropSprite(HEALTH_DROP_SPRITE);

		drawObjectWithPosition(
			healthDrop,
			player,
			distanceArray,
			&healthDropSprite,
			300
		);
	}
}



int WolfensteinCore1App::getScreenRowOfCeilingAtDistance(float distance) {
	static float halfWallHeight = 0.5;
	static float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	static float distanceInverseScaler = 0.5 * SCREEN_HEIGHT * halfWallHeight / tanHalfVertFov;

	int halfOfWallHeight = (int)(distanceInverseScaler / distance);
	return SCREEN_HEIGHT * 0.5 - halfOfWallHeight; // Inclusive for walls, exclusive for ceiling
}

int WolfensteinCore1App::getColourFromGradient(const int* gradient, const int gradientLength, float distance) {
	static const int DISTANCE_SCALER = 12;
	int index = (int)(gradientLength * distance / DISTANCE_SCALER);
	if(index >= gradientLength) {
		index = gradientLength - 1;
	}
	return gradient[index];
}

void WolfensteinCore1App::fillNonRectangularCeilingAndFloor(int rowAlreadyDrawn) {
	for(int i = rowAlreadyDrawn; i < SCREEN_HEIGHT / 2; i += GRANULARITY_V) {
		int startRay = 0;
		bool startRayIsSet = false;
		bool drawingThisRow = false;

		for(int r = 0; r < NUM_RAYS; r++) {
			// Iterate through rays until find ceiling
			if(!startRayIsSet && WALL_START_ROW_ARRAY[r] > i) {
				startRay = r;
				startRayIsSet = true;
				drawingThisRow = true;
				continue;
			}
			// Keep going through rays until find floor again
			if(startRayIsSet && (WALL_START_ROW_ARRAY[r] <= i)) {
				// Draw that bit of floor and ceiling
				int numBytes = (r - startRay) * PIXEL_WIDTHS_PER_RAY * sizeof(int);
				for(int ii = i; ii < i + GRANULARITY_V; ii++) {
					memcpy(&INTERMEDIATE_IMAGE_BUFFER[ii * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], CEILING_BUFFER, numBytes);
					memcpy(&INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1 - ii) * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], FLOOR_BUFFER, numBytes);
				}
				startRayIsSet = false;
			}
		}

		// Draw case for if end of rays reached and floor not found
		if(startRayIsSet) {
			int numBytes = (NUM_RAYS - startRay) * PIXEL_WIDTHS_PER_RAY * sizeof(int);
			for(int ii = i; ii < i + GRANULARITY_V; ii++) {
				memcpy(&INTERMEDIATE_IMAGE_BUFFER[ii * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], CEILING_BUFFER, numBytes);
				memcpy(&INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1 - ii) * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], FLOOR_BUFFER, numBytes);
			}
		}

		if(!drawingThisRow) {
			return;
		}
	}
}

void WolfensteinCore1App::drawHUD() {

	// Draw health bar
	int healthBarHeight = 20;
	int healthBarLength = MAX_PLAYER_HEALTH;
	int healthBarTopRow = SCREEN_HEIGHT - 1 - 20 - healthBarHeight;
	int	healthBarLeftCol = SCREEN_WIDTH - 1 - 20 - healthBarLength;

	int healthBarEmptyColour = colourRGB(8, 0, 0);
	int healthBarFullColour = colourRGB(0, 15, 0);
	int playerHealth = SHARED_DATA_PACKETS[1].player.getHealth();

	for(int j = 0; j < playerHealth; j++) {
		INTERMEDIATE_IMAGE_BUFFER[healthBarTopRow * SCREEN_WIDTH + healthBarLeftCol + j] = healthBarFullColour;
	}
	for(int j = playerHealth; j < healthBarLength; j++) {
		INTERMEDIATE_IMAGE_BUFFER[healthBarTopRow * SCREEN_WIDTH + healthBarLeftCol + j] = healthBarEmptyColour;
	}
	for(int i = 1; i < healthBarHeight; i++) {
		memcpy(
			&INTERMEDIATE_IMAGE_BUFFER[(healthBarTopRow + i) * SCREEN_WIDTH + healthBarLeftCol],
			&INTERMEDIATE_IMAGE_BUFFER[healthBarTopRow * SCREEN_WIDTH + healthBarLeftCol],
			healthBarLength * sizeof(int)
		);
	}

	// Draw first person weapon sprite
	Sprite gunSprite(FIRST_PERSON_GUN_SPRITE);
	int gunSpriteRowOffset = SCREEN_HEIGHT - gunSprite.getNumRows() * gunSprite.getGranularity();
	int gunSpriteColOffset = SCREEN_WIDTH / 2 - gunSprite.getFirstPixelArray()[0] - gunSprite.getGranularity() / 2;

	// If player is shooting, draw the muzzle flash sprite behind the weapon sprite
	if(SHARED_DATA_PACKETS[1].player.getIsShooting()) {
		Sprite flashSprite(MUZZLE_FLASH_SPRITE);

		int recoilRowOffset = 8;
		gunSpriteRowOffset += recoilRowOffset;

		int flashSpriteRowOffset = gunSpriteRowOffset + 12 - flashSprite.getNumRows() / 2 * flashSprite.getGranularity();
		int flashSpriteColOffset = SCREEN_WIDTH / 2 - flashSprite.getFirstPixelArray()[0] - flashSprite.getGranularity() / 2;
		drawSpriteSimple(&flashSprite, flashSpriteRowOffset, flashSpriteColOffset);
	}

	drawSpriteSimple(&gunSprite, gunSpriteRowOffset, gunSpriteColOffset);
}

void WolfensteinCore1App::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
