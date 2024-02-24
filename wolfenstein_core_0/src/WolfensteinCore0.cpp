
#include "WolfensteinCore0.h"

#include <string.h>
#include <math.h>

#include "xpseudo_asm.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "Constants.h"

void WolfensteinCore0::runCore0App() {
	Xil_DCacheDisable();

	clearMem();

	startCore1();

	this->currentLevel = getLevel(0);

	player.setPositionX(5);
	player.setPositionY(2);
	player.setAngle(M_PI / 2);

	while(true) {
		XTime frameStartTime;
		XTime frameEndTime;
		XTime funcStartTime;
		XTime funcEndTime;

		XTime_GetTime(&frameStartTime);

		player.setAngle(player.getAngle() + 0.01);

		// Cast Rays
		XTime_GetTime(&funcStartTime);
		castRays();
		XTime_GetTime(&funcEndTime);
		u32 castTime = (u32)((u64)funcEndTime - (u64)funcStartTime);

		// Transfer Distance Array
		XTime_GetTime(&funcStartTime);
		transferDistanceArray();
		XTime_GetTime(&funcEndTime);
		u32 transferTime = (u32)((u64)funcEndTime - (u64)funcStartTime);

		XTime_GetTime(&frameEndTime);
		u32 frameTime = (u32)((u64)frameEndTime - (u64)frameStartTime);

		xil_printf("Core 0 cast time:     %8d\n", castTime);
		xil_printf("Core 0 transfer time: %8d\n", transferTime);
		xil_printf("Core 0 frame time:    %8d\n", frameTime);
	}
}

void WolfensteinCore0::clearMem() {
	memset(VGA_IMAGE_BUFFER_0, 0x80, SCREEN_SIZE_BYTES);
	memset(INTERMEDIATE_IMAGE_BUFFER, 0, SCREEN_SIZE_BYTES);
	memset((void*)INTERFACE_PTR, 0, sizeof(validAckInterface_t));
	memset(DISTANCE_ARRAY_0, 0, NUM_RAYS * sizeof(float));
	memset(DISTANCE_ARRAY_1, 0, NUM_RAYS * sizeof(float));
}

void WolfensteinCore0::startCore1() {
	Xil_Out32(0x00000000, (u32)CORE_1_BASE_ADDR);
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0::castRays() {
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

		DISTANCE_ARRAY_0[NUM_RAYS - 1 - r] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinCore0::transferDistanceArray() {
	INTERFACE_PTR->valid = 1;
	while(!INTERFACE_PTR->acknowledge);
	INTERFACE_PTR->valid = 0;
	while(INTERFACE_PTR->acknowledge);
}
