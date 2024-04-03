#include "Drop.h"

bool Drop::canPickUp(float distance) {
	if(distance < 0.5) {
		return true;
	}
	return false;
}

dropData_t Drop::getDropData() {
	dropData_t dropData;

	dropData.positionX = positionX;
	dropData.positionY = positionY;

	return dropData;
}
