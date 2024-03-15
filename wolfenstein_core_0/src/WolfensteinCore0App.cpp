
#include "WolfensteinCore0App.h"

#include <string.h>
#include <math.h>

#include "xpseudo_asm.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"

#include "Constants.h"
#include "Gpio.h"

#define MAX_SPEED 1.5

WolfensteinCore0App::WolfensteinCore0App() {
	Xil_DCacheDisable();
}

void WolfensteinCore0App::runCore0App() {
	xil_printf("Starting Wolfenstein Core 0 App\n");

	clearMem();

	startCore1();

	jstkInitialize();

	this->currentLevel = getLevel(0);

	player.setPositionX(5);
	player.setPositionY(2);
	player.setAngle(M_PI / 2);

	// Times are in double-clock-cycles
	u32 frameTime = 0;

	u32 maxGameLogicTime = 0;
	u32 maxRayCastTime = 0;
	u32 maxTransferTime = 0;
	u32 maxFrameTime = 0;

	while(true) {
		XTime frameStartTime;
		XTime frameEndTime;
		XTime funcStartTime;
		XTime funcEndTime;
		u32 funcTime;

		XTime_GetTime(&frameStartTime);

		// Game Logic Per Frame
		XTime_GetTime(&funcStartTime);
		this->gameLogicPerFrame();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxGameLogicTime) {
			maxGameLogicTime = funcTime;
			xil_printf("Core 0 max game logic time: %8d\n", maxGameLogicTime);
		}

		// Cast Rays
		XTime_GetTime(&funcStartTime);
		this->castRays();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxRayCastTime) {
			maxRayCastTime = funcTime;
			xil_printf("Core 0 max ray cast time: %8d\n", maxRayCastTime);
		}

		// Transfer Distance Array
		XTime_GetTime(&funcStartTime);
		this->transferDistanceArray();
		XTime_GetTime(&funcEndTime);
		funcTime = (u32)((u64)funcEndTime - (u64)funcStartTime);
		if(funcTime > maxTransferTime) {
			maxTransferTime = funcTime;
			xil_printf("Core 0 max transfer time: %8d\n", maxTransferTime);
		}

		XTime_GetTime(&frameEndTime);
		frameTime = (u32)((u64)frameEndTime - (u64)frameStartTime);
		if(frameTime > maxFrameTime) {
			maxFrameTime = frameTime;
			xil_printf("Core 0 max frame time: %8d\n", maxFrameTime);
		}

		xil_printf("Core 0 frame time: %8d\n", frameTime);
		frameTimeInSec = (double)frameTime/(double)COUNTS_PER_SECOND;
	}
}

void WolfensteinCore0App::clearMem() {
	memset(VGA_IMAGE_BUFFER_0, 0x80, SCREEN_SIZE_BYTES);
	memset(INTERMEDIATE_IMAGE_BUFFER, 0, SCREEN_SIZE_BYTES);
	memset((void*)INTERFACE_PTR, 0, sizeof(validAckInterface_t));
	memset(DISTANCE_ARRAY_0, 0, NUM_RAYS * sizeof(float));
	memset(DISTANCE_ARRAY_1, 0, NUM_RAYS * sizeof(float));
}

void WolfensteinCore0App::startCore1() {
	Xil_Out32(0x00000000, (u32)CORE_1_BASE_ADDR);
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0App::gameLogicPerFrame() {
	jstkPosition1 = JSTK2_getPosition(&jstk1);
	jstkPosition2 = JSTK2_getPosition(&jstk2);

	float newPositionXFromY = player.getPositionX() + cos(player.getAngle())*mapJSTK(jstkPosition1.YData)*MAX_SPEED*frameTimeInSec;
	float newPositionYFromY = player.getPositionY() + sin(player.getAngle())*mapJSTK(jstkPosition1.YData)*MAX_SPEED*frameTimeInSec;

	float newAngle = player.getAngle() - mapJSTK(jstkPosition2.XData)*MAX_SPEED*frameTimeInSec;

	if(currentLevel->getBlockAtWorldCoord(newPositionXFromY, newPositionYFromY) != '#') {
		player.setPositionX(newPositionXFromY);
		player.setPositionY(newPositionYFromY);
	}

	float newPositionXFromX = player.getPositionX() + sin(player.getAngle())*mapJSTK(jstkPosition1.XData)*MAX_SPEED*frameTimeInSec;
	float newPositionYFromX = player.getPositionY() - cos(player.getAngle())*mapJSTK(jstkPosition1.XData)*MAX_SPEED*frameTimeInSec;

	if(currentLevel->getBlockAtWorldCoord(newPositionXFromX, newPositionYFromX) != '#') {
		player.setPositionX(newPositionXFromX);
		player.setPositionY(newPositionYFromX);
	}

	player.setAngle(newAngle);
}

void WolfensteinCore0App::castRays() {
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

void WolfensteinCore0App::transferDistanceArray() {
	INTERFACE_PTR->valid = 1;
	while(!INTERFACE_PTR->acknowledge);
	INTERFACE_PTR->valid = 0;
	while(INTERFACE_PTR->acknowledge);
}
