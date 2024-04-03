
#ifndef SHARED_DATA_PACKET_H
#define SHARED_DATA_PACKET_H

#include "Constants.h"
#include "Player.h"
#include "Enemy.h"
#include "Drop.h"

typedef struct {
	float distanceArray[NUM_RAYS];
	playerData_t playerData;
	enemyData_t enemyDataArray[MAX_NUM_ENEMIES];
	dropData_t ammo;
} sharedDataPacket_t;

#endif
