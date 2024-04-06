
#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <math.h>

#include "xparameters.h"
#include "xtime_l.h"

#include "ValidAckInterface.h"



// Timing
const int CPU_FREQ_Hz 		= XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ;
const int CPU_FREQ_kHz		= CPU_FREQ_Hz / 1000;
const int CPU_FREQ_MHz		= CPU_FREQ_kHz / 1000;

const int DOUBLE_CYCLES_PER_S = COUNTS_PER_SECOND;



// Screen Params
const int SCREEN_WIDTH 			= 640;
const int SCREEN_HEIGHT 		= 480;
const int SCREEN_SIZE 			= SCREEN_WIDTH * SCREEN_HEIGHT; // 307 200 = 0x4 B000
const int SCREEN_SIZE_BYTES 	= SCREEN_SIZE * sizeof(int); // 1 228 800 = 0x12 C000


// Rendering params
const int GRANULARITY_H 			= 8;
const int GRANULARITY_V				= 2;
const int PIXEL_WIDTHS_PER_RAY 		= GRANULARITY_H;
const int MAX_NUM_RAYS				= SCREEN_WIDTH;
const int NUM_RAYS 					= MAX_NUM_RAYS / PIXEL_WIDTHS_PER_RAY;
const float RAY_DISTANCE_INCREMENT 	= 0.1;
const float MIN_SPRITE_SCALE_FACTOR	= 1.0;


// Debug params
const bool DO_USE_CONTROLLER = false;
const bool DO_PRINT_FRAME_TIME = true;

// Sound player params
const int BYTES_PER_SAMPLE = 2;
const int SAMPLE_PERIOD_US = 45;
const int NUM_SOUND_SLOTS = 2;


// Gameplay params
const float VERTICAL_FOV	= M_PI * 0.4;
const float HORIZONTAL_FOV	= M_PI * 0.5;

const int MAX_PLAYER_HEALTH = 100;
const int MAX_PLAYER_AMMO = 100;
const int PLAYER_DAMAGE = 25;
const int PLAYER_AMMO_USE_PER_SHOT = 2;
const int PLAYER_STARTING_AMMO = 50;
const float MAX_PLAYER_TURN_SPEED_RAD_PER_SEC = 1.5;
const float MAX_PLAYER_MOVE_SPEED_TILES_PER_SEC = 1.5;

const int MAX_NUM_ENEMIES = 10;
const int MAX_NUM_HEALTH_DROPS = 4 + MAX_NUM_ENEMIES;
const int MAX_NUM_AMMO_DROPS = 4 + MAX_NUM_ENEMIES;
const int MAX_ENEMY_HEALTH = 100;
const int ENEMY_DAMAGE = 10;
const float MAX_ENEMY_MOVE_SPEED_TILES_PER_SEC = 0.5;
const float ENEMY_SHOT_DELAY_S = 1.0;

const float DROP_PICKUP_RADIUS = 0.75;
const int HEALTH_DROP_AMOUNT_HEALED = 25;
const int AMMO_DROP_AMOUNT_GAINED = 20;

#endif
