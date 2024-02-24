
#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"

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
		player.setAngle(player.getAngle() + 0.1);

		castRays();
		drawEnvironment();
		updateScreen();
	}
}

void WolfensteinGame::castRays() {
	float angleIncrement = HORIZONTAL_FOV / (float)SCREEN_WIDTH;
	float startAngle = player.getAngle() - HORIZONTAL_FOV / 2.0;
	float rayAngle = startAngle; // Rays start on right, move towards left

	// For each column of the screen
	for(int j = 0; j < SCREEN_WIDTH; j++) {
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

		DISTANCE_ARRAY[SCREEN_WIDTH - 1 - j] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinGame::drawEnvironment() {
	// Procedure:
	// Find tallest drawn wall (column closest to the player)
	// Draw 1 row of walls
	// Copy row to screen between min and max wall height
	// Draw floor and ceiling simultaneously, as they are always identical in shape

	// FOR CALCULATING WALL HEIGHT BASED ON DISTANCE
	// The height of the drawn wall in a column is a portion of the screen height
	// Let this portion be (half the height of the wall) over (distance * tan(vertical FOV / 2))
	float halfWallHeight = 0.5;
	float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	float distanceInverseScaler = 0.5 * SCREEN_HEIGHT * halfWallHeight / tanHalfVertFov;

	// Find column closest to player
	int indexOfClosest = 0;
	for(int j = 1; j < SCREEN_WIDTH; j++) {
		if(DISTANCE_ARRAY[j] < DISTANCE_ARRAY[indexOfClosest]) {
			indexOfClosest = j;
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
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		float colourScaler = 10.0 / (DISTANCE_ARRAY[j] + 10.0);
		INTERMEDIATE_BUFFER[j] = WALL_COLOUR.getColourAsInt(colourScaler);
	}

	// Copy the 1 row to rest of screen that has wall visible
	for(int i = minWallRow; i < maxWallRow; i++) {
		memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();

	// Draw 1 row of floor and ceiling and copy them
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

	// Fill in the rest of the floor and ceiling in columns (much slower)
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		float distanceToWall = DISTANCE_ARRAY[j];
		int halfOfWallHeight = (int)(distanceInverseScaler / distanceToWall);
		int wallStartRow = SCREEN_HEIGHT * 0.5 - halfOfWallHeight; // Inclusive for walls, exclusive for ceiling
		if(wallStartRow < 0) {
			wallStartRow = 0;
		}
		int wallEndRow = SCREEN_HEIGHT - wallStartRow; // Exclusive for walls, inclusive for floor

		for(int i = minWallRow; i < wallStartRow; i++) {
			INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + j] = ceilingColourInt;
		}

		for(int i = wallEndRow; i < maxWallRow; i++) {
			INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + j] = floorColourInt;
		}
	}
}

void WolfensteinGame::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_BUFFER, SCREEN_SIZE_BYTES);
}

