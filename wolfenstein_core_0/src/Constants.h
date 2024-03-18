
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
const int SCREEN_SIZE 			= SCREEN_WIDTH * SCREEN_HEIGHT;
const int SCREEN_SIZE_BYTES 	= SCREEN_SIZE * sizeof(int);



// Rendering params
const int RESOLUTION_DOWN_SCALE_H 	= 8;
const int RESOLUTION_DOWN_SCALE_V	= 1; // Does nothing so far
const int PIXEL_WIDTHS_PER_RAY 		= RESOLUTION_DOWN_SCALE_H;
const int NUM_RAYS 					= SCREEN_WIDTH / PIXEL_WIDTHS_PER_RAY;
const float RAY_DISTANCE_INCREMENT 	= 0.1;



// Addresses
int* const CORE_0_BASE_ADDR							= (int*)0x00100000;
int* const CORE_1_BASE_ADDR							= (int*)0x10080000;

int* const VGA_IMAGE_BUFFER_0 						= (int*)0x00900000;
int* const INTERMEDIATE_IMAGE_BUFFER 				= (int*)(VGA_IMAGE_BUFFER_0 + SCREEN_SIZE);
volatile validAckInterface_t* const INTERFACE_PTR	= (validAckInterface_t*)(INTERMEDIATE_IMAGE_BUFFER + SCREEN_SIZE);
float* const DISTANCE_ARRAY_0 						= (float*)(INTERFACE_PTR + 2); // Only need 1 interface but must align float pointers by 4 bytes, and the interface is only 2 bytes
float* const DISTANCE_ARRAY_1						= (float*)(DISTANCE_ARRAY_0 + NUM_RAYS);
int* const WALL_START_ROW_ARRAY						= (int*)(DISTANCE_ARRAY_1 + NUM_RAYS);
int* const CEILING_BUFFER							= (int*)(WALL_START_ROW_ARRAY + NUM_RAYS);
int* const FLOOR_BUFFER								= (int*)(CEILING_BUFFER + SCREEN_SIZE / 2);



// Gameplay params
const int NUM_LEVELS = 1;
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;
const float MAX_PLAYER_ROTATION_SPEED_RAD_PER_SEC = 1.5;
const float MAX_PLAYER_MOVEMENT_SPEED_TILES_PER_SEC = 1.5;

#endif
