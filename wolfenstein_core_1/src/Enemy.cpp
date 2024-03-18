
#include "Enemy.h"

float Enemy::getPositionX() {
	return positionX;
}

float Enemy::getPositionY() {
	return positionY;
}

void Enemy::setPositionX(float x) {
	positionX = x;
}

void Enemy::setPositionY(float y) {
	positionY = y;
}

void Enemy::setPositionXY(float x, float y) {
	positionX = x;
	positionY = y;
}
