
#ifndef WOLFENSTEIN_CORE_0_H
#define WOLFENSTEIN_CORE_0_H

#include "Player.h"
#include "Level.h"


class WolfensteinCore0App {

public:
	WolfensteinCore0App();

	void runCore0App();

private:
	void clearMem();
	void startCore1();
	void gameLogicPerFrame();
	void castRays();
	void transferDistanceArray();

	Player player;
	Level* currentLevel = nullptr;
};

#endif
