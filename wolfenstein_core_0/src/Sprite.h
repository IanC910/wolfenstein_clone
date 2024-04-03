
#ifndef SPRITE_READER_H
#define SPRITE_READER_H

class Sprite {
public:
	Sprite(void* spriteFile);

	int getNumRows();
	int getNumCols();
	int getGranularity();
	short* getFirstPixelArray();
	short* getNumPixelsArray();
	int* getPixelData();

private:
	void* spriteFile;
};

#endif
