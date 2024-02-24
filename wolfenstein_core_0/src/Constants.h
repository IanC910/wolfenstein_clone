
#ifndef PARAMS_H
#define PARAMS_H

#include <math.h>

const int CPU_FREQ = 200000000; // 200 MHz
const int CLOCKS_PER_S = CPU_FREQ;
const int CLOCKS_PER_MS = CLOCKS_PER_S / 1000;
const int CLOCKS_PER_US = CLOCKS_PER_MS / 1000;

// Screen Params
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;
const int SCREEN_SIZE = SCREEN_WIDTH * SCREEN_HEIGHT;
const int SCREEN_SIZE_BYTES = SCREEN_SIZE * sizeof(int);

// Buffer Addresses
int* const VGA_IMAGE_BUFFER_0 		= (int*)0x00900000;
int* const INTERMEDIATE_BUFFER 		= (int*)0x018D2008;
float* const DISTANCE_ARRAY 		= (float*)(INTERMEDIATE_BUFFER + SCREEN_SIZE);

// Colour Presets
Colour HARD_WOOD_BROWN(8, 6, 4);
Colour CONCRETE_GREY(8, 8, 8);
Colour PALE_GREEN(7, 9, 7);

// Game Visuals
Colour FLOOR_COLOUR 	= CONCRETE_GREY;
Colour CEILING_COLOUR 	= HARD_WOOD_BROWN;
Colour WALL_COLOUR		= PALE_GREEN;

// Gameplay params
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;

// Rendering params
const float RAY_DISTANCE_INCREMENT = 0.2;

#endif
