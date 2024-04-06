#ifndef WOLFENSTEIN_CORE_1_H
#define WOLFENSTEIN_CORE_1_H

#include "../../wolfenstein_core_0/src/ObjectWithPosition.h"
#include "../../wolfenstein_core_0/src/Player.h"
#include "../../wolfenstein_core_0/src/Sprite.h"

class WolfensteinCore1App {

public:
	WolfensteinCore1App();

	void runCore1App();

private:
	void receiveSharedDataPacket();
	void drawEnvironment();
	void drawSpriteSimple(Sprite* sprite, int rowOffset, int colOffset);
	void drawObjectWithPosition(
		ObjectWithPosition* object,
		Sprite* sprite,
		int drawHeightOffset,
		int drawColOffset
	);
	void drawEnemies();
	void drawDrops();
	int getScreenRowOfCeilingAtDistance(float distance);
	int getColourFromGradient(const int* gradient, const int gradientLength, float distance);
	void fillNonRectangularCeilingAndFloor(int rowAlreadyDrawn);
	void drawHUD();
	void updateScreen();
};

#endif
