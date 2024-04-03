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

void Drop::initialize() {
	pickedUp = false;
}

dropData_t Drop::getDropData() {
	dropData_t dropData;

	dropData.positionX = positionX;
	dropData.positionY = positionY;
	dropData.isPickedUp = pickedUp;

	return dropData;
}
