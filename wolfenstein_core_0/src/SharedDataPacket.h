
#ifndef SHARED_DATA_PACKET_H
#define SHARED_DATA_PACKET_H

#include "Constants.h"
#include "Player.h"

typedef struct {
	float distanceArray[NUM_RAYS];
	playerData_t playerData;
} sharedDataPacket_t;

#endif
