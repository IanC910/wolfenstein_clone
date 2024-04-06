
#include "WolfensteinCore0App.h"

#include <string.h>
#include <math.h>

#include "sleep.h"
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
#include "Colour.h"
#include "Controller.h"
#include "Constants.h"
#include "InterruptSetup.h"
#include "LevelBank.h"
#include "Player.h"
#include "Sprite.h"

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
					soundPlayer.stopAllSounds();

					drawMenu();
//					Xil_DCacheFlush();

					// Wait for button press
					while(!Buttons_isNewStatus());

					if(Buttons_isButtonPressed(BTN_UP) && levelSelectIndex > 0) {
						levelSelectIndex--;
					}
					if(Buttons_isButtonPressed(BTN_DOWN) && levelSelectIndex < NUM_LEVELS - 1) {
						levelSelectIndex++;
					}
					if(Buttons_isButtonPressed(BTN_CENTRE)) {
						this->currentLevel = getLevel(levelSelectIndex);

						player.setHealth(MAX_PLAYER_HEALTH);

						player.setPositionX(currentLevel->getStartingX());
						player.setPositionY(currentLevel->getStartingY());
						player.setAngle(M_PI / 2);

						initializeEnemies();
						initializeDrops();

						gameState = PLAYING_LEVEL;
					}
				}
				break;
			}

			case PLAYING_LEVEL: {
				int frameIndex = 0;

				float songLengthS = getSoundLengthS(SONG_SOUND);
				float timeSinceSongPlayedS = 0;
				soundPlayer.playSound(SONG_SOUND, 80, 1);
				soundPlayer.playSound(SONG_SOUND, 80, 1); // Bug in hw. doesn't play the first time you start the level

				while(gameState == PLAYING_LEVEL) {
					// All XTimes are in double-cycles
					XTime frameStartTimeDC;
					XTime_GetTime(&frameStartTimeDC);

					timeSinceSongPlayedS += frameTimeInSec;
					if(timeSinceSongPlayedS > songLengthS) {
						xil_printf("Playing song\n");
						soundPlayer.playSound(SONG_SOUND, 80, 1);
						timeSinceSongPlayedS = 0;
					}

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
					updateEnemies();
					updateDrops();

					transferSharedDataPacket();

					checkStopCondition();

					XTime frameEndTimeDC;
					XTime_GetTime(&frameEndTimeDC);
					u32 frameTimeDC = (u32)((u64)frameEndTimeDC - (u64)frameStartTimeDC);
					frameTimeInSec = (double)frameTimeDC / (double)DOUBLE_CYCLES_PER_S;

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
	memset(VGA_IMAGE_BUFFER_0, 0, SCREEN_SIZE_BYTES);
	memset(INTERMEDIATE_IMAGE_BUFFER, 0, SCREEN_SIZE_BYTES);
	memset((void*)INTERFACE_PTR, 0, sizeof(validAckInterface_t));
	memset((void*)SHARED_DATA_PACKETS, 0, 2 * sizeof(sharedDataPacket_t));

}

void WolfensteinCore0App::startCore1() {
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");
}

void WolfensteinCore0App::drawMenu() {
	// Draw background sprite
	Sprite menuSprite(MAIN_MENU_BACKGROUND_SPRITE);
	int* pixelData = menuSprite.getPixelData();

	for(int spriteRow = 0; spriteRow < menuSprite.getNumRows(); spriteRow++) {
		int startScreenRow = SCREEN_HEIGHT + (spriteRow - menuSprite.getNumRows()) * menuSprite.getGranularity();

		for(int screenRow = startScreenRow; screenRow < startScreenRow + menuSprite.getGranularity(); screenRow++) {
			memcpy(
				&INTERMEDIATE_IMAGE_BUFFER[screenRow * SCREEN_WIDTH],
				&pixelData[spriteRow * menuSprite.getNumCols()],
				menuSprite.getNumCols() * sizeof(int)
			);
		}
	}

	// Draw cursor
	// Magic numbers here are measured from the sprite
	int numberHeight = 15 * menuSprite.getGranularity();
	int numberWidth = 12 * menuSprite.getGranularity();
	int lineSpace = 3 * menuSprite.getGranularity();

	int line0Row = 145 * menuSprite.getGranularity();
	int line0Col = 23 * menuSprite.getGranularity();

	int cursorCol = line0Col + numberWidth + 8;
	int cursorRow = line0Row - numberHeight / 2 + levelSelectIndex * (numberHeight + lineSpace);
	int cursorRadius = 3;
	int cursorColour = colourRGB(15, 15, 0);

	for(int i = cursorRow - cursorRadius; i < cursorRow + cursorRadius; i++) {
		for(int j = cursorCol - cursorRadius; j < cursorCol + cursorRadius; j++) {
			INTERMEDIATE_IMAGE_BUFFER[i * SCREEN_WIDTH + j] = cursorColour;
		}
	}

	memcpy(VGA_IMAGE_BUFFER_0, INTERMEDIATE_IMAGE_BUFFER, SCREEN_SIZE_BYTES);
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
		soundPlayer.playSound(GUNSHOT_SOUND, 80, 0);

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

			Sprite enemySprite(ENEMY_SPRITE);

			int enemyMiddleCol = (int)((deltaAngle / HORIZONTAL_FOV + 0.5) * float(SCREEN_WIDTH));
			int enemyLeftCol = enemyMiddleCol - enemySprite.getNumCols() / (2 * distanceToEnemy);
			int enemyRightCol = enemyMiddleCol + enemySprite.getNumCols() / (2 * distanceToEnemy);

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

void WolfensteinCore0App::checkStopCondition() {
	Enemy* enemyArray = SHARED_DATA_PACKETS[0].enemyArray;
	bool enemiesRemain = false;

	for(int e = 0; e < MAX_NUM_ENEMIES; e++) {
		if(enemyArray[e].getHealth() > 0) {
			enemiesRemain = true;
			break;
		}
	}

	// Win Condition
	if(!enemiesRemain) {
		gameState = MAIN_MENU;
		sleep(1);
	}

	// Lose Condition
	if(player.getHealth() <= 0) {
		gameState = MAIN_MENU;
		sleep(1);
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

void WolfensteinCore0App::initializeDrops() {
	Drop* healthDropArray = SHARED_DATA_PACKETS[0].healthDropArray;

	for(int i = 0; i < currentLevel->getNumHealthDrops(); i++) {
		healthDropArray[i].initialize();
		healthDropArray[i].setPositionX(currentLevel->getHealthDropX(i));
		healthDropArray[i].setPositionY(currentLevel->getHealthDropY(i));
	}

	for(int i = currentLevel->getNumHealthDrops(); i < MAX_NUM_HEALTH_DROPS; i++) {
		healthDropArray[i].reset();
	}
}

void WolfensteinCore0App::updateEnemies() {
	Enemy* enemyArray = SHARED_DATA_PACKETS[0].enemyArray;
	float* distanceArray = SHARED_DATA_PACKETS[0].distanceArray;

	for(int e = 0; e < currentLevel->getNumEnemies(); e++) {
		Enemy* enemy = &enemyArray[e];

		if(enemy->getHealth() <= 0) {
			continue;
		}

		float enemyToPlayerX = player.getPositionX() - enemy->getPositionX();
		float enemyToPlayerY = player.getPositionY() - enemy->getPositionY();
		float playerDistanceFromEnemy = sqrtf(enemyToPlayerX * enemyToPlayerX + enemyToPlayerY * enemyToPlayerY);

		// Handle Enemy Movement
		if(enemy->hasSeenPlayer()) {
			if(playerDistanceFromEnemy > 1.5) {
				float objectAngle = atan2f(enemyToPlayerY, enemyToPlayerX);
				if(objectAngle < M_PI) {
					objectAngle += 2.0 * M_PI;
				}
				if(objectAngle > M_PI) {
					objectAngle -= 2.0 * M_PI;
				}
				float deltaX = (cos(objectAngle) + sin(objectAngle)) * MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;
				float deltaY = (sin(objectAngle) - cos(objectAngle)) * MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC * frameTimeInSec;

				if(currentLevel->getBlockAtWorldCoord(enemy->getPositionX() + deltaX * 12.5, enemy->getPositionY()) == ' ') {
					enemy->setPositionX(enemy->getPositionX() + deltaX);
				}
				if(currentLevel->getBlockAtWorldCoord(enemy->getPositionX(), enemy->getPositionY() + deltaY * 12.5) == ' ') {
					enemy->setPositionY(enemy->getPositionY() + deltaY);
				}

			}

			enemy->setTimeSinceLastShotS(enemy->getTimeSinceLastShotS() + frameTimeInSec);

			// Handle Enemy Attack
			if(playerDistanceFromEnemy < 1.5 && enemy->getTimeSinceLastShotS() >= ENEMY_SHOT_DELAY_S) {
				soundPlayer.playSound(GUNSHOT_SOUND, 80, 0);
				player.setHealth(player.getHealth() - ENEMY_DAMAGE);
				enemy->setTimeSinceLastShotS(0.0);
			}
		}
		else if(playerDistanceFromEnemy < 3.0) {
			float objectAngle = player.getAngle() - atan2f(-enemyToPlayerY, -enemyToPlayerX);

			if(objectAngle < -M_PI) {
				objectAngle += 2.0 * M_PI;
			}
			if(objectAngle > M_PI) {
				objectAngle -= 2.0 * M_PI;
			}

			bool inPlayerFOV = fabs(objectAngle) < HORIZONTAL_FOV / 2.0;
			float middleOfEnemy = (objectAngle / HORIZONTAL_FOV + 0.5) * float(SCREEN_WIDTH);

			if(inPlayerFOV && distanceArray[(int)middleOfEnemy / GRANULARITY_H] >= playerDistanceFromEnemy) {
				enemy->setSeenPlayer();
			}
		}
	}
}

void WolfensteinCore0App::updateDrops() {
	Drop* healthDropArray = SHARED_DATA_PACKETS[0].healthDropArray;

	if(player.getHealth() < MAX_PLAYER_HEALTH) {
		for(int i = 0; i < currentLevel->getNumHealthDrops(); i++) {
			if(healthDropArray[i].isPickedUp()) {
				continue;
			}

			float dropToPlayerX = player.getPositionX() - healthDropArray[i].getPositionX();
			float dropToPlayerY = player.getPositionY() - healthDropArray[i].getPositionY();
			float distanceFromObject = sqrtf(dropToPlayerX * dropToPlayerX + dropToPlayerY * dropToPlayerY);

			if(healthDropArray[i].pickUp(distanceFromObject)) {
				player.setHealth(player.getHealth() + HEALTH_DROP_AMOUNT_HEALED);
			}
		}
	}
}
