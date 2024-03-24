
#include <math.h>

#include "Constants.h"
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
