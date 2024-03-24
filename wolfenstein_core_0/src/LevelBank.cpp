
#include "LevelBank.h"

const int LEVEL_0_WIDTH = 10;
const int LEVEL_0_HEIGHT = 10;
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

Level level0(LEVEL_0_WIDTH, LEVEL_0_HEIGHT, LEVEL_0_LAYOUT);

static Level* levels[NUM_LEVELS] = {
	&level0
};


Level* getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
