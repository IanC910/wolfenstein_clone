
#ifndef LEVEL_H
#define LEVEL_H

#include "Constants.h"

class Level {
public:
	Level(int width, int height, int numEnemies, int numHealthDrops, float startingX, float startingY, float enemyPositions[MAX_NUM_ENEMIES][2], float healthDropPositions[MAX_NUM_HEALTH_DROPS][2], char* layout);

	int getWidth();
	int getHeight();
	int getNumEnemies();
	int getNumHealthDrops();
	float getEnemyX(int num);
	float getEnemyY(int num);
	float getHealthDropX(int num);
	float getHealthDropY(int num);
	float getStartingX();
	float getStartingY();
	char getBlockAtArrayCoord(int row, int col); // (0, 0) at top left
	char getBlockAtWorldCoord(float x, float y); // (0, 0) at bottom left

private:
	int width;
	int height;
	int numEnemies;
	int numHealthDrops;
	float startingX;
	float startingY;
	char *layout;
	float enemyPositions[MAX_NUM_ENEMIES][2];
	float healthDropPositions[MAX_NUM_HEALTH_DROPS][2];
};

#endif
