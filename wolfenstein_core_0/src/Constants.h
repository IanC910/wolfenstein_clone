
#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <math.h>

#include "xparameters.h"

#include "ValidAckInterface.h"



// Timing
const int CPU_FREQ_Hz 		= XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
const int CLOCKS_PER_S 		= CPU_FREQ_Hz;
const int CLOCKS_PER_MS 	= CLOCKS_PER_S / 1000;
const int CLOCKS_PER_US 	= CLOCKS_PER_MS / 1000;



// Screen Params
const int SCREEN_WIDTH 			= 640;
const int SCREEN_HEIGHT 		= 480;
const int SCREEN_SIZE 			= SCREEN_WIDTH * SCREEN_HEIGHT; // 307 200 = 0x4 B000
const int SCREEN_SIZE_BYTES 	= SCREEN_SIZE * sizeof(int); // 1 228 800 = 0x12 C000


// Rendering params
const int RESOLUTION_DOWN_SCALE_H 	= 8;
const int RESOLUTION_DOWN_SCALE_V	= 1; // Does nothing so far
const int PIXEL_WIDTHS_PER_RAY 		= RESOLUTION_DOWN_SCALE_H;
const int NUM_RAYS 					= SCREEN_WIDTH / PIXEL_WIDTHS_PER_RAY;
const float RAY_DISTANCE_INCREMENT 	= 0.1;



// Addresses
int* const CORE_0_BASE_ADDR							= (int*)0x00100000;
int* const CORE_1_BASE_ADDR							= (int*)0x10080000;

int* const VGA_IMAGE_BUFFER_0 						= (int*)					0x00900000; // size: SCREEN_SIZE_BYTES
int* const INTERMEDIATE_IMAGE_BUFFER 				= (int*)					0x00A2C000; // size: SCREEN_SIZE_BYTES
volatile validAckInterface_t* const INTERFACE_PTR	= (validAckInterface_t*)	0x00B58000; // size: 2 (align by > 4 bytes)
float* const DISTANCE_ARRAY_0 						= (float*)					0x00B58010; // size: NUM_RAYS * sizeof(float)
float* const DISTANCE_ARRAY_1						= (float*)					0x00B58A10; // size: NUM_RAYS * sizeof(float)
int* const WALL_START_ROW_ARRAY						= (int*)					0x00B59410; // size: NUM_RAYS * sizeof(int)
int* const CEILING_BUFFER							= (int*)					0x00B59550; // size: SCREEN_SIZE_BYTES / 2
int* const FLOOR_BUFFER								= (int*)					0x00BEF550; // size: SCREEN_SIZE_BYTES / 2
int* const PLAYER_HEALTH							= (int*)					0x00C85550; // size: sizeof(int)

// Game Asset Addresses
int* const MAIN_MENU_BACKGROUND_IMAGE				= (int*)					0x00D00000; // size: SCREEN_SIZE_BYTES
int* const GUNSHOT_SOUND							= (int*)					0x00E2C000; // size: 12288



// Debug params
const bool DO_USE_JOYSTICKS = false;
const bool DO_PRINT_FRAME_TIME = true;


// Gameplay params
const int NUM_LEVELS = 1;
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;
const int MAX_PLAYER_HEALTH = 100;
const float MAX_PLAYER_TURN_SPEED_RAD_PER_SEC = 1.5;
const float MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC = 1.5;

#endif
