
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
const int MAX_NUM_RAYS				= SCREEN_WIDTH;
const int NUM_RAYS 					= MAX_NUM_RAYS / PIXEL_WIDTHS_PER_RAY;
const float RAY_DISTANCE_INCREMENT 	= 0.1;


// Debug params
const bool DO_USE_CONTROLLER = false;
const bool DO_PRINT_FRAME_TIME = false;


// Gameplay params
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;

const int MAX_PLAYER_HEALTH = 100;
const int PLAYER_DAMAGE = 50;
const float MAX_PLAYER_TURN_SPEED_RAD_PER_SEC = 1.5;
const float MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC = 1.5;

const int MAX_NUM_ENEMIES = 10;
const int MAX_NUM_HEALTH_DROPS = 4;
const int MAX_ENEMY_HEALTH = 100;
const float MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC = 0.5;
const int ENEMY_DAMAGE_PER_SHOT = 2;
const float ENEMY_SHOT_DELAY = 1.0;

// Enemy Sprite Params
const int ENEMY_SPRITE_WIDTH = 112;
const int ENEMY_SPRITE_HEIGHT = 248;

const int HEALTH_SPRITE_WIDTH = 92;
const int HEALTH_SPRITE_HEIGHT = 68;

#endif
