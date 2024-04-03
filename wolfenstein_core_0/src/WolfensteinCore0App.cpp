
#include "WolfensteinCore0App.h"

#include <string.h>
#include <math.h>

#include "xpseudo_asm.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "xil_exception.h"
#include "xil_types.h"
#include "xparameters.h"

#include "Addresses.h"
#include "AudioConfig.h"
#include "Buttons.h"
#include "CharMatrix.h"
#include "Colour.h"
#include "Controller.h"
#include "Constants.h"
#include "InterruptSetup.h"
#include "LevelBank.h"
#include "Player.h"

WolfensteinCore0App::WolfensteinCore0App() :
	soundPlayer(XPAR_AUDIO_FETCHER_0_BASEADDR)
{
	xil_printf("Wolfenstein Core 0 App Init\n");

	Xil_DCacheDisable();

	clearMem();

	configAudio();

	InterruptSetup_setInterruptHandler(
		INTERRUPT_0_ID,
		(Xil_ExceptionHandler)Buttons_basicInterruptHandler
	);

	if(DO_USE_CONTROLLER) {
		controller = Controller(
			XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
			XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR,
			XPAR_PMODJSTK2_1_AXI_LITE_SPI_BASEADDR,
			XPAR_PMODJSTK2_1_AXI_LITE_GPIO_BASEADDR
		);
	}
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
					Xil_DCacheFlush();

					// Wait for button press
					while(!Buttons_isNewStatus());

					if(Buttons_isButtonPressed(BTN_UP) && levelSelectIndex > 0) {
						levelSelectIndex--;
					}
					if(Buttons_isButtonPressed(BTN_DOWN) && levelSelectIndex < NUM_LEVELS) {
						levelSelectIndex++;
					}
					if(Buttons_isButtonPressed(BTN_CENTRE)) {
						this->currentLevel = getLevel(0);

						player.setHealth(MAX_PLAYER_HEALTH);

						player.setPositionX(5);
						player.setPositionY(2);
						player.setAngle(M_PI / 2);

						initializeEnemies();

						gameState = PLAYING_LEVEL;
					}
				}
				break;
			}

			case PLAYING_LEVEL: {
				int frameIndex = 0;

				while(gameState == PLAYING_LEVEL) {
					XTime frameStartTimeDC;
					XTime_GetTime(&frameStartTimeDC);

					if(Buttons_isNewStatus()) {
						if(Buttons_isButtonPressed(BTN_DOWN)) {
							gameState = MAIN_MENU;
							break;
						}
					}

					if(DO_USE_CONTROLLER) {
						controller.update();
					}

					handlePlayerMovement();

					castRays();

					handlePlayerAction();
					checkWinCondition();
					// updateEnemies();

					transferSharedDataPacket();

					XTime frameEndTimeDC;
					XTime_GetTime(&frameEndTimeDC);
					u32 frameTimeDC = (u32)((u64)frameEndTimeDC - (u64)frameStartTimeDC);
					frameTimeInSec = (double)frameTimeDC / (double)COUNTS_PER_SECOND;

					if(DO_PRINT_FRAME_TIME and frameIndex == 0) {
						xil_printf("Core 0 frame time ms: %8d\n", (int)(frameTimeInSec * 1000));
					}

					frameIndex = (frameIndex + 1) % 20;
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
	memset((void*)SHARED_DATA_PACKETS, 0, 2 * sizeof(sharedDataPacket_t));

}

void WolfensteinCore0App::startCore1() {
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0App::drawMenu() {
	// Dummy Menu. It's bad. TODO: make better
	int backgroundColour = colourRGB(10, 0, 0);

	for(int j = 0; j < SCREEN_WIDTH; j++) {
		INTERMEDIATE_IMAGE_BUFFER[j] = backgroundColour;
	}
	for(int i = 1; i < SCREEN_HEIGHT; i++) {
		memcpy(&INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH], &INTERMEDIATE_IMAGE_BUFFER[0], SCREEN_WIDTH * sizeof(int));
	}

	int leftMargin = 50;
	int scale = 2;
	int lineSpace = 10;
	int charColour = 0;

	int line1Row = 320;
	int line2Row = line1Row + CHARACTER_HEIGHT * scale + lineSpace;

	drawCharacter(0, line1Row, leftMargin, scale, charColour);
	drawCharacter(1, line2Row, leftMargin, scale, charColour);

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

void WolfensteinCore0App::handlePlayerMovement() {
	float moveCtrlX = 0;
	float moveCtrlY = 0;
	float turnCtrl = 0;

	if(DO_USE_CONTROLLER) {
		moveCtrlX = controller.getNormedJoystickX(0);
		moveCtrlY = controller.getNormedJoystickY(0);
		turnCtrl = controller.getNormedJoystickX(1);
	}
	else {
		moveCtrlY = (float)Buttons_isButtonPressed(BTN_UP);
		turnCtrl = (float)((int)Buttons_isButtonPressed(BTN_RIGHT) - (int)Buttons_isButtonPressed(BTN_LEFT));
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

void WolfensteinCore0App::handlePlayerAction() {
	Enemy* enemyArray = SHARED_DATA_PACKETS[0].enemyArray;
	bool trigger = true;
	static bool prevTrigger = true;

	if(DO_USE_CONTROLLER) {
		trigger = controller.isTriggerPressed(1);
	}
	else {
		trigger = Buttons_isButtonPressed(BTN_CENTRE);
	}

	player.setIsShooting(trigger && !prevTrigger);

	prevTrigger = trigger;

	if(player.getIsShooting()) {
		soundPlayer.playSound(GUNSHOT_SOUND);

		for(int e = 0; e < MAX_NUM_ENEMIES; e++) {
			Enemy* enemy = &enemyArray[e];

			if(enemy->getHealth() <= 0) {
				continue;
			}

			float playerToEnemyX = enemy->getPositionX() - player.getPositionX();
			float playerToEnemyY = enemy->getPositionY() - player.getPositionY();

			float distanceToEnemy = sqrtf(playerToEnemyX * playerToEnemyX + playerToEnemyY * playerToEnemyY);
			float angleToEnemy = atan2f(playerToEnemyY, playerToEnemyX);
			float deltaAngle = angleToEnemy - player.getAngle();
			if(deltaAngle < -M_PI) {
				deltaAngle += 2.0 * M_PI;
			}
			else if(deltaAngle > M_PI) {
				deltaAngle -= 2.0 * M_PI;
			}

			int enemyMiddleCol = (int)((deltaAngle / HORIZONTAL_FOV + 0.5) * float(SCREEN_WIDTH));
			int enemyLeftCol = enemyMiddleCol - ENEMY_SPRITE_WIDTH / (2 * distanceToEnemy);
			int enemyRightCol = enemyMiddleCol + ENEMY_SPRITE_WIDTH / (2 * distanceToEnemy);

			bool enemyInLineOfFire = SCREEN_WIDTH / 2 > enemyLeftCol && SCREEN_WIDTH / 2 + 1 < enemyRightCol;

			if(enemyInLineOfFire) {
				float* distanceArray0 = SHARED_DATA_PACKETS[0].distanceArray;

				// If enemy is not behind a wall
				if(distanceToEnemy < distanceArray0[NUM_RAYS / 2] || distanceToEnemy < distanceArray0[NUM_RAYS / 2 + 1]) {
					// Enemy is hit
					enemy->setHealth(enemy->getHealth() - PLAYER_DAMAGE);
				}
			}
		}
	}
}

void WolfensteinCore0App::checkWinCondition() {
	Enemy* enemyArray = SHARED_DATA_PACKETS[0].enemyArray;
	bool enemiesRemain = false;

	for(int e = 0; e < MAX_NUM_ENEMIES; e++) {
		if(enemyArray[e].getHealth() > 0) {
			enemiesRemain = true;
			break;
		}
	}

	if(!enemiesRemain) {
		gameState = MAIN_MENU;
	}
}

void WolfensteinCore0App::castRays() {
	float angleIncrement = HORIZONTAL_FOV / (float)NUM_RAYS;
	float startAngle = player.getAngle() - HORIZONTAL_FOV / 2.0 + angleIncrement / 2.0; // Add a half increment to centre the rays on the player's angle of sight
	float rayAngle = startAngle; // Rays start on right, move towards left
	float* distanceArray = SHARED_DATA_PACKETS[0].distanceArray;

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

		distanceArray[NUM_RAYS - 1 - r] = distance; // Reverse index because rays are cast from right to left
		rayAngle += angleIncrement;
	}
}

void WolfensteinCore0App::transferSharedDataPacket() {
	SHARED_DATA_PACKETS[0].player = player;

	INTERFACE_PTR->valid = 1;
	while(!INTERFACE_PTR->acknowledge);

	INTERFACE_PTR->valid = 0;
	while(INTERFACE_PTR->acknowledge);
}

void WolfensteinCore0App::initializeEnemies() {
	Enemy* enemyArray = SHARED_DATA_PACKETS[0].enemyArray;

	for(int i = 0; i < currentLevel->getNumEnemies(); i++) {
		enemyArray[i].initialize();
		enemyArray[i].setPositionX(currentLevel->getEnemyX(i));
		enemyArray[i].setPositionY(currentLevel->getEnemyY(i));
	}

	for(int i = currentLevel->getNumEnemies(); i < MAX_NUM_ENEMIES; i++) {
		enemyArray[i].reset();
	}
}

void WolfensteinCore0App::updateEnemies() {
	Enemy* enemies = SHARED_DATA_PACKETS[0].enemyArray;
	float* distanceArray0 = SHARED_DATA_PACKETS[0].distanceArray;

	for(int i = 0; i < currentLevel->getNumEnemies(); i++) {
		if(enemies[i].getHealth() <= 0) {
			continue;
		}

		float vecX = (player.getPositionX() + i*0.5 - enemies[i].getPositionX());
		float vecY = (player.getPositionY() + i*0.5 + 0.5 - enemies[i].getPositionY());
		float playerDistanceFromEnemy = sqrtf(vecX*vecX + vecY*vecY);
		if(enemies[i].hasSeenPlayer()) {
			if(playerDistanceFromEnemy > 1.5) {
				float objectAngle = atan2f(vecY, vecX);
				if(objectAngle < M_PI) {
					objectAngle += 2.0 * M_PI;
				}
				if(objectAngle > M_PI) {
					objectAngle -= 2.0 * M_PI;
				}
				float deltaX = (cos(objectAngle) + sin(objectAngle)) * MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
				float deltaY = (sin(objectAngle) - cos(objectAngle)) * MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;

				if(currentLevel->getBlockAtWorldCoord(enemies[i].getPositionX() + deltaX*(12.5), enemies[i].getPositionY()) == ' ') {
					enemies[i].setPositionX(enemies[i].getPositionX() + deltaX);
				}
				if(currentLevel->getBlockAtWorldCoord(enemies[i].getPositionX(), enemies[i].getPositionY() + deltaY*(12.5)) == ' ') {
					enemies[i].setPositionY(enemies[i].getPositionY() + deltaY);
				}

			}
			enemies[i].setTimeSinceLastShot(enemies[i].getTimeSinceLastShot() + frameTimeInSec);
			if(playerDistanceFromEnemy < 1.5 && enemies[i].getTimeSinceLastShot() >= ENEMY_SHOT_DELAY) {
				player.setHealth(player.getHealth() - ENEMY_DAMAGE_PER_SHOT);
				if(player.getHealth() <= 0) {
					gameState = MAIN_MENU;
				}
				enemies[i].setTimeSinceLastShot(0.0);
			}
		}
		else if(playerDistanceFromEnemy < 3.0) {
			float playerViewX = cosf(player.getAngle());
			float playerViewY = sinf(player.getAngle());
			float objectAngle = atan2f(playerViewY, playerViewX) - atan2f(-vecY, -vecX);

			if(objectAngle < M_PI) {
				objectAngle += 2.0 * M_PI;
			}
			if(objectAngle > M_PI) {
				objectAngle -= 2.0 * M_PI;
			}

			bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;
			float middleOfEnemy = (0.5 * (objectAngle / (HORIZONTAL_FOV / 2.0)) + 0.5) * float(SCREEN_WIDTH);

			if(inPlayerFOV && distanceArray0[(int)middleOfEnemy/RESOLUTION_DOWN_SCALE_H] >= playerDistanceFromEnemy) {
				enemies[i].setSeenPlayer();
			}
		}
	}
}
