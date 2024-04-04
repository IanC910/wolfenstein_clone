
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

void WolfensteinCore1App::drawSprite(Sprite* sprite, int rowOffset, int colOffset) {
	short* firstPixelArray = sprite->getFirstPixelArray();
	short* numPixelsArray = sprite->getNumPixelsArray();
	int* pixelData = sprite->getPixelData();

	for(int spriteRow = 0; spriteRow < sprite->getNumRows(); spriteRow++) {
		int startScreenRow = rowOffset + spriteRow * sprite->getGranularity();
		if(startScreenRow < 0) {
			startScreenRow = 0;
		}

		for(int screenRow = startScreenRow; screenRow < startScreenRow + sprite->getGranularity() && screenRow < SCREEN_HEIGHT; screenRow++) {
			memcpy(
				&INTERMEDIATE_IMAGE_BUFFER[screenRow * SCREEN_WIDTH + colOffset + firstPixelArray[spriteRow]],
				&pixelData[spriteRow * sprite->getNumCols() + firstPixelArray[spriteRow]],
				numPixelsArray[spriteRow] * sizeof(int)
			);
		}
	}
}

void drawObject(float positionX, float positionY, float playerX, float playerY, float playerAngle, float* distanceArray1, int spriteWidth, int spriteHeight, int yDrawOffset, unsigned char* sprite) {

	float vecX = positionX - playerX;
	float vecY = positionY - playerY;
	float distanceFromPlayer = sqrtf(vecX*vecX + vecY*vecY);

	float playerViewX = cosf(playerAngle);
	float playerViewY = sinf(playerAngle);
	float objectAngle = atan2f(playerViewY, playerViewX) - atan2f(vecY, vecX);

	if(objectAngle < -M_PI) {
		objectAngle += 2.0 * M_PI;
	}
	else if(objectAngle > M_PI) {
		objectAngle -= 2.0 * M_PI;
	}

	bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;

	float scaleFactor = distanceFromPlayer;

	if(scaleFactor < 1) {
		scaleFactor = 1;
	}

	float middleOfObject = (0.5 * (objectAngle / (HORIZONTAL_FOV / 2.0)) + 0.5) * float(SCREEN_WIDTH);
	int startX = middleOfObject - (spriteWidth/(2*scaleFactor));
	int startY = (SCREEN_HEIGHT / 2) - ((spriteHeight - yDrawOffset)/(2*scaleFactor));

	if(inPlayerFOV && distanceFromPlayer >= 0.5 && distanceFromPlayer <= 5 && distanceArray1[(int)middleOfObject/RESOLUTION_DOWN_SCALE_H] >= distanceFromPlayer) {
		for(int i = 0; i < (int)(spriteHeight/scaleFactor); i++) {
			int s = (int)(i * scaleFactor);
			int firstNonTransparentPixel = ((int)(*(sprite+s*(spriteWidth)*sizeof(int)+3))/scaleFactor)+1;
			int numOfNonTransparentPixel = (int)(*(sprite+s*(spriteWidth)*sizeof(int)+7))/scaleFactor+1;

			//Checks if sprite is past right bound of screen and updates accordingly
			if(startX + (firstNonTransparentPixel + numOfNonTransparentPixel) > SCREEN_WIDTH) {
				numOfNonTransparentPixel = SCREEN_WIDTH - (startX + firstNonTransparentPixel);
			}

			//Checks if sprite is past left bound of screen and updates accordingly
			if(startX + firstNonTransparentPixel < 0) {
				numOfNonTransparentPixel -= fabs(startX + firstNonTransparentPixel);
				firstNonTransparentPixel += fabs(startX + firstNonTransparentPixel);
			}

			//Check if left part of sprite is behind wall
			while(distanceArray1[(startX + firstNonTransparentPixel)/RESOLUTION_DOWN_SCALE_H] < distanceFromPlayer) {
					numOfNonTransparentPixel -= RESOLUTION_DOWN_SCALE_H - ((startX + firstNonTransparentPixel) % RESOLUTION_DOWN_SCALE_H);
					firstNonTransparentPixel += RESOLUTION_DOWN_SCALE_H - ((startX + firstNonTransparentPixel) % RESOLUTION_DOWN_SCALE_H);
			}

			//Check if right part of sprite is behind wall
			while(distanceArray1[(startX + firstNonTransparentPixel + numOfNonTransparentPixel)/RESOLUTION_DOWN_SCALE_H] < distanceFromPlayer) {
					numOfNonTransparentPixel -= (((startX + firstNonTransparentPixel + numOfNonTransparentPixel) % RESOLUTION_DOWN_SCALE_H)) + 1;
			}

			//Draw sprite, if scaleFactor is 1 then don't need a loop, otherwise use loop to scale sprite in horizontal direction
			if(scaleFactor == 1) {
				firstNonTransparentPixel--;
				numOfNonTransparentPixel--;
				memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startY) *SCREEN_WIDTH) + firstNonTransparentPixel + startX, sprite+(i*(spriteWidth)*sizeof(int)+(firstNonTransparentPixel*sizeof(int))), (numOfNonTransparentPixel)*sizeof(int));
			}
			else {
				for(int j = 0; j < numOfNonTransparentPixel; j++) {
					memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startY) *SCREEN_WIDTH) + startX + j + (firstNonTransparentPixel), sprite+(s*(spriteWidth)*sizeof(int)+((int)((firstNonTransparentPixel+j)*scaleFactor))*sizeof(int)), sizeof(int));
				}
			}

			//Update distance array with new distances for drawn enemies
			for(int j = 0; j < numOfNonTransparentPixel; j++) {
				distanceArray1[(firstNonTransparentPixel + startX + j)/RESOLUTION_DOWN_SCALE_H] = distanceFromPlayer;
			}
		}
	}

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

		drawObject(
            enemy->getPositionX(),
            enemy->getPositionY(),
            player->getPositionX(),
            player->getPositionY(),
            player->getAngle(),
            distanceArray,
            ENEMY_SPRITE_WIDTH,
            ENEMY_SPRITE_HEIGHT,
            40,
            ENEMY_SPRITE
        );
	}
}

