
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
		float xIncrement = RAY_DISTANCE_INCREMENT * cos(rayAngle);
		float yIncrement = RAY_DISTANCE_INCREMENT * sin(rayAngle);
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

			rayPositionX += xIncrement;
			rayPositionY += yIncrement;
			distance += RAY_DISTANCE_INCREMENT;
		}

		DISTANCE_ARRAY[SCREEN_WIDTH - 1 - j] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinGame::drawEnvironment() {
	// Procedure:
	// Draw 1 row of walls
	// Copy row to whole screen
	// Draw floor and ceiling simultaneously, as they are always identical in shape

	for(int j = 0; j < SCREEN_WIDTH; j++) {
		float colourScaler = 10.0 / (DISTANCE_ARRAY[j] + 10.0);
		INTERMEDIATE_BUFFER[j] = WALL_COLOUR.getColourAsInt(colourScaler);
	}

	for(int i = 1; i < SCREEN_HEIGHT; i++) {
		memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	// The height of the drawn wall in a column is a portion of the screen height
	// Let this portion be (half the height of the wall) over (distance * tan(vertical FOV / 2))
	float halfWallHeight = 0.5;
	float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	float distanceInverseScaler = (float)SCREEN_HEIGHT * 0.5 * halfWallHeight / tanHalfVertFov;

	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();

	// Fill in as much of the floor and ceiling in rows as possible
	// Find column closest to player
	int indexOfClosest = 0;
	for(int j = 1; j < SCREEN_WIDTH; j++) {
		if(DISTANCE_ARRAY[j] < DISTANCE_ARRAY[indexOfClosest]) {
			indexOfClosest = j;
		}
	}

	float minDistanceToWall = DISTANCE_ARRAY[indexOfClosest];
	int halfOfMaxDrawnWallHeight = (int)(distanceInverseScaler / minDistanceToWall);
	int minDrawnCeilingHeight = SCREEN_HEIGHT * 0.5 - halfOfMaxDrawnWallHeight;
	if(minDrawnCeilingHeight < 0) {
		minDrawnCeilingHeight = 0;
	}

	// Draw 1 row of floor and ceiling and copy it
	if(minDrawnCeilingHeight > 0) {
		for(int j = 0; j < SCREEN_WIDTH; j++) {
			INTERMEDIATE_BUFFER[j] = ceilingColourInt;
			INTERMEDIATE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH + j] = floorColourInt;
		}

		for(int i = 1; i < minDrawnCeilingHeight; i++) {
			memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
		}
		for(int i = SCREEN_HEIGHT - 2; i > SCREEN_HEIGHT - 1 - minDrawnCeilingHeight; i--) {
			memcpy(&INTERMEDIATE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH], SCREEN_WIDTH * sizeof(int));
		}
	}

	// Fill in the rest of the floor and ceiling in columns
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		float distanceToWall = DISTANCE_ARRAY[j];
		int halfOfDrawnWallHeight = (int)(distanceInverseScaler / distanceToWall);
		int drawnCeilingHeight = SCREEN_HEIGHT * 0.5 - halfOfDrawnWallHeight;
		if(drawnCeilingHeight < 0) {
			drawnCeilingHeight = 0;
		}

		for(int i = minDrawnCeilingHeight; i < drawnCeilingHeight; i++) {
			INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + j] = ceilingColourInt;
		}

		for(int i = SCREEN_HEIGHT - 1 - minDrawnCeilingHeight; i > SCREEN_HEIGHT - 1 - drawnCeilingHeight; i--) {
			INTERMEDIATE_BUFFER[i * SCREEN_WIDTH + j] = floorColourInt;
		}
	}
}

void WolfensteinGame::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_BUFFER, SCREEN_SIZE_BYTES);
}

