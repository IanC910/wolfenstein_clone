
#ifndef BUTTONS_H
#define BUTTONS_H

const int BTN_INTERRUPT_GEN_BASE = 0x43C20000;

enum btn_interrupt_gen_reg_t {
	BTN_STATUS_REG = 0x0,
	INT_STATUS_REG = 0x4
};

enum buttonIndex_t {
	BTN_CENTRE 	= 0,
	BTN_DOWN	= 1,
	BTN_LEFT	= 2,
	BTN_RIGHT	= 3,
	BTN_UP		= 4
};

void Buttons_update();

void Buttons_clearInterrupt();
bool Buttons_isButtonPressed(buttonIndex_t buttonIndex);
void Buttons_basicInterruptHandler(void* interruptControllerPtr);
bool Buttons_isNewStatus();

#endif
