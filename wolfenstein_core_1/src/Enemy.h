#ifndef ENEMY_H
#define ENEMY_H

class Enemy {

public:
	float getPositionX();
	float getPositionY();

	void setPositionX(float x);
	void setPositionY(float y);

private:
	float positionX = 0;
	float positionY = 0;
};

#endif
