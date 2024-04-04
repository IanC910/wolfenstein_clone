#include "Drop.h"

bool Drop::canPickUp(float distance) {
	if(distance < 1.0) {
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
