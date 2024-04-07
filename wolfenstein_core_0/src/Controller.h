
#ifndef CONTROLLER_H
#define CONTROLLER_H

extern "C" {
	#include "PmodJSTK2.h"
}

class Controller {
public:
	Controller();
	Controller(
		unsigned int pmod0SpiBaseAddr,
		unsigned int pmod0GpioBaseAddr,
		unsigned int pmod1SpiBaseAddr,
		unsigned int pmod1GpioBaseAddr
	);

	void update();
	float getNormedJoystickX(int joystickIndex);
	float getNormedJoystickY(int joystickIndex);
	bool getJoystickButtonStatus(int joystickIndex);
	bool isTriggerPressed(int joystickIndex);

private:
	// Map unsigned range (0, 255) to float range (-1, 1)
	float mapJSTK(u8 value);

	PmodJSTK2 jstk[2];
	JSTK2_DataPacket jstkData[2];
	JSTK2_Position jstkPos[2];
};

#endif
