
#ifndef SPRITE_READER_H
#define SPRITE_READER_H

class SpriteReader {
public:
	static int getNumRows(void* spriteFile);
	static int getNumCols(void* spriteFile);
	static int getGranularity(void* spriteFile);
	static short* getFirstNonTransparentPixelArray(void* spriteFile);
	static short* getNumNonTransparentPixelArray(void* spriteFile);
	static int* getPixelData(void* spriteFile);

private:
	SpriteReader();
};

#endif
