
#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <math.h>

#include "ValidAckInterface.h"

// Timing
const int CPU_FREQ 			= 200000000; // 200 MHz
const int CLOCKS_PER_S 		= CPU_FREQ;
const int CLOCKS_PER_MS 	= CLOCKS_PER_S / 1000;
const int CLOCKS_PER_US 	= CLOCKS_PER_MS / 1000;

// Screen Params
const int SCREEN_WIDTH 			= 640;
const int SCREEN_HEIGHT 		= 480;
const int SCREEN_SIZE 			= SCREEN_WIDTH * SCREEN_HEIGHT;
const int SCREEN_SIZE_BYTES 	= SCREEN_SIZE * sizeof(int);

// Rendering params
const int RESOLUTION_DOWN_SCALE 	= 8;
const int PIXEL_WIDTHS_PER_RAY 		= RESOLUTION_DOWN_SCALE;
const int NUM_RAYS 					= SCREEN_WIDTH / PIXEL_WIDTHS_PER_RAY;
const float RAY_DISTANCE_INCREMENT 	= 0.1;

// Addresses
int* const VGA_IMAGE_BUFFER_0 						= (int*)0x00900000;
int* const INTERMEDIATE_IMAGE_BUFFER 				= (int*)(VGA_IMAGE_BUFFER_0 + SCREEN_SIZE);
volatile validAckInterface_t* const INTERFACE_PTR	= (validAckInterface_t*)(INTERMEDIATE_IMAGE_BUFFER + SCREEN_SIZE);
float* const DISTANCE_ARRAY_0 						= (float*)(0xFFFF0000);
float* const DISTANCE_ARRAY_1						= (float*)(DISTANCE_ARRAY_0 + NUM_RAYS);
int* const CORE_1_BASE_ADDR							= (int*)0x10080000;

// Gameplay params
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;

#endif
