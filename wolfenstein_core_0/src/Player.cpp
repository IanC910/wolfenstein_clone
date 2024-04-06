
#include "Player.h"
#include "Constants.h"

float Player::getAngle() {
	return angle;
}

int Player::getHealth() {
	return health;
}

int Player::getAmmo() {
	return ammo;
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
	if(health > MAX_PLAYER_HEALTH) {
		this->health = MAX_PLAYER_HEALTH;
	}
	else {
		this->health = health;
	}
}

void Player::setAmmo(int ammo) {
	if(ammo > MAX_PLAYER_AMMO) {
		this->ammo = MAX_PLAYER_AMMO;
	}
	else {
		this->ammo = ammo;
	}
}

void Player::setIsShooting(bool isShooting) {
	this->isShooting = isShooting;
}
