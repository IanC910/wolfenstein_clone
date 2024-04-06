
#include "xil_io.h"
#include "Constants.h"
#include "SoundPlayer.h"

static long stopSoundFile = 1;

SoundPlayer::SoundPlayer(unsigned int audioFetcherBaseAddr) {
	this->audioFetcherBaseAddr = audioFetcherBaseAddr;
	stopAllSounds();
}

void SoundPlayer::playSound(void* soundFile, int volume, int soundSlot) {
	Xil_Out32(audioFetcherBaseAddr + 0, (unsigned int)soundFile);
	Xil_Out32(audioFetcherBaseAddr + 4, volume);
	Xil_Out32(audioFetcherBaseAddr + 8, soundSlot);
	Xil_Out32(audioFetcherBaseAddr + 12, 1);
}

void SoundPlayer::stopSound(int soundSlot) {
	playSound(&stopSoundFile, 0, soundSlot);
}

void SoundPlayer::stopAllSounds() {
	for(int s = 0; s < NUM_SOUND_SLOTS; s++) {
		stopSound(s);
	}
}


float getSoundLengthS(void* soundFile) {
	int numSamples = *(int*)soundFile;
	int lengthUs = numSamples * SAMPLE_PERIOD_US;
	return (float)lengthUs / 1000000;
}
