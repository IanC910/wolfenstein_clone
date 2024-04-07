
#include <math.h>

#include "Level.h"

Level::Level(
	int width,
	int height,
	int numEnemies,
	int numHealthDrops,
	int numAmmoDrops,
	float startingX,
	float startingY,
	float enemyPositions[MAX_NUM_ENEMIES][2],
	float healthDropPositions[MAX_NUM_HEALTH_DROPS][2],
	float ammoDropPositions[MAX_NUM_AMMO_DROPS][2],
	char* layout
) {
	this->width = width;
	this->height = height;
	this->startingX = startingX;
	this->startingY = startingY;
	this->numEnemies = numEnemies;
	this->numHealthDrops = numHealthDrops;
	this->numAmmoDrops = numAmmoDrops;
	this->layout = layout;

	for(int i = 0; i < MAX_NUM_ENEMIES; i++) {
		this->enemyPositions[i][0] = enemyPositions[i][0];
		this->enemyPositions[i][1] = enemyPositions[i][1];
	}
	for(int i = 0; i < MAX_NUM_HEALTH_DROPS; i++) {
		this->healthDropPositions[i][0] = healthDropPositions[i][0];
		this->healthDropPositions[i][1] = healthDropPositions[i][1];
	}
	for(int i = 0; i < MAX_NUM_AMMO_DROPS; i++) {
		this->ammoDropPositions[i][0] = ammoDropPositions[i][0];
		this->ammoDropPositions[i][1] = ammoDropPositions[i][1];
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

int Level::getNumHealthDrops() {
	return numHealthDrops;
}

int Level::getNumAmmoDrops() {
	return numAmmoDrops;
}

float Level::getEnemyX(int num) {
	return enemyPositions[num][0];
}

float Level::getEnemyY(int num) {
	return enemyPositions[num][1];
}

float Level::getHealthDropX(int num) {
	return healthDropPositions[num][0];
}

float Level::getHealthDropY(int num) {
	return healthDropPositions[num][1];
}

float Level::getAmmoDropX(int num) {
	return ammoDropPositions[num][0];
}

float Level::getAmmoDropY(int num) {
	return ammoDropPositions[num][1];
}

float Level::getStartingX() {
	return startingX;
}

float Level::getStartingY() {
	return startingY;
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
