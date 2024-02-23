
#include "Player.h"

float Player::getAngle() {
	return angle;
}

float Player::getPositionX() {
	return positionX;
}

float Player::getPositionY() {
	return positionY;
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

void Player::setPositionX(float x) {
	positionX = x;
}

void Player::setPositionY(float y) {
	positionY = y;
}
