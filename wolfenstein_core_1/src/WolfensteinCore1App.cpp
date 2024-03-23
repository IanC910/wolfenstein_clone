
#include "WolfensteinCore1App.h"

#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "Colour.h"
#include "../../wolfenstein_core_0/src/Constants.h"
#include "../../wolfenstein_core_0/src/ValidAckInterface.h"

int spriteW = 245;
int spriteH = 240;

int spriteWG = 139;
int spriteHG = 105;

#define numEnemies 3
Enemy enemies[numEnemies];

WolfensteinCore1App::WolfensteinCore1App() {
	Xil_DCacheDisable();
	enemies[0].setPositionXY(4.5,4.5);
	enemies[1].setPositionXY(8.5,8.5);
	enemies[2].setPositionXY(3.5,8.5);
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
		getNewDistanceArray();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxTransferTime) {
			maxTransferTime = funcTime;
			xil_printf("Core 1 max transfer time: %8d\n", maxTransferTime);
		}

		// Draw Environment
		XTime_GetTime(&funcStartTime);
		drawEnvironment();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxDrawTime) {
			maxDrawTime = funcTime;
			xil_printf("Core 1 max draw time: %8d\n", maxDrawTime);
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

		// Update Screen
		XTime_GetTime(&funcStartTime);
		updateScreen();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxUpdateTime) {
			maxUpdateTime = funcTime;
			xil_printf("Core 1 max update time: %8d\n", maxUpdateTime);
		}

		XTime_GetTime(&frameEndTime);
		u32 frameTime = (u32)((u64)frameEndTime - (u64)frameStartTime);
		if(frameTime > maxFrameTime) {
			maxFrameTime = frameTime;
			xil_printf("Core 1 max frame time: %8d\n", maxFrameTime);
		}
	}
}

void WolfensteinCore1App::getNewDistanceArray() {
	while(!INTERFACE_PTR->valid);

	memcpy(DISTANCE_ARRAY_1, DISTANCE_ARRAY_0, NUM_RAYS * sizeof(float));
	playerX = *playerX_0;
	playerY = *playerY_0;
	playerA = *playerA_0;
	INTERFACE_PTR->acknowledge = 1;
	while(INTERFACE_PTR->valid);
	INTERFACE_PTR->acknowledge = 0;
}

void WolfensteinCore1App::drawEnvironment() {
	// Calculate the wall height (start row) for each ray column
	for(int r = 0; r < NUM_RAYS; r++) {
		WALL_START_ROW_ARRAY[r] = getScreenRowOfCeilingAtDistance(DISTANCE_ARRAY_1[r]); // Inclusive for walls, exclusive for ceiling
	}

	// Find ray column closest to player
	int indexOfClosest = 0;
	for(int r = 1; r < NUM_RAYS; r++) {
		if(DISTANCE_ARRAY_1[r] < DISTANCE_ARRAY_1[indexOfClosest]) {
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
		int wallColourInt = getColourFromGradient(WALL_GRADIENT, WALL_GRADIENT_LENGTH, DISTANCE_ARRAY_1[r]);
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
	for(int i = 0; i < numEnemies; i++) {
		enemy = enemies[i];
		float vecX = enemy.getPositionX() - playerX;
		float vecY = enemy.getPositionY() - playerY;
		float enemyDistanceFromPlayer = sqrtf(vecX*vecX + vecY*vecY);

		float playerViewX = cosf(playerA);
		float playerViewY = sinf(playerA);
		float objectAngle = atan2f(playerViewY, playerViewX) - atan2f(vecY, vecX);

		if(objectAngle < M_PI) {
			objectAngle += 2.0 * M_PI;
		}
		if(objectAngle > M_PI) {
			objectAngle -= 2.0 * M_PI;
		}

		bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;

		float scaleFactor = enemyDistanceFromPlayer;
		if(scaleFactor < 1.1) {
			scaleFactor = 1;
		}

		float middleOfEnemy = (0.5 * (objectAngle / (HORIZONTAL_FOV / 2.0)) + 0.5) * float(SCREEN_WIDTH);
		int startXEnemy = middleOfEnemy - (spriteW/(2*scaleFactor));
		int startYEnemy = (SCREEN_HEIGHT / 2) - (spriteH/(2*scaleFactor));

		if(inPlayerFOV && enemyDistanceFromPlayer >= 0.5 && enemyDistanceFromPlayer <= 5 && DISTANCE_ARRAY_1[(int)middleOfEnemy/RESOLUTION_DOWN_SCALE_H] >= enemyDistanceFromPlayer) {
			for(int i = 0; i < (int)(spriteH/scaleFactor); i++) {
				int s = (int)(i * scaleFactor);
				int firstNonTransparentPixel = ((int)(*(enemySprite+s*(spriteW)*sizeof(int)+3))/scaleFactor) - 1;
				int numOfNonTransparentPixel = (int)(*(enemySprite+s*(spriteW)*sizeof(int)+7))/scaleFactor;

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
				while(DISTANCE_ARRAY_1[((startXEnemy + firstNonTransparentPixel))/RESOLUTION_DOWN_SCALE_H] < enemyDistanceFromPlayer) {
					numOfNonTransparentPixel--;
					firstNonTransparentPixel++;
				}

				//Check if right part of sprite is behind wall
				while(DISTANCE_ARRAY_1[(startXEnemy + ((firstNonTransparentPixel + numOfNonTransparentPixel)))/RESOLUTION_DOWN_SCALE_H] < enemyDistanceFromPlayer) {
					numOfNonTransparentPixel--;
				}

				//Draw sprite, if scaleFactor is 1 then don't need a loop, otherwise use loop to scale sprite in horizontal direction
				if(scaleFactor == 1) {
					memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startYEnemy) *SCREEN_WIDTH) + firstNonTransparentPixel + startXEnemy, enemySprite+(i*(spriteW)*sizeof(int)+(firstNonTransparentPixel*sizeof(int))), (numOfNonTransparentPixel)*sizeof(int));
				}
				else {
					for(int j = 0; j < numOfNonTransparentPixel; j++) {
						memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i + startYEnemy) *SCREEN_WIDTH) + startXEnemy + j + (firstNonTransparentPixel), enemySprite+(s*(spriteW)*sizeof(int)+((int)((firstNonTransparentPixel+j)*scaleFactor))*sizeof(int)), sizeof(int));
					}
				}

				//Update distance array with new distances for drawn enemies
				for(int i = 0; i < numOfNonTransparentPixel; i++) {
					DISTANCE_ARRAY_1[(firstNonTransparentPixel + startXEnemy + i)/RESOLUTION_DOWN_SCALE_H] = enemyDistanceFromPlayer;
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

void WolfensteinCore1App::updateScreen() {
	/*int weaponY = SCREEN_HEIGHT-spriteHG;
	int weaponX = ((float)SCREEN_WIDTH * (3.0/4.0)) - (spriteWG/2);
	for(int i = 0; i < spriteHG; i+=1) {
			int firstNonTransparentPixel = *(weaponSprite+i*spriteWG*sizeof(int)+3);
			int numOfNonTransparentPixel = *(weaponSprite+i*spriteWG*sizeof(int)+7);
			memcpy(INTERMEDIATE_IMAGE_BUFFER + ((i+weaponY)*SCREEN_WIDTH) + firstNonTransparentPixel + weaponX, weaponSprite+(i*(spriteWG)*sizeof(int)+(firstNonTransparentPixel*sizeof(int))), (numOfNonTransparentPixel)*sizeof(int));
		}*/
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
