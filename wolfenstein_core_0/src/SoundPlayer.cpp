
#include "xil_io.h"
#include "Constants.h"
#include "SoundPlayer.h"

static long stopSoundFile = 1;

SoundPlayer::SoundPlayer(unsigned int audioFetcherBaseAddr) {
	this->audioFetcherBaseAddr = audioFetcherBaseAddr;

	// Need to do this or the first sound played on each track will not stop
	// (bug with initialization in hw)
	stopAllSounds();
	stopAllSounds();
}

void SoundPlayer::playSound(void* soundFile, int soundSlot) {
	Xil_Out32(audioFetcherBaseAddr + 0, (unsigned int)soundFile);
	Xil_Out32(audioFetcherBaseAddr + 4, 100);
	Xil_Out32(audioFetcherBaseAddr + 8, soundSlot);
	Xil_Out32(audioFetcherBaseAddr + 12, 1);
}

void SoundPlayer::stopSound(int soundSlot) {
	playSound(&stopSoundFile, soundSlot);
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
