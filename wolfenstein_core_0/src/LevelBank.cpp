
#include "LevelBank.h"

const int LEVEL_0_WIDTH = 10;
const int LEVEL_0_HEIGHT = 10;
const int LEVEL_0_NUM_ENEMIES = 3;
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

Level level0(LEVEL_0_WIDTH, LEVEL_0_HEIGHT, LEVEL_0_NUM_ENEMIES, LEVEL_0_ENEMY_POSITIONS, LEVEL_0_LAYOUT);

static Level* levels[NUM_LEVELS] = {
	&level0
};


Level* getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
