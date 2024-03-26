
#ifndef ENEMY_H
#define ENEMY_H

#include "ObjectWithPosition.h"

typedef struct {
	int health;
	float positionX;
	float positionY;
} enemyData_t;

class Enemy : public ObjectWithPosition {
public:
	int getHealth();
	void setHealth(int health);

	float getTimeSinceLastShot();
	void setTimeSinceLastShot(float time);

	bool hasSeenPlayer();
	void setSeenPlayer();

    float getTimeSinceLastShot();
    void setTimeSinceLastShot(float time);

    bool hasSeenPlayer();
    void setSeenPlayer();

    void resetEnemy();

	enemyData_t getEnemyData();

private:
	int health = 0;
	float timeSinceLastShot = 1.0;
	bool seenPlayer = false;
};

#endif
