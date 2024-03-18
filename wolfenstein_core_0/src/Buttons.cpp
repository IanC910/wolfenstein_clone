
#include "xil_io.h"

#include "Buttons.h"

static unsigned int buttonStatus = 0;
static bool newStatus = 0;

void Buttons_updateButtonStatus() {
	buttonStatus = Xil_In32(BTN_INTERRUPT_GEN_BASE + BTN_STATUS_REG);
}

void Buttons_clearInterrupt() {
	Xil_Out32(BTN_INTERRUPT_GEN_BASE + INT_STATUS_REG, 0);
}

bool Buttons_getButtonStatus(unsigned int buttonIndex) {
	if(buttonIndex >= 32) {
		return false;
	}

	return buttonStatus & (1 << buttonIndex);
}

void Buttons_basicInterruptHandler(void* interruptControllerPtr) {
    Buttons_clearInterrupt();

    Buttons_updateButtonStatus();

    newStatus = true;
}
