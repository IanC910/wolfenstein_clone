
#ifndef ENEMY_H
#define ENEMY_H

#include "ObjectWithPosition.h"

class Enemy : public ObjectWithPosition {
public:
	int getHealth();
	void setHealth(int health);

	float getTimeSinceLastShot();
	void setTimeSinceLastShot(float time);

    bool hasSeenPlayer();
    void setSeenPlayer();

    void reset();
    void initialize();

private:
	int health = 0;
	float timeSinceLastShot = 0;
	bool seenPlayer = false;
};

#endif
