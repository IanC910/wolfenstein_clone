
#include "xil_io.h"

#include "SoundPlayer.h"

SoundPlayer::SoundPlayer(unsigned int audioFetcherBaseAddr) {
	this->audioFetcherBaseAddr = audioFetcherBaseAddr;
}

void SoundPlayer::playSound(void* soundFilePtr, int slot) {
	Xil_Out32(audioFetcherBaseAddr + 0, (unsigned int)soundFilePtr);
	Xil_Out32(audioFetcherBaseAddr + 4, 100);
	Xil_Out32(audioFetcherBaseAddr + 8, slot);
	Xil_Out32(audioFetcherBaseAddr + 12, 1);
}
