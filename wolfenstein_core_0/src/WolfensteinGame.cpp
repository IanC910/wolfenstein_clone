
#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "WolfensteinGame.h"

#include "Colour.h"
#include "Constants.h"

WolfensteinGame::WolfensteinGame() {
}

WolfensteinGame::~WolfensteinGame() {
}

void WolfensteinGame::playGame() {
	Xil_DCacheDisable();

	this->currentLevel = getLevel(0);

	player.setPositionX(5);
	player.setPositionY(2);
	player.setAngle(M_PI / 2);

	while(true) {
		player.setAngle(player.getAngle() + 0.02);

		XTime startTime;
		XTime endTime;

		XTime_GetTime(&startTime);
		castRays();
		XTime_GetTime(&endTime);
		u32 rayCastTime = (u32)((u64)endTime - (u64)startTime);

		XTime_GetTime(&startTime);
		drawEnvironment();
		XTime_GetTime(&endTime);
		u32 drawTime = (u32)((u64)endTime - (u64)startTime);

		xil_printf("Angle: %3d, rayCastTime: %8d, drawTime: %8d\n",
			(int)(player.getAngle() * 180 / M_PI),
			rayCastTime,
			drawTime
		);

		updateScreen();
	}
}

void WolfensteinGame::castRays() {
	float angleIncrement = HORIZONTAL_FOV / (float)NUM_RAYS;
	float startAngle = player.getAngle() - HORIZONTAL_FOV / 2.0;
	float rayAngle = startAngle; // Rays start on right, move towards left

	// For each ray
	for(int r = 0; r < NUM_RAYS; r++) {
		float rayPositionX = player.getPositionX();
		float rayPositionY = player.getPositionY();
		float rayXIncrement = RAY_DISTANCE_INCREMENT * cos(rayAngle);
		float rayYIncrement = RAY_DISTANCE_INCREMENT * sin(rayAngle);
		float distance = 0;

		// Cast the ray
		while(true) {
			if(rayPositionX < 0 || rayPositionX > currentLevel->getWidth() || rayPositionY < 0 || rayPositionY > currentLevel->getHeight()) {
				break;
			}

			char block = currentLevel->getBlockAtWorldCoord(rayPositionX, rayPositionY);
			if(block != ' ') {
				break;
			}

			rayPositionX += rayXIncrement;
			rayPositionY += rayYIncrement;
			distance += RAY_DISTANCE_INCREMENT;
		}

		DISTANCE_ARRAY[NUM_RAYS - 1 - r] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinGame::drawEnvironment() {

	// FOR CALCULATING WALL HEIGHT BASED ON DISTANCE
	// The height of the drawn wall in a column is a portion of the screen height
	// Let this portion be (half the height of the wall) over (distance * tan(vertical FOV / 2))
	float halfWallHeight = 0.5;
	float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	float distanceInverseScaler = 0.5 * SCREEN_HEIGHT * halfWallHeight / tanHalfVertFov;

	// Find column closest to player
	int indexOfClosest = 0;
	for(int r = 1; r < NUM_RAYS; r++) {
		if(DISTANCE_ARRAY[r] < DISTANCE_ARRAY[indexOfClosest]) {
			indexOfClosest = r;
		}
	}

	float minDistanceToWall = DISTANCE_ARRAY[indexOfClosest];
	int halfOfMaxWallHeight = (int)(distanceInverseScaler / minDistanceToWall);

	int minWallRow = 0.5 * SCREEN_HEIGHT - halfOfMaxWallHeight; // Inclusive
	if(minWallRow < 0) {
		minWallRow = 0;
	}

	int maxWallRow = SCREEN_HEIGHT - minWallRow; // Exclusive
	int maxCeilingRow = minWallRow; // Exclusive
	int minFloorRow = maxWallRow; // Inclusive

	// BEGIN DRAWING

	// Draw 1 row of wall
	for(int r = 0; r < NUM_RAYS; r++) {
		float colourScaler = 10.0 / (DISTANCE_ARRAY[r] + 10.0);
		int wallColourInt = WALL_COLOUR.getColourAsInt(colourScaler);
		for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
			INTERMEDIATE_BUFFER[r * PIXEL_WIDTHS_PER_RAY + j] = wallColourInt;
		}
	}

	// Copy the 1 row to rest of screen that has wall visible
	for(int i = minWallRow; i < maxWallRow; i++) {
		memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();

	// Draw 1 row of floor and ceiling and copy them to rest of screen that has floor and ceiling across the whole row
	if(maxCeilingRow > 0) {
		for(int j = 0; j < SCREEN_WIDTH; j++) {
			INTERMEDIATE_BUFFER[j] = ceilingColourInt;
			INTERMEDIATE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH + j] = floorColourInt;
		}

		for(int i = 1; i < maxCeilingRow; i++) {
			memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
		}
		for(int i = minFloorRow; i < SCREEN_HEIGHT; i++) {
			memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH], SCREEN_WIDTH * sizeof(int));
		}
	}

	// Fill in the rest of the floor and ceiling in columns
	for(int r = 0; r < NUM_RAYS; r++) {
		float distanceToWall = DISTANCE_ARRAY[r];
		int halfOfWallHeight = (int)(distanceInverseScaler / distanceToWall);
		int wallStartRow = SCREEN_HEIGHT * 0.5 - halfOfWallHeight; // Inclusive for walls, exclusive for ceiling
		if(wallStartRow < 0) {
			wallStartRow = 0;
		}
		int wallEndRow = SCREEN_HEIGHT - wallStartRow; // Exclusive for walls, inclusive for floor

		for(int i = minWallRow; i < wallStartRow; i++) {
			for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
				INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + r * PIXEL_WIDTHS_PER_RAY + j] = ceilingColourInt;
			}
		}

		for(int i = wallEndRow; i < maxWallRow; i++) {
			for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
				INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + r * PIXEL_WIDTHS_PER_RAY + j] = floorColourInt;
			}
		}
	}
}

void WolfensteinGame::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_BUFFER, SCREEN_SIZE_BYTES);
}

