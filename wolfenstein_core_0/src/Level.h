
#ifndef LEVEL_H
#define LEVEL_H

class Level {
public:
	Level(int width, int height, char* layout);

	int getWidth();
	int getHeight();
	char getBlockAtArrayCoord(int row, int col); // (0, 0) at top left
	char getBlockAtWorldCoord(float x, float y); // (0, 0) at bottom left

private:
	int width;
	int height;
	char *layout;
};

#endif
