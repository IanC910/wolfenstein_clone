
#ifndef ADDRESSES_H
#define ADDRESSES_H

#include "SharedDataPacket.h"
#include "ValidAckInterface.h"

int* const CORE_0_BASE_ADDR							= (int*)					0x00100000;
int* const CORE_1_BASE_ADDR							= (int*)					0x10080000;

int* const VGA_IMAGE_BUFFER_0 						= (int*)					0x00900000; // size: SCREEN_SIZE_BYTES = 0x12C000
int* const INTERMEDIATE_IMAGE_BUFFER 				= (int*)					0x00A2C000; // size: SCREEN_SIZE_BYTES = 0x12C000
volatile validAckInterface_t* const INTERFACE_PTR	= (validAckInterface_t*)	0x00B58000; // size: 2 (align by > 4 bytes) = 0x4
int* const WALL_START_ROW_ARRAY						= (int*)					0x00B58004; // size: MAX_NUM_RAYS * sizeof(int) = 640 * 4 = 0xA00
int* const CEILING_BUFFER							= (int*)					0x00B58A04; // size: SCREEN_SIZE_BYTES / 2 = 0x96000
int* const FLOOR_BUFFER								= (int*)					0x00BEEA04; // size: SCREEN_SIZE_BYTES / 2 = 0x96000
sharedDataPacket_t* const SHARED_DATA_PACKETS		= (sharedDataPacket_t*)		0x00C84A04; // size: 2 * sizeof(sharedDataPacket_t)

// Game Asset Addresses
int* const MAIN_MENU_BACKGROUND_SPRITE				= (int*)					0x00D00000; // size: SCREEN_SIZE_BYTES = 0x12C000
int* const GUNSHOT_SOUND							= (int*)					0x00E2C000; // size: 16384 = 0x4000
int* const FIRST_PERSON_GUN_SPRITE					= (int*)					0x00E30000; // size: 16384 = 0x4000
int* const MUZZLE_FLASH_SPRITE						= (int*)					0x00E34000; // size: 16384 = 0x4000
int* const ENEMY_SPRITE								= (int*)					0x00E38000; // size: 32768 = 0x8000
int* const HEALTH_DROP_SPRITE						= (int*)					0x00E40000; // size: 16384 = 0x4000
int* const SONG_SOUND								= (int*)					0x00E44000; // size: 512000 = 0x7D000

#endif
