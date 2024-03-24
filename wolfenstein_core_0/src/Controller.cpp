
#include <xparameters.h>

extern "C" {
	#include "PmodJSTK2.h"
}

static PmodJSTK2 jstk[2];
static JSTK2_DataPacket jstkData[2];

void Controller_initialize() {
	JSTK2_begin(
		&jstk[0],
		XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
		XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR
	);

	JSTK2_begin(
		&jstk[1],
		XPAR_PMODJSTK2_1_AXI_LITE_SPI_BASEADDR,
		XPAR_PMODJSTK2_1_AXI_LITE_GPIO_BASEADDR
	);

   // Set inversion register to invert only the Y axis
   JSTK2_setInversion(&jstk[0], 0, 1);
   JSTK2_setInversion(&jstk[1], 0, 1);
}

// Transforms range (0, 256) to (-1, 1)
float mapJSTK(u8 value) {
	return ((float)value / 128.0) - 1.0;
}

void Controller_update() {
	jstkData[0] = JSTK2_getDataPacket(&jstk[0]);
	jstkData[1] = JSTK2_getDataPacket(&jstk[1]);
}

float Controller_getNormedJoystickX(int joystickIndex) {
	return mapJSTK(jstkData[joystickIndex].XData);
}

float Controller_getNormedJoystickY(int joystickIndex) {
	return mapJSTK(jstkData[joystickIndex].YData);
}

bool Controller_getJoystickButtonStatus(int joystickIndex) {
	return joystickData[joystickDataIndex].Jstk;
}

bool Controller_isTriggerPressed(int joystickIndex) {
	return joystickData[joystickDataIndex].Trigger;
}


