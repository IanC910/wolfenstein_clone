#include "Enemy.h"

enemyData_t Enemy::getEnemyData() {
	enemyData_t enemyData;

	enemyData.health = health;
	enemyData.positionX = positionX;
	enemyData.positionY = positionY;

	return enemyData;
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

void Enemy::resetEnemy() {
	health = 100;
	timeSinceLastShot = 1.0;
	seenPlayer = false;
}

