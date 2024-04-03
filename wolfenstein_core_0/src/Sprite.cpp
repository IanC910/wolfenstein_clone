
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

short* Sprite::getFirstPixelArray() {
	return (short*)(spriteFile + 12);
}

short* Sprite::getNumPixelsArray() {
	return (short*)((void*)getFirstPixelArray() + getNumRows() * 2);
}

int* Sprite::getPixelData() {
	return (int*)((void*)getNumPixelsArray() + getNumRows() * 2);
}
