#include "Enemy.h"

int Enemy::getHealth() {
	return health;
}

void Enemy::setHealth(int health) {
	this->health = health;
}

float Enemy::getTimeSinceLastShot() {
	return timeSinceLastShot;
}

void Enemy::setTimeSinceLastShot(float time) {
	timeSinceLastShot = time;
}

bool Enemy::hasSeenPlayer() {
	return seenPlayer;
}

void Enemy::setSeenPlayer() {
	seenPlayer = true;
}

enemyData_t Enemy::getEnemyData() {
	enemyData_t enemyData;

	enemyData.health = health;
	enemyData.positionX = positionX;
	enemyData.positionY = positionY;

	return enemyData;
}
