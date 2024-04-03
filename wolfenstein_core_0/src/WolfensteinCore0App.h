
#ifndef WOLFENSTEIN_CORE_0_H
#define WOLFENSTEIN_CORE_0_H

#include "Constants.h"
#include "Player.h"
#include "Level.h"
#include "Enemy.h"
#include "Drop.h"

class WolfensteinCore0App {

public:
	WolfensteinCore0App();

	void runCore0App();

private:
	void clearMem();
	void startCore1();
	void drawMenu();
	void initializeEnemies();
	void drawCharacter(int characterIndex, int startRow, int startCol, int scale, int colour);
	void handlePlayerMovement();
	void handlePlayerAction();
	void checkWinCondition();
	void updateEnemies();
	void castRays();
	void transferSharedDataPacket();

	enum gameState_t {
		MAIN_MENU,
		PLAYING_LEVEL
	};

	Player player;
	Enemy enemies[MAX_NUM_ENEMIES];
	Drop healthDrops[MAX_NUM_HEALTH_DROPS];
	int levelSelectIndex = 0;
	Level* currentLevel = nullptr;
	gameState_t gameState = MAIN_MENU;
	double frameTimeInSec = 0;
};

#endif
