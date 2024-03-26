
#ifndef PLAYER_H
#define PLAYER_H

#include <math.h>

#include "ObjectWithPosition.h"

typedef struct {
	int health;
	float positionX;
	float positionY;
	float angle;
	bool isShooting;
} playerData_t;

class Player : public ObjectWithPosition {

public:
	float getAngle();
	void setAngle(float angle);

	int getHealth();
	void setHealth(int health);

	bool getIsShooting();
	void setIsShooting(bool isShooting);

	playerData_t getPlayerData();

private:
	float angle = 0;
	int health = 0;
	bool isShooting = false;
};

#endif
