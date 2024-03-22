
#include "Player.h"

float Player::getAngle() {
	return angle;
}

int Player::getHealth() {
	return health;
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

playerData_t Player::getPlayerData() {
	playerData_t playerData;

	playerData.health = health;
	playerData.positionX = positionX;
	playerData.positionY = positionY;
	playerData.angle = angle;

	return playerData;
}
