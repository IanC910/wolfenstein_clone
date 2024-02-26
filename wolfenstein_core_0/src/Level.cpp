
#include <math.h>

#include "Level.h"

Level::Level(int width, int height, char* layout) {
	this->width = width;
	this->height = height;
	this->layout = layout;
}

int Level::getWidth() {
	return width;
}

int Level::getHeight() {
	return height;
}

char Level::getBlockAtArrayCoord(int row, int col) {
	if(row < 0 || row >= height || col < 0 || col >= width) {
		return '#';
	}
	return layout[row * height + col];
}

char Level::getBlockAtWorldCoord(float x, float y) {
	int col = (int)floor(x);
	int row = (int)(height - 1 - floor(y));
	return getBlockAtArrayCoord(row, col);
}

// Levels
const int NUM_LEVELS = 1;

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

Level* levels[NUM_LEVELS] = {
	&level0
};


Level* getLevel(int levelIndex) {
	if(levelIndex >= 0 && levelIndex < NUM_LEVELS) {
		return levels[levelIndex];
	}
	return nullptr;
}
