
#ifndef PLAYER_H
#define PLAYER_H

#include <math.h>

#include "ObjectWithPosition.h"

class Player : public ObjectWithPosition {

public:
	float getAngle();
	int getHealth();

	void setAngle(float angle);
	void setHealth(int health);

private:
	float angle = 0;
	int health = 0;
};

#endif
