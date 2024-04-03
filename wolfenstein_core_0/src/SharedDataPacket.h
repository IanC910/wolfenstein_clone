
#ifndef SHARED_DATA_PACKET_H
#define SHARED_DATA_PACKET_H

#include "Constants.h"
#include "Player.h"
#include "Enemy.h"

typedef struct {
	float distanceArray[NUM_RAYS];
	Player player;
	Enemy enemyArray[MAX_NUM_ENEMIES];
} sharedDataPacket_t;

#endif
