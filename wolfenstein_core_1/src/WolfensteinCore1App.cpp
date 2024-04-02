
#include "WolfensteinCore1App.h"

#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "../../wolfenstein_core_0/src/Colour.h"
#include "../../wolfenstein_core_0/src/Constants.h"
#include "../../wolfenstein_core_0/src/Addresses.h"
#include "../../wolfenstein_core_0/src/SharedDataPacket.h"
#include "../../wolfenstein_core_0/src/ValidAckInterface.h"
#include "../../wolfenstein_core_0/src/Player.h"
#include "../../wolfenstein_core_0/src/Enemy.h"

WolfensteinCore1App::WolfensteinCore1App() {
	xil_printf("Wolfenstein Core 1 App Init\n");

	Xil_DCacheDisable();
	// initialize floor and ceiling buffers
	// Draw 1 row and copy
	int ceilingColourInt = CEILING_GRADIENT[0];
	int floorColourInt = FLOOR_GRADIENT[0];
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		CEILING_BUFFER[j] = ceilingColourInt;
		FLOOR_BUFFER[j] = floorColourInt;
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

		// Get New Distance Array
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

		// Draw enemy
		XTime_GetTime(&funcStartTime);
		drawEnemy();
		XTime_GetTime(&funcEndTime);
		/*funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxDrawTime) {
			maxDrawTime = funcTime;
			xil_printf("Core 1 max draw time: %8d\n", maxDrawTime);
		}*/

		drawHUD();

		// Update Screen
		XTime_GetTime(&funcStartTime);
		updateScreen();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxUpdateTime) {
			maxUpdateTime = funcTime;
		}

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
	float* distanceArray1 = SHARED_DATA_PACKETS[1].distanceArray;

	// Calculate the wall height (start row) for each ray column
	for(int r = 0; r < NUM_RAYS; r++) {
		WALL_START_ROW_ARRAY[r] = getScreenRowOfCeilingAtDistance(distanceArray1[r]); // Inclusive for walls, exclusive for ceiling
	}

	// Find ray column closest to player
	int indexOfClosest = 0;
	for(int r = 1; r < NUM_RAYS; r++) {
		if(distanceArray1[r] < distanceArray1[indexOfClosest]) {
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
		int wallColourInt = getColourFromGradient(WALL_GRADIENT, WALL_GRADIENT_LENGTH, distanceArray1[r]);
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
	fillNonRectangularCeilingAndFloor(0, NUM_RAYS, maxCeilingRow);
}

void WolfensteinCore1App::drawEnemy() {
	float* distanceArray = SHARED_DATA_PACKETS[1].distanceArray;
	Player player = SHARED_DATA_PACKETS[1].player;
	Enemy* enemies = SHARED_DATA_PACKETS[1].enemyArray;

	for(int e = 0; e < MAX_NUM_ENEMIES; e++) {
		Enemy enemy = enemies[e];

		if(enemy.getHealth() <= 0) {
			continue;
		}

		float vecX = enemy.getPositionX() - player.getPositionX();
		float vecY = enemy.getPositionY() - player.getPositionY();
		float enemyDistanceFromPlayer = sqrtf(vecX*vecX + vecY*vecY);

		float playerViewX = cosf(player.getAngle());
		float playerViewY = sinf(player.getAngle());
		float objectAngle = atan2f(playerViewY, playerViewX) - atan2f(vecY, vecX);

		if(objectAngle < -M_PI) {
			objectAngle += 2.0 * M_PI;
		}
		else if(objectAngle > M_PI) {
			objectAngle -= 2.0 * M_PI;
		}

		bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;

		float scaleFactor = enemyDistanceFromPlayer;
		if(scaleFactor < 1.1) {
			scaleFactor = 1;
		}

		float middleOfEnemy = (0.5 * (objectAngle / (HORIZONTAL_FOV / 2.0)) + 0.5) * float(SCREEN_WIDTH);
		int startXEnemy = middleOfEnemy - (ENEMY_SPRITE_WIDTH/(2*scaleFactor));
		int startYEnemy = (SCREEN_HEIGHT / 2) - (ENEMY_SRPITE_HEIGHT/(2*scaleFactor));

		if(inPlayerFOV && enemyDistanceFromPlayer >= 0.5 && enemyDistanceFromPlayer <= 5 && distanceArray[(int)middleOfEnemy/RESOLUTION_DOWN_SCALE_H] >= enemyDistanceFromPlayer) {
			for(int i = 0; i < (int)(ENEMY_SRPITE_HEIGHT/scaleFactor); i++) {
				int s = (int)(i * scaleFactor);
				int firstNonTransparentPixel = ((int)(*(enemySprite+s*(ENEMY_SPRITE_WIDTH)*sizeof(int)+3))/scaleFactor) - 1;
				int numOfNonTransparentPixel = (int)(*(enemySprite+s*(ENEMY_SPRITE_WIDTH)*sizeof(int)+7))/scaleFactor;

				//Checks if sprite is past right bound of screen and updates accordingly
				if(startXEnemy + (firstNonTransparentPixel + numOfNonTransparentPixel) > SCREEN_WIDTH) {
					numOfNonTransparentPixel = SCREEN_WIDTH - (startXEnemy + firstNonTransparentPixel);
				}

				//Checks if sprite is past left bound of screen and updates accordingly
				if(startXEnemy + firstNonTransparentPixel < 0) {
					numOfNonTransparentPixel -= fabs(startXEnemy + firstNonTransparentPixel);
					firstNonTransparentPixel += fabs(startXEnemy + firstNonTransparentPixel);
				}

				//Check if left part of sprite is behind wall
				while(distanceArray[((startXEnemy + firstNonTransparentPixel))/RESOLUTION_DOWN_SCALE_H] < enemyDistanceFromPlayer) {
					numOfNonTransparentPixel--;
					firstNonTransparentPixel++;
				}

				//Check if right part of sprite is behind wall
				while(distanceArray[(startXEnemy + ((firstNonTransparentPixel + numOfNonTransparentPixel)))/RESOLUTION_DOWN_SCALE_H] < enemyDistanceFromPlayer) {
					numOfNonTransparentPixel--;
				}

				//Draw sprite, if scaleFactor is 1 then don't need a loop, otherwise use loop to scale sprite in horizontal direction
				if(scaleFactor == 1) {
					memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startYEnemy) *SCREEN_WIDTH) + firstNonTransparentPixel + startXEnemy, enemySprite+(i*(ENEMY_SPRITE_WIDTH)*sizeof(int)+(firstNonTransparentPixel*sizeof(int))), (numOfNonTransparentPixel)*sizeof(int));
				}
				else {
					for(int j = 0; j < numOfNonTransparentPixel; j++) {
						memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startYEnemy) *SCREEN_WIDTH) + startXEnemy + j + (firstNonTransparentPixel), enemySprite+(s*(ENEMY_SPRITE_WIDTH)*sizeof(int)+((int)((firstNonTransparentPixel+j)*scaleFactor))*sizeof(int)), sizeof(int));
					}
				}

				//Update distance array with new distances for drawn enemies
				for(int j = 0; j < numOfNonTransparentPixel; j++) {
					distanceArray[(firstNonTransparentPixel + startXEnemy + j)/RESOLUTION_DOWN_SCALE_H] = enemyDistanceFromPlayer;
				}
			}
		}
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

void WolfensteinCore1App::fillNonRectangularCeilingAndFloor(int startRay, int endRay, int rowAlreadyDrawn) {
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
}

void WolfensteinCore1App::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
