
#ifndef ENEMY_H
#define ENEMY_H

#include "ObjectWithPosition.h"

class Enemy : public ObjectWithPosition {
public:
	// Returns enemy's health
	int getHealth();

	// Sets the enemy's health
	void setHealth(int health);

	// Returns the time since last shot by enemy
	float getTimeSinceLastShotS();

	// Sets the time since last shot by enemy
	void setTimeSinceLastShotS(float timeS);

	// Returns the seenPlayer status of the enemy
    bool hasSeenPlayer();

    // Sets the seenPlayer status of the enemy to true
    void setSeenPlayer();

    // Deactivates enemy: sets enemy health to 0
    void reset();

    // Activates enemy: sets enemy health to 100, and timeSinceLastShot to 1.0 so that enemy is ready to shoot
    void initialize();

private:
	int health = 0;
	float timeSinceLastShotS = 0;
	bool seenPlayer = false;
};

#endif
