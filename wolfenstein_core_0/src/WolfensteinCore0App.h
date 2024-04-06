
#ifndef WOLFENSTEIN_CORE_0_H
#define WOLFENSTEIN_CORE_0_H

#include "Controller.h"
#include "Constants.h"
#include "Drop.h"
#include "Enemy.h"
#include "Level.h"
#include "Player.h"
#include "SoundPlayer.h"

class WolfensteinCore0App {

public:
	WolfensteinCore0App();

	void runCore0App();

private:
	void clearMem();
	void startCore1();
	void drawMenu();

	// Set the initial positions and health status for enemies taken from the level bank depending on the currentLevel
	void initializeEnemies();

	// Set the initial positions and pickedUp status for drops (health & ammo) taken from the level bank depending on the current level
	void initializeDrops();

	// Use user input and update the player's position accordingly
	void handlePlayerMovement();

	// Use user input to check if the player is shooting, check if enemies are hit and update enemy health and player ammo
	void handlePlayerAction();

	// Check for remaining enemies or if player is out of health, display main menu or continue
	void checkStopCondition();

	// Update all enemy positions and handle enemy shooting player, update player health accordingly
	void updateEnemies();

	// Update all drops by checking if player is close enough to pick drop (health & ammo) and applying appropriate addition to player attributes
	void updateDrops();

	void castRays();
	void transferSharedDataPacket();

	enum gameState_t {
		MAIN_MENU,
		PLAYING_LEVEL
	};

	Player player;
	Controller controller;
	SoundPlayer soundPlayer;

	int levelSelectIndex = 0;
	Level* currentLevel = nullptr;
	gameState_t gameState = MAIN_MENU;
	double frameTimeInSec = 0;
};

#endif
