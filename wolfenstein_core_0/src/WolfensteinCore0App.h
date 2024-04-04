
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
	void initializeEnemies();
	void initializeDrops();
	void handlePlayerMovement();
	void handlePlayerAction();
	void checkStopCondition();
	void updateEnemies();
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
