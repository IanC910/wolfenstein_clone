
#include "Constants.h"

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

void Enemy::reset() {
	health = 0;
	timeSinceLastShot = 0;
	seenPlayer = false;
}

void Enemy::initialize() {
	health = MAX_ENEMY_HEALTH;
	timeSinceLastShot = 1.0;
	seenPlayer = false;
}
