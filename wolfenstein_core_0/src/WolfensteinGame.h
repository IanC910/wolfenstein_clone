
#ifndef WOLFENSTEIN_GAME_H
#define WOLFENSTEIN_GAME_H

#include "Player.h"
#include "Level.h"

class WolfensteinGame {

public:
	WolfensteinGame();
	~WolfensteinGame();

	void playGame();

private:
	void rayCast();
	void drawEnvironment();
	void updateScreen();

	Player player;
	Level* currentLevel;
};

#endif
