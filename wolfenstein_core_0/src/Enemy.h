
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

		enemyData_t getEnemyData();

	private:
		int health = 0;
};

#endif
