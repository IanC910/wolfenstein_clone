
#ifndef SPRITE_READER_H
#define SPRITE_READER_H

class Sprite {
public:
	Sprite(void* spriteFile);

	int getNumRows();
	int getNumCols();
	int getGranularity();
	short* getFirstNonTransparentPixelArray();
	short* getNumNonTransparentPixelArray();
	int* getPixelData();

private:
	void* spriteFile;
};

#endif
