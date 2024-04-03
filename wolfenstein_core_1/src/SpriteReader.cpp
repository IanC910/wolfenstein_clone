
#include "../../wolfenstein_core_1/src/SpriteReader.h"

int SpriteReader::getNumRows(void* spriteFile) {
	return *(int*)spriteFile;
}

int SpriteReader::getNumCols(void* spriteFile) {
	return *(int*)(spriteFile + 4);
}

int SpriteReader::getGranularity(void* spriteFile) {
	return *(int*)(spriteFile + 8);
}

short* SpriteReader::getFirstNonTransparentPixelArray(void* spriteFile) {
	return (short*)(spriteFile + 12);
}

short* SpriteReader::getNumNonTransparentPixelArray(void* spriteFile) {
	return (short*)((void*)getFirstNonTransparentPixelArray(spriteFile) + getNumRows(spriteFile) * 2);
}

int* SpriteReader::getPixelData(void* spriteFile) {
	return (int*)((void*)getNumNonTransparentPixelArray(spriteFile) + getNumRows(spriteFile) * 2);
}
