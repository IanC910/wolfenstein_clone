
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
	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		CEILING_BUFFER[j] = ceilingColourInt;
	}
	for(int i = 0; i < SCREEN_HEIGHT / 2; i++) {
		memcpy(&CEILING_BUFFER[i * SCREEN_WIDTH], &CEILING_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	// Draw 1 row of floor and copy
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();
	for(int j = 0; j < SCREEN_WIDTH; j++) {
		FLOOR_BUFFER[j] = floorColourInt;
	}
	for(int i = 0; i < SCREEN_HEIGHT / 2; i++) {
		memcpy(&FLOOR_BUFFER[i * SCREEN_WIDTH], &FLOOR_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}
}

void WolfensteinCore1App::runCore1App() {
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

	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();

	// Copy floor and ceiling buffers to parts of screen that have floor and ceiling across the whole row
	if(maxCeilingRow > 0) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[0], &CEILING_BUFFER[0], maxCeilingRow * SCREEN_WIDTH * sizeof(int));
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[minFloorRow * SCREEN_WIDTH], &FLOOR_BUFFER[0], (SCREEN_HEIGHT - minFloorRow) * SCREEN_WIDTH * sizeof(int));
	}

	// Draw 1 row of wall
	for(int r = 0; r < NUM_RAYS; r++) {
		float colourScaler = 10.0 / (DISTANCE_ARRAY_1[r] + 10.0);
		int wallColourInt = WALL_COLOUR.getColourAsInt(colourScaler);
		for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
			INTERMEDIATE_IMAGE_BUFFER[r * PIXEL_WIDTHS_PER_RAY + j] = wallColourInt;
		}
	}

	// Copy the 1 row to rest of screen that has wall visible
	for(int i = minWallRow; i < maxWallRow; i++) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	// Fill in the rest of the floor and ceiling (non rectangular parts) in columns
	// TODO Optimize this part. It's very slow
	for(int r = 0; r < NUM_RAYS; r++) {
		int wallStartRow = WALL_START_ROW_ARRAY[r]; // Inclusive for walls, exclusive for ceiling
		if(wallStartRow < 0) {
			wallStartRow = 0;
		}
		int wallEndRow = SCREEN_HEIGHT - wallStartRow; // Exclusive for walls, inclusive for floor

		for(int i = minWallRow; i < wallStartRow; i++) {
			for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
				INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + r * PIXEL_WIDTHS_PER_RAY + j] = ceilingColourInt;
			}
		}

		for(int i = wallEndRow; i < maxWallRow; i++) {
			for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
				INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + r * PIXEL_WIDTHS_PER_RAY + j] = floorColourInt;
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

void WolfensteinCore1App::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
