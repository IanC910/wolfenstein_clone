
#include "LevelBank.h"

// Level 0
const int LEVEL_0_WIDTH = 10;
const int LEVEL_0_HEIGHT = 10;
const int LEVEL_0_NUM_ENEMIES = 3;
const int LEVEL_0_NUM_HEALTH_DROPS = 1;
const int LEVEL_0_NUM_AMMO_DROPS = 1;
const float LEVEL_0_STARTING_X = 5.0;
const float LEVEL_0_STARTING_Y = 2.0;
float LEVEL_0_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{4.5, 4.5},
	{8.5, 8.5},
	{3.5, 8.0}
};
float LEVEL_0_HEALTH_DROP_POSITIONS[MAX_NUM_HEALTH_DROPS][2] = {
	{3.5, 9.0}
};
float LEVEL_0_AMMO_DROP_POSITIONS[MAX_NUM_AMMO_DROPS][2] = {
	{8.5, 7.5}
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
static Level level0(
	LEVEL_0_WIDTH,
	LEVEL_0_HEIGHT,
	LEVEL_0_NUM_ENEMIES,
	LEVEL_0_NUM_HEALTH_DROPS,
	LEVEL_0_NUM_AMMO_DROPS,
	LEVEL_0_STARTING_X,
	LEVEL_0_STARTING_Y,
	LEVEL_0_ENEMY_POSITIONS,
	LEVEL_0_HEALTH_DROP_POSITIONS,
	LEVEL_0_AMMO_DROP_POSITIONS,
	LEVEL_0_LAYOUT
);



// Level 1
const int LEVEL_1_WIDTH = 15;
const int LEVEL_1_HEIGHT = 15;
const int LEVEL_1_NUM_ENEMIES = 9;
const int LEVEL_1_NUM_HEALTH_DROPS = 3;
const int LEVEL_1_NUM_AMMO_DROPS = 3;
const float LEVEL_1_STARTING_X = 7.5;
const float LEVEL_1_STARTING_Y = 0.5;
float LEVEL_1_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{0.5, 3.5},
	{13.5, 6.0},
	{6.5, 7.5},
	{4.5, 7.5},
	{6.5, 9.5},
	{14.0, 12.0},
	{11.5, 13.5},
	{0.5, 11.5},
	{8.5, 13.5}
};
float LEVEL_1_HEALTH_DROP_POSITIONS[MAX_NUM_HEALTH_DROPS][2] = {
	{0.5, 0.5},
	{2.5, 13.5},
	{14.5, 11.5}
};
float LEVEL_1_AMMO_DROP_POSITIONS[MAX_NUM_AMMO_DROPS][2] = {
	{14.5, 0.5},
	{6.5, 5.5},
	{14.5, 14.5},
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
static Level level1(
	LEVEL_1_WIDTH,
	LEVEL_1_HEIGHT,
	LEVEL_1_NUM_ENEMIES,
	LEVEL_1_NUM_HEALTH_DROPS,
	LEVEL_1_NUM_AMMO_DROPS,
	LEVEL_1_STARTING_X,
	LEVEL_1_STARTING_Y,
	LEVEL_1_ENEMY_POSITIONS,
	LEVEL_1_HEALTH_DROP_POSITIONS,
	LEVEL_1_AMMO_DROP_POSITIONS,
	LEVEL_1_LAYOUT
);



// Level 2
const int LEVEL_2_WIDTH = 18;
const int LEVEL_2_HEIGHT = 18;
const int LEVEL_2_NUM_ENEMIES = 15; //11
const int LEVEL_2_NUM_HEALTH_DROPS = 5;
const int LEVEL_2_NUM_AMMO_DROPS = 6;
const float LEVEL_2_STARTING_X = 8.5;
const float LEVEL_2_STARTING_Y = 0.5;
float LEVEL_2_ENEMY_POSITIONS[MAX_NUM_ENEMIES][2] = {
	{0.5, 3.5},
	{11.5, 4.5},
	{15.5, 5.5},
	{0.5, 6.5},
	{0.5, 7.5},
	{0.5, 11.0},
	{2.5, 13.5},
	{6.5, 13.5},
	{15.5, 3.5},
	{9.5, 6.5},
	{6.5, 9.5},
	{17.5, 12.5},
	{17.5, 14.5},
	{11.5, 15.5},
	{8.5, 17.5}
};
float LEVEL_2_HEALTH_DROP_POSITIONS[MAX_NUM_HEALTH_DROPS][2] = {
	{0.5, 0.5},
	{0.5, 7.0},
	{0.5, 17.5},
	{17.5, 8.5},
	{17.5, 12.5},
};
float LEVEL_2_AMMO_DROP_POSITIONS[MAX_NUM_AMMO_DROPS][2] = {
	{14.5, 0.5},
	{2.5, 8.5},
	{14.5, 14.5},
	{10.5, 15.5},
	{7.5, 17.5},
	{4.5, 11.5}
};
char LEVEL_2_LAYOUT[LEVEL_2_WIDTH * LEVEL_2_HEIGHT + 1] =
	"                  "
	"    ##  ######    "
	"## ###   #     ###"
	"## ###   #####    "
	"     #   ##    ## "
	" ### ###       ## "
	" ###     ####     "
	"   ###   ##    ###"
	"## ###         ###"
	"## ########       "
	"              ####"
	"     ####     ####"
	"###   #####     ##"
	"###   ##       ###"
	"          ###   ##"
	"#######   ###   ##"
	"                  "
	"                  "
;
static Level level2(
	LEVEL_2_WIDTH,
	LEVEL_2_HEIGHT,
	LEVEL_2_NUM_ENEMIES,
	LEVEL_2_NUM_HEALTH_DROPS,
	LEVEL_2_NUM_AMMO_DROPS,
	LEVEL_2_STARTING_X,
	LEVEL_2_STARTING_Y,
	LEVEL_2_ENEMY_POSITIONS,
	LEVEL_2_HEALTH_DROP_POSITIONS,
	LEVEL_2_AMMO_DROP_POSITIONS,
	LEVEL_2_LAYOUT
);

static Level* levels[NUM_LEVELS] = {
	&level0,
	&level1,
	&level2
};

Level* LevelBank_getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