void WolfensteinCore1App::drawDrops() {
	float* distanceArray = SHARED_DATA_PACKETS[1].distanceArray;
	Player* player = &SHARED_DATA_PACKETS[1].player;

	Drop* healthDropArray = SHARED_DATA_PACKETS[1].healthDropArray;
	for(int i = 0; i < MAX_NUM_HEALTH_DROPS; i++) {
		Drop* drop = &healthDropArray[i];

		if(drop->isPickedUp()) {
			continue;
		}

		drawObject(
			drop->getPositionX(),
			drop->getPositionY(),
			player->getPositionX(),
			player->getPositionY(),
			player->getAngle(),
			distanceArray,
			HEALTH_SPRITE_WIDTH,
			HEALTH_SPRITE_HEIGHT,
			300,
			HEALTH_SPRITE
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
	// TODO incorporate vertical resolution downscaling
	for(int i = rowAlreadyDrawn; i < SCREEN_HEIGHT / 2; i++) {
		int startRay = 0;
		bool startRayIsSet = false;
		bool drawingThisRow = false;

		for(int r = 0; r < NUM_RAYS; r++) {
			if(!startRayIsSet && WALL_START_ROW_ARRAY[r] > i) {
				startRay = r;
				startRayIsSet = true;
				drawingThisRow = true;
				continue;
			}
			if(startRayIsSet && (WALL_START_ROW_ARRAY[r] <= i)) {
				int numBytes = (r - startRay) * PIXEL_WIDTHS_PER_RAY * sizeof(int);
				memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], CEILING_BUFFER, numBytes);
				memcpy(&INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1 - i) * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], FLOOR_BUFFER, numBytes);
				startRayIsSet = false;
			}
		}

		if(startRayIsSet) {
			int numBytes = (NUM_RAYS - startRay) * PIXEL_WIDTHS_PER_RAY * sizeof(int);
			memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], CEILING_BUFFER, numBytes);
			memcpy(&INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1 - i) * SCREEN_WIDTH + startRay * PIXEL_WIDTHS_PER_RAY], FLOOR_BUFFER, numBytes);
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

	for(int i = 0; i < healthBarHeight; i++) {
		for(int j = 0; j < playerHealth; j++) {
			INTERMEDIATE_IMAGE_BUFFER[(healthBarTopRow + i) * SCREEN_WIDTH + healthBarLeftCol + j] = healthBarFullColour;
		}
		for(int j = playerHealth; j < healthBarLength; j++) {
			INTERMEDIATE_IMAGE_BUFFER[(healthBarTopRow + i) * SCREEN_WIDTH + healthBarLeftCol + j] = healthBarEmptyColour;
		}
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
		drawSprite(&flashSprite, flashSpriteRowOffset, flashSpriteColOffset);
	}

	drawSprite(&gunSprite, gunSpriteRowOffset, gunSpriteColOffset);
}

void WolfensteinCore1App::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
