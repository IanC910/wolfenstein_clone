
#include <math.h>

#include "Level.h"

Level::Level(int width, int height, int numEnemies, float enemyPositions[MAX_NUM_ENEMIES][2], char* layout) {
	this->width = width;
	this->height = height;
	this->numEnemies = numEnemies;
	this->layout = layout;
	for(int i = 0; i < MAX_NUM_ENEMIES; i++) {
		this->enemyPositions[i][0] = enemyPositions[i][0];
		this->enemyPositions[i][1] = enemyPositions[i][1];
	}
}

int Level::getWidth() {
	return width;
}

int Level::getHeight() {
	return height;
}

int Level::getNumEnemies() {
	return numEnemies;
}

float Level::getEnemyX(int num) {
	return enemyPositions[num][0];
}

float Level::getEnemyY(int num) {
	return enemyPositions[num][1];
}

char Level::getBlockAtArrayCoord(int row, int col) {
	if(row < 0 || row >= height || col < 0 || col >= width) {
		return '#';
	}
	return layout[row * height + col];
}

char Level::getBlockAtWorldCoord(float x, float y) {
	int col = (int)floor(x);
	int row = (int)(height - 1 - floor(y));
	return getBlockAtArrayCoord(row, col);
}

// Levels
const int LEVEL_0_WIDTH = 10;
const int LEVEL_0_HEIGHT = 10;
const int LEVEL_0_ENEMIES = 3;
float LEVEL_0_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{4.5, 4.5},
	{8.5, 8.5},
	{3.5, 8.0}
};
char LEVEL_0_LAYOUT[LEVEL_0_WIDTH * LEVEL_0_HEIGHT + 1] =
	"##        "
	"##    ##  "
	"      ##  "
	"          "
	"          "
	"          "
	"          "
	"          "
	"##        "
	"##        "
;

Level level0(LEVEL_0_WIDTH, LEVEL_0_HEIGHT, LEVEL_0_ENEMIES, LEVEL_0_ENEMY_POSITIONS, LEVEL_0_LAYOUT);

Level* levels[NUM_LEVELS] = {
	&level0
};

Level* getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
