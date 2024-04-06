
#include "Controller.h"

Controller::Controller() {}

Controller::Controller(
	unsigned int pmod0SpiBaseAddr,
	unsigned int pmod0GpioBaseAddr,
	unsigned int pmod1SpiBaseAddr,
	unsigned int pmod1GpioBaseAddr
) {
	JSTK2_begin(
		&jstk[0],
		pmod0SpiBaseAddr,
		pmod0GpioBaseAddr
	);

	JSTK2_begin(
		&jstk[1],
		pmod1SpiBaseAddr,
		pmod1GpioBaseAddr
	);

   // Set inversion register to invert only the Y axis
   JSTK2_setInversion(&jstk[0], 0, 1);
   JSTK2_setInversion(&jstk[1], 0, 1);
}

float Controller::mapJSTK(u8 value) {
	return ((float)value / 128.0) - 1.0;
}

void Controller::update() {
	jstkPos[0] = JSTK2_getPosition(&jstk[0]);
	jstkPos[1] = JSTK2_getPosition(&jstk[1]);
	jstkData[0] = JSTK2_getDataPacket(&jstk[0]);
	jstkData[1] = JSTK2_getDataPacket(&jstk[1]);
}

float Controller::getNormedJoystickX(int joystickIndex) {
	return mapJSTK(jstkPos[joystickIndex].XData);
}

float Controller::getNormedJoystickY(int joystickIndex) {
	return mapJSTK(jstkPos[joystickIndex].YData);
}

bool Controller::getJoystickButtonStatus(int joystickIndex) {
	return jstkData[joystickIndex].Jstk;
}

bool Controller::isTriggerPressed(int joystickIndex) {
	return jstkData[joystickIndex].Trigger;
}


