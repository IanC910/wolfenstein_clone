
#ifndef LEVEL_H
#define LEVEL_H

#include "Constants.h"

class Level {
public:
	Level(int width, int height, int numEnemies, float enemyPositions[MAX_NUM_ENEMIES][2], char* layout);

	int getWidth();
	int getHeight();
	int getNumEnemies();
	float getEnemyX(int num);
	float getEnemyY(int num);
	char getBlockAtArrayCoord(int row, int col); // (0, 0) at top left
	char getBlockAtWorldCoord(float x, float y); // (0, 0) at bottom left

private:
	int width;
	int height;
	int numEnemies;
	char *layout;
	float enemyPositions[MAX_NUM_ENEMIES][2];
};

#endif
