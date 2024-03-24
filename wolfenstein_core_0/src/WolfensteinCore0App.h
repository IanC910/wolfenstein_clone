
#ifndef WOLFENSTEIN_CORE_0_H
#define WOLFENSTEIN_CORE_0_H

#include "Player.h"
#include "Level.h"
#include "Enemy.h"

class WolfensteinCore0App {

public:
	WolfensteinCore0App();

	void runCore0App();

private:
	void clearMem();
	void startCore1();
	void drawMenu();
	void drawCharacter(int characterIndex, int startRow, int startCol, int scale, int colour);
	void gameLogicPerFrame();
	void handlePlayerMovement();
	void handlePlayerAction();
	void castRays();
	void transferSharedDataPacket();
	void handleUserMovement();
	void updateEnemies();
	void initializeEnemies();

	enum gameState_t {
		MAIN_MENU,
		PLAYING_LEVEL
	};

	Player player;
	Enemy enemies[3];
	int levelSelectIndex = 0;
	Level* currentLevel = nullptr;
	gameState_t gameState = MAIN_MENU;
	double frameTimeInSec = 0;
};

#endif
