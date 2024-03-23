
#ifndef PLAYER_H
#define PLAYER_H

#include <math.h>

#include "ObjectWithPosition.h"

typedef struct {
	int health;
	float positionX;
	float positionY;
	float angle;
} playerData_t;

class Player : public ObjectWithPosition {

public:
	float getAngle();
	int getHealth();

	void setAngle(float angle);
	void setHealth(int health);

	playerData_t getPlayerData();

private:
	float angle = 0;
	int health = 0;
};

#endif
