
#include "Constants.h"

#include "Enemy.h"

int Enemy::getHealth() {
	return health;
}

void Enemy::setHealth(int health) {
	this->health = health;
}

float Enemy::getTimeSinceLastShotS() {
	return timeSinceLastShotS;
}

void Enemy::setTimeSinceLastShotS(float timeS) {
	timeSinceLastShotS = timeS;
}

bool Enemy::hasSeenPlayer() {
	return seenPlayer;
}

void Enemy::setSeenPlayer() {
	seenPlayer = true;
}

void Enemy::reset() {
	health = 0;
	timeSinceLastShotS = 0;
	seenPlayer = false;
}

void Enemy::initialize() {
	health = MAX_ENEMY_HEALTH;
	timeSinceLastShotS = 1.0;
	seenPlayer = false;
}
