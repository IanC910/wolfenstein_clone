
#ifndef PLAYER_H
#define PLAYER_H

#include <math.h>

class Player {

public:
	float getAngle();
	float getPositionX();
	float getPositionY();

	void setAngle(float angle);
	void setPositionX(float x);
	void setPositionY(float y);

private:
	float angle = 0;
	float positionX = 0;
	float positionY = 0;
};


#endif
