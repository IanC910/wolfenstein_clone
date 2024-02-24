
#include "WolfensteinCore1.h"

#include <string.h>
#include <math.h>

#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "Colour.h"
#include "../../wolfenstein_core_0/src/Constants.h"
#include "../../wolfenstein_core_0/src/ValidAckInterface.h"

void WolfensteinCore1::runCore1App() {
	Xil_DCacheDisable();

	while(true) {
		XTime frameStartTime;
		XTime frameEndTime;
		XTime funcStartTime;
		XTime funcEndTime;

		XTime_GetTime(&frameStartTime);

		// Get New Distance Array
		XTime_GetTime(&funcStartTime);
		getNewDistanceArray();
		XTime_GetTime(&funcEndTime);
		u32 transferTime = (u32)((u64)funcEndTime - (u64)funcStartTime);

		// Draw Environment
		XTime_GetTime(&funcStartTime);
		drawEnvironment();
		XTime_GetTime(&funcEndTime);
		u32 drawTime = (u32)((u64)funcEndTime - (u64)funcStartTime);

		// Update Screen
		XTime_GetTime(&funcStartTime);
		updateScreen();
		XTime_GetTime(&funcEndTime);
		u32 updateTime = (u32)((u64)funcEndTime - (u64)funcStartTime);

		XTime_GetTime(&frameEndTime);
		u32 frameTime = (u32)((u64)frameEndTime - (u64)frameStartTime);

		xil_printf("Core 1 transfer time: %8d\n", transferTime);
		xil_printf("Core 1 draw time:     %8d\n", drawTime);
		xil_printf("Core 1 update time:   %8d\n", updateTime);
		xil_printf("Core 1 frame time:    %8d\n", frameTime);
	}
}

void WolfensteinCore1::getNewDistanceArray() {
	while(!INTERFACE_PTR->valid);

	memcpy(DISTANCE_ARRAY_1, DISTANCE_ARRAY_0, NUM_RAYS * sizeof(float));

	INTERFACE_PTR->acknowledge = 1;
	while(INTERFACE_PTR->valid);
	INTERFACE_PTR->acknowledge = 0;
}

void WolfensteinCore1::drawEnvironment() {
	float* distanceArray = DISTANCE_ARRAY_1;

	// FOR CALCULATING WALL HEIGHT BASED ON DISTANCE
	// The height of the drawn wall in a column is a portion of the screen height
	// Let this portion be (half the height of the wall) over (distance * tan(vertical FOV / 2))
	float halfWallHeight = 0.5;
	float tanHalfVertFov = tan(VERTICAL_FOV / 2.0);
	float distanceInverseScaler = 0.5 * SCREEN_HEIGHT * halfWallHeight / tanHalfVertFov;

	// Find column closest to player
	int indexOfClosest = 0;
	for(int r = 1; r < NUM_RAYS; r++) {
		if(distanceArray[r] < distanceArray[indexOfClosest]) {
			indexOfClosest = r;
		}
	}

	float minDistanceToWall = distanceArray[indexOfClosest];
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
		float colourScaler = 10.0 / (distanceArray[r] + 10.0);
		int wallColourInt = WALL_COLOUR.getColourAsInt(colourScaler);
		for(int j = 0; j < PIXEL_WIDTHS_PER_RAY; j++) {
			INTERMEDIATE_IMAGE_BUFFER[r * PIXEL_WIDTHS_PER_RAY + j] = wallColourInt;
		}
	}

	// Copy the 1 row to rest of screen that has wall visible
	for(int i = minWallRow; i < maxWallRow; i++) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	int ceilingColourInt = CEILING_COLOUR.getColourAsInt();
	int floorColourInt = FLOOR_COLOUR.getColourAsInt();

	// Draw 1 row of floor and ceiling and copy them to rest of screen that has floor and ceiling across the whole row
	if(maxCeilingRow > 0) {
		for(int j = 0; j < SCREEN_WIDTH; j++) {
			INTERMEDIATE_IMAGE_BUFFER[j] = ceilingColourInt;
			INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH + j] = floorColourInt;
		}

		for(int i = 1; i < maxCeilingRow; i++) {
			memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
		}
		for(int i = minFloorRow; i < SCREEN_HEIGHT; i++) {
			memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[(SCREEN_HEIGHT - 1) * SCREEN_WIDTH], SCREEN_WIDTH * sizeof(int));
		}
	}

	// Fill in the rest of the floor and ceiling in columns
	for(int r = 0; r < NUM_RAYS; r++) {
		float distanceToWall = distanceArray[r];
		int halfOfWallHeight = (int)(distanceInverseScaler / distanceToWall);
		int wallStartRow = SCREEN_HEIGHT * 0.5 - halfOfWallHeight; // Inclusive for walls, exclusive for ceiling
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

void WolfensteinCore1::updateScreen() {
	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}
