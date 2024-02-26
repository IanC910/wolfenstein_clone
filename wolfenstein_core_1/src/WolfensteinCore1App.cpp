
#include "WolfensteinCore1App.h"

#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "Colour.h"
#include "../../wolfenstein_core_0/src/Constants.h"
#include "../../wolfenstein_core_0/src/ValidAckInterface.h"

WolfensteinCore1App::WolfensteinCore1App() {
	Xil_DCacheDisable();

	// initialize floor and ceiling buffers
	// Draw 1 row of ceiling and copy
	int ceilingColourInt = CEILING_GRADIENT[0];
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		CEILING_BUFFER[j] = ceilingColourInt;
	}
	for(int i = 0; i < SCREEN_HEIGHT / 2; i++) {
		memcpy(&CEILING_BUFFER[i * SCREEN_WIDTH], &CEILING_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	// Draw 1 row of floor and copy
	int floorColourInt = FLOOR_GRADIENT[0];
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		FLOOR_BUFFER[j] = floorColourInt;
	}
	for(int i = 0; i < SCREEN_HEIGHT / 2; i++) {
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

int WolfensteinCore1App::getScreenRowOfCeilingAtDistance(float distance) {
	static float halfWallHeight = 0.5;
	static float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	static float distanceInverseScaler = 0.5 * SCREEN_HEIGHT * halfWallHeight / tanHalfVertFov;

	int halfOfWallHeight = (int)(distanceInverseScaler / distance);
	return SCREEN_HEIGHT * 0.5 - halfOfWallHeight; // Inclusive for walls, exclusive for ceiling
}

int WolfensteinCore1App::getColourFromGradient(const int* gradient, const int gradientLenght, float distance) {
	static const int DISTANCE_SCALER = 10;
	int index = (int)(gradientLenght * distance / (distance + DISTANCE_SCALER));
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
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
