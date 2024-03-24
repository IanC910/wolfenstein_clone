#include "Enemy.h"

enemyData_t Enemy::getEnemyData() {
	enemyData_t enemyData;

	enemyData.health = health;
	enemyData.positionX = positionX;
	enemyData.positionY = positionY;

	return enemyData;
}
