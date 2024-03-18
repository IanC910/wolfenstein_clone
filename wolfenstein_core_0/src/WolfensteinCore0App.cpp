
#include "WolfensteinCore0App.h"

#include <string.h>
#include <math.h>

#include "xpseudo_asm.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "xil_exception.h"
#include "xil_types.h"

#include "Constants.h"
#include "Player.h"
#include "Level.h"
#include "Gpio.h"
#include "InterruptSetup.h"
#include "Buttons.h"

WolfensteinCore0App::WolfensteinCore0App() {
	xil_printf("Wolfenstein Core 0 App Init\n");

	Xil_DCacheDisable();

	clearMem();

	InterruptSetup_setInterruptHandler(
		INTERRUPT_0_ID,
		(Xil_ExceptionHandler)Buttons_basicInterruptHandler
	);

	jstkInitialize();
}

void WolfensteinCore0App::runCore0App() {
	xil_printf("Starting Wolfenstein Core 0 App\n");

	startCore1();

	// Main Loop
	while(true) {

		switch(gameState) {
			case MAIN_MENU: {
				while(gameState == MAIN_MENU) {

					// Wait for button press
					while(!Buttons_isNewStatus());

					if(Buttons_isButtonPressed(UP) && levelSelectIndex > 0) {
						levelSelectIndex--;
					}
					if(Buttons_isButtonPressed(DOWN) && levelSelectIndex < NUM_LEVELS) {
						levelSelectIndex++;
					}
					if(Buttons_isButtonPressed(CENTRE)) {
						this->currentLevel = getLevel(0);

						player.setPositionX(5);
						player.setPositionY(2);
						player.setAngle(M_PI / 2);

						gameState = PLAYING_LEVEL;
					}

					drawMenu();

				}
				break;
			}

			case PLAYING_LEVEL: {
				// Times are in double-clock-cycles (DC)
				u32 frameTimeDC = 0;
				XTime frameStartTimeDC;
				XTime frameEndTimeDC;
				XTime funcStartTimeDC;
				XTime funcEndTimeDC;
				u32 funcTimeDC;
				u32 maxGameLogicTimeDC = 0;
				u32 maxRayCastTimeDC = 0;
				u32 maxTransferTimeDC = 0;
				u32 maxFrameTimeDC = 0;

				while(gameState == PLAYING_LEVEL) {
					XTime_GetTime(&frameStartTimeDC);

					if(Buttons_isNewStatus()) {
						if(Buttons_isButtonPressed(CENTRE)) {
							gameState = MAIN_MENU;
							break;
						}
					}

					// Game Logic Per Frame
					XTime_GetTime(&funcStartTimeDC);
					this->gameLogicPerFrame();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxGameLogicTimeDC && DO_PRINT_FUNC_TIME) {
						maxGameLogicTimeDC = funcTimeDC;
						xil_printf("Core 0 max game logic time: %8d\n", maxGameLogicTimeDC);
					}

					// Cast Rays
					XTime_GetTime(&funcStartTimeDC);
					this->castRays();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxRayCastTimeDC && DO_PRINT_FUNC_TIME) {
						maxRayCastTimeDC = funcTimeDC;
						xil_printf("Core 0 max ray cast time: %8d\n", maxRayCastTimeDC);
					}

					// Transfer Distance Array
					XTime_GetTime(&funcStartTimeDC);
					this->transferDistanceArray();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxTransferTimeDC && DO_PRINT_FUNC_TIME) {
						maxTransferTimeDC = funcTimeDC;
						xil_printf("Core 0 max transfer time: %8d\n", maxTransferTimeDC);
					}

					XTime_GetTime(&frameEndTimeDC);
					frameTimeDC = (u32)((u64)frameEndTimeDC - (u64)frameStartTimeDC);
					if(frameTimeDC > maxFrameTimeDC && DO_PRINT_FRAME_TIME) {
						maxFrameTimeDC = frameTimeDC;
						xil_printf("Core 0 max frame time: %8d\n", maxFrameTimeDC);
					}

					if(DO_PRINT_FRAME_TIME) {
						xil_printf("Core 0 frame time: %8d\n", frameTimeDC);
					}

					frameTimeInSec = (double)frameTimeDC / (double)COUNTS_PER_SECOND;
				}
				break;
			}

			default: {
				break;
			}
		} // game state switch
	} // Main Loop
}

void WolfensteinCore0App::clearMem() {
	memset(VGA_IMAGE_BUFFER_0, 0x80, SCREEN_SIZE_BYTES);
	memset(INTERMEDIATE_IMAGE_BUFFER, 0, SCREEN_SIZE_BYTES);
	memset((void*)INTERFACE_PTR, 0, sizeof(validAckInterface_t));
	memset(DISTANCE_ARRAY_0, 0, NUM_RAYS * sizeof(float));
	memset(DISTANCE_ARRAY_1, 0, NUM_RAYS * sizeof(float));
}

void WolfensteinCore0App::startCore1() {
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0App::drawMenu() {
	memset(VGA_IMAGE_BUFFER_0, 0x80, SCREEN_SIZE_BYTES);
	memset(INTERMEDIATE_IMAGE_BUFFER, 0, SCREEN_SIZE_BYTES);
}

void WolfensteinCore0App::gameLogicPerFrame() {
	jstkPosition1 = JSTK2_getPosition(&jstk1);
	jstkPosition2 = JSTK2_getPosition(&jstk2);

	float moveCtrlX = 0;
	float moveCtrlY = 0;
	float turnCtrl = 0;

	if(DO_USE_JOYSTICKS) {
		moveCtrlX = mapJSTK(jstkPosition1.XData);
		moveCtrlY = mapJSTK(jstkPosition1.YData);
		turnCtrl = mapJSTK(jstkPosition2.XData);
	}
	else {
		moveCtrlY = (float)((int)Buttons_isButtonPressed(UP) - (int)Buttons_isButtonPressed(DOWN));
		turnCtrl = (float)((int)Buttons_isButtonPressed(RIGHT) - (int)Buttons_isButtonPressed(LEFT));
	}

	xil_printf("frameTime ms: %d\n", (int)(frameTimeInSec * 1000));

	// Position change from joystick y
	float newPositionXFromY = player.getPositionX() + cos(player.getAngle()) * moveCtrlY * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	float newPositionYFromY = player.getPositionY() + sin(player.getAngle()) * moveCtrlY * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	if(currentLevel->getBlockAtWorldCoord(newPositionXFromY, newPositionYFromY) == ' ') {
		player.setPositionX(newPositionXFromY);
		player.setPositionY(newPositionYFromY);
	}

	// Position change from joystick x
	float newPositionXFromX = player.getPositionX() + sin(player.getAngle()) * moveCtrlX * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	float newPositionYFromX = player.getPositionY() - cos(player.getAngle()) * moveCtrlX * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	if(currentLevel->getBlockAtWorldCoord(newPositionXFromX, newPositionYFromX) == ' ') {
		player.setPositionX(newPositionXFromX);
		player.setPositionY(newPositionYFromX);
	}

	// Angle change from joystick
	float newAngle = player.getAngle() - turnCtrl * MAX_PLAYER_TURN_SPEED_RAD_PER_SEC * frameTimeInSec;
	player.setAngle(newAngle);
}

void WolfensteinCore0App::castRays() {
	float angleIncrement = HORIZONTAL_FOV / (float)NUM_RAYS;
	float startAngle = player.getAngle() - HORIZONTAL_FOV / 2.0 + angleIncrement / 2.0;
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
