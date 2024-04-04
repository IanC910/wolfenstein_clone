
#include "Sprite.h"

Sprite::Sprite(void* spriteFile) {
	this->spriteFile = (char*)spriteFile;
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
	return (short*)((char*)getFirstPixelArray() + getNumRows() * 2);
}

int* Sprite::getPixelData() {
	return (int*)((char*)getNumPixelsArray() + getNumRows() * 2);
}
