
#ifndef SHARED_DATA_PACKET_H
#define SHARED_DATA_PACKET_H

#include "Constants.h"
#include "Player.h"
#include "Enemy.h"
#include "Drop.h"

typedef struct {
	float distanceArray[NUM_RAYS];
	Player player;
	Enemy enemyArray[MAX_NUM_ENEMIES];
	dropData_t healthDrops[MAX_NUM_HEALTH_DROPS];
} sharedDataPacket_t;

#endif
