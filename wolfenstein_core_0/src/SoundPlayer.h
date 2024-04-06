
#ifndef SOUND_PLAYER_H
#define SOUND_PLAYER_H

#include "Addresses.h"

class SoundPlayer {
public:
	SoundPlayer(unsigned int audioFetcherBaseAddr);

	void playSound(void* soundFile, int soundSlot);
	void stopSound(int soundSlot);
	void stopAllSounds();

private:
	unsigned int audioFetcherBaseAddr = 0;
};

float getSoundLengthS(void* soundFile);

#endif
