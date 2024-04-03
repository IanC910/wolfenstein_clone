
#include "Player.h"

float Player::getAngle() {
	return angle;
}

int Player::getHealth() {
	return health;
}

bool Player::getIsShooting() {
	return isShooting;
}

void Player::setAngle(float angle) {
	if(angle < 0) {
		angle += 2 * M_PI;
	}
	else if(angle > 2 * M_PI) {
		angle -= 2 * M_PI;
	}
	this->angle = angle;
}

void Player::setHealth(int health) {
	this->health = health;
}

void Player::setIsShooting(bool isShooting) {
	this->isShooting = isShooting;
}
