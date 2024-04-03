
#include "Sprite.h"

Sprite::Sprite(void* spriteFile) {
	this->spriteFile = spriteFile;
}

int Sprite::getNumRows() {
	return *(int*)spriteFile;
}

int Sprite::getNumCols() {
	return *(int*)(spriteFile + 4);
}

int Sprite::getGranularity() {
	return *(int*)(spriteFile + 8);
}

short* Sprite::getFirstNonTransparentPixelArray() {
	return (short*)(spriteFile + 12);
}

short* Sprite::getNumNonTransparentPixelArray() {
	return (short*)((void*)getFirstNonTransparentPixelArray() + getNumRows() * 2);
}

int* Sprite::getPixelData() {
	return (int*)((void*)getNumNonTransparentPixelArray() + getNumRows() * 2);
}
