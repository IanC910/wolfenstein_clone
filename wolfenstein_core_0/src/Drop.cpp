
#include "Constants.h"

#include "Drop.h"

bool Drop::pickUp(float distance) {
	if(distance < DROP_PICKUP_RADIUS) {
		pickedUp = true;
	}
	return pickedUp;
}

bool Drop::isPickedUp() {
	return pickedUp;
}

void Drop::reset() {
	pickedUp = true;
}

void Drop::initialize() {
	pickedUp = false;
}
