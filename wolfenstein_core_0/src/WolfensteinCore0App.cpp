
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
#include "Addresses.h"
#include "Player.h"
#include "Level.h"
#include "Gpio.h"
#include "InterruptSetup.h"
#include "Buttons.h"
#include "Colour.h"
#include "CharMatrix.h"

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

					drawMenu();

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

						player.setHealth(MAX_PLAYER_HEALTH);

						player.setPositionX(5);
						player.setPositionY(2);
						player.setAngle(M_PI / 2);

						gameState = PLAYING_LEVEL;
					}
				}
				break;
			}

			case PLAYING_LEVEL: {
				// XTimes are in double-clock-cycles (DC)
				u32 maxGameLogicTimeDC = 0;
				u32 maxRayCastTimeDC = 0;
				u32 maxTransferTimeDC = 0;
				u32 maxFrameTimeDC = 0;

				while(gameState == PLAYING_LEVEL) {
					XTime frameStartTimeDC;
					XTime_GetTime(&frameStartTimeDC);

					if(Buttons_isNewStatus()) {
						if(Buttons_isButtonPressed(CENTRE)) {
							gameState = MAIN_MENU;
							break;
						}
					}

					XTime funcStartTimeDC;
					XTime funcEndTimeDC;
					u32 funcTimeDC;

					// Game Logic Per Frame
					XTime_GetTime(&funcStartTimeDC);
					this->gameLogicPerFrame();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxGameLogicTimeDC) {
						maxGameLogicTimeDC = funcTimeDC;
					}

					// Cast Rays
					XTime_GetTime(&funcStartTimeDC);
					this->castRays();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxRayCastTimeDC) {
						maxRayCastTimeDC = funcTimeDC;
					}

					// Transfer Distance Array
					XTime_GetTime(&funcStartTimeDC);
					this->transferSharedDataPacket();
					XTime_GetTime(&funcEndTimeDC);
					funcTimeDC = (u32)((u64)funcEndTimeDC - (u64)funcStartTimeDC);
					if(funcTimeDC > maxTransferTimeDC) {
						maxTransferTimeDC = funcTimeDC;
					}

					XTime frameEndTimeDC;
					XTime_GetTime(&frameEndTimeDC);
					u32 frameTimeDC = (u32)((u64)frameEndTimeDC - (u64)frameStartTimeDC);
					if(frameTimeDC > maxFrameTimeDC) {
						maxFrameTimeDC = frameTimeDC;
					}

					frameTimeInSec = (double)frameTimeDC / (double)COUNTS_PER_SECOND;

					if(DO_PRINT_FRAME_TIME) {
						xil_printf("Core 0 frame time ms: %8d\n", (int)(frameTimeInSec * 1000));
					}

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
	memset(SHARED_DATA_PACKETS, 0, 2 * sizeof(sharedDataPacket_t));
}

void WolfensteinCore0App::startCore1() {
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0App::drawMenu() {
	// Dummy Menu. It's bad. TODO: make better
	int backgroundColour = colourRGB(10, 0, 0);

	for(int i = 0; i < SCREEN_HEIGHT; i++) {
		for(int j = 0; j < SCREEN_WIDTH; j++) {
			INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + j] = backgroundColour;
		}
	}

	int leftMargin = 50;
	int scale = 2;
	int lineSpace = 10;

	int line1Row = 320;
	int line2Row = line1Row + CHARACTER_HEIGHT * scale + lineSpace;

	drawCharacter(0, line1Row, leftMargin, 2, 0);
	drawCharacter(1, line2Row, leftMargin, 2, 0);

	// Draw cursor
	int cursorCol = 40;
	int cursorRow = line1Row + CHARACTER_HEIGHT * scale / 2 + levelSelectIndex * (line2Row - line1Row);
	int cursorColour = colourRGB(15, 15, 0);

	for(int i = cursorRow - 2; i < cursorRow + 3; i++) {
		for(int j = cursorCol - 2; j < cursorCol + 3; j++) {
			INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + j] = cursorColour;
		}
	}

	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
}

void WolfensteinCore0App::drawCharacter(int characterIndex, int startRow, int startCol, int scale, int colour) {
	for(int i = 0; i < CHARACTER_HEIGHT * scale; i++) {
		for(int j = 0; j < CHARACTER_WIDTH * scale; j++) {
			if(CHARACTERS_MATRIX[characterIndex][i / scale] & (1 << (CHARACTER_WIDTH - 1 - j / scale))) {
				INTERMEDIATE_IMAGE_BUFFER[(i + startRow) * SCREEN_WIDTH + j + startCol] = colour;
			}
		}
	}
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

	float deltaX = (cos(player.getAngle()) * moveCtrlY + sin(player.getAngle()) * moveCtrlX) * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	float deltaY = (sin(player.getAngle()) * moveCtrlY - cos(player.getAngle()) * moveCtrlX) * MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
	if(currentLevel->getBlockAtWorldCoord(player.getPositionX() + deltaX, player.getPositionY()) == ' ') {
		player.setPositionX(player.getPositionX() + deltaX);
	}
	if(currentLevel->getBlockAtWorldCoord(player.getPositionX(), player.getPositionY() + deltaY) == ' ') {
		player.setPositionY(player.getPositionY() + deltaY);
	}

	// Angle change from joystick
	float newAngle = player.getAngle() - turnCtrl * MAX_PLAYER_TURN_SPEED_RAD_PER_SEC * frameTimeInSec;
	player.setAngle(newAngle);
}

void WolfensteinCore0App::castRays() {
	float angleIncrement = HORIZONTAL_FOV / (float)NUM_RAYS;
	float startAngle = player.getAngle() - HORIZONTAL_FOV / 2.0 + angleIncrement / 2.0;
	float rayAngle = startAngle; // Rays start on right, move towards left
	float* distanceArray0 = SHARED_DATA_PACKETS[0].distanceArray;

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

		distanceArray0[NUM_RAYS - 1 - r] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinCore0App::transferSharedDataPacket() {
	SHARED_DATA_PACKETS[0].playerData = player.getPlayerData();

	INTERFACE_PTR->valid = 1;
	while(!INTERFACE_PTR->acknowledge);

	INTERFACE_PTR->valid = 0;
	while(INTERFACE_PTR->acknowledge);
}
