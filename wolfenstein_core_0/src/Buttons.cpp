
#include "xil_io.h"

#include "Buttons.h"

static unsigned int buttonStatus = 0;
static bool isNewStatus = 0;

void Buttons_update() {
	buttonStatus = Xil_In32(BTN_INTERRUPT_GEN_BASE + BTN_STATUS_REG);
}

void Buttons_clearInterrupt() {
	Xil_Out32(BTN_INTERRUPT_GEN_BASE + INT_STATUS_REG, 0);
}

bool Buttons_isButtonPressed(button_t button) {
	return buttonStatus & (1 << button);
}

void Buttons_basicInterruptHandler(void* interruptController) {
    Buttons_clearInterrupt();

    Buttons_update();

    isNewStatus = true;
}

bool Buttons_isNewStatus() {
	bool returnStatus = isNewStatus;
	isNewStatus = false;
	return returnStatus;
}
