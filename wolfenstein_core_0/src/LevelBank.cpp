
#include "LevelBank.h"

//Level 0
const int LEVEL_0_WIDTH = 10;
const int LEVEL_0_HEIGHT = 10;
const int LEVEL_0_NUM_ENEMIES = 3;
const float LEVEL_0_STARTING_X = 5.0;
const float LEVEL_0_STARTING_Y = 2.0;
float LEVEL_0_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{4.5, 4.5},
	{8.5, 8.5},
	{3.5, 8.0}
};
char LEVEL_0_LAYOUT[LEVEL_0_WIDTH * LEVEL_0_HEIGHT + 1] =
	"##        "
	"##    ##  "
	"      ##  "
	"          "
	"          "
	"          "
	"          "
	"          "
	"##        "
	"##        "
;

Level level0(LEVEL_0_WIDTH, LEVEL_0_HEIGHT, LEVEL_0_NUM_ENEMIES, LEVEL_0_STARTING_X, LEVEL_0_STARTING_Y, LEVEL_0_ENEMY_POSITIONS, LEVEL_0_LAYOUT);

//Level 1
const int LEVEL_1_WIDTH = 15;
const int LEVEL_1_HEIGHT = 15;
const int LEVEL_1_NUM_ENEMIES = 9;
const float LEVEL_1_STARTING_X = 7.5;
const float LEVEL_1_STARTING_Y = 1.0;
float LEVEL_1_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{0.5, 3.5},
	{14.5, 5.5},
	{6.5, 7.5},
	{4.5, 7.5},
	{6.5, 9.5},
	{13.5, 11.5},
	{11.5, 13.5},
	{0.5, 11.5},
	{8.5, 13.5}
};
char LEVEL_1_LAYOUT[LEVEL_1_WIDTH * LEVEL_1_HEIGHT + 1] =
	"######   ##    "
	"##       #     "
	"###     #####  "
	"    ### ###    "
	"    ### ###  ##"
	"               "
	"   #########   "
	"     #         "
	"   ### #####   "
	"#      ##      "
	"#  ######   ###"
	"      ###   ###"
	"####  ###  ####"
	"               "
	"               "
;

Level level1(LEVEL_1_WIDTH, LEVEL_1_HEIGHT, LEVEL_1_NUM_ENEMIES, LEVEL_1_STARTING_X, LEVEL_1_STARTING_Y, LEVEL_1_ENEMY_POSITIONS, LEVEL_1_LAYOUT);


static Level* levels[NUM_LEVELS] = {
	&level0,
	&level1
};


Level* getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
