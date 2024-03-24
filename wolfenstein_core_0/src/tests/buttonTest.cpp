
#include "xil_io.h"
#include "xil_exception.h"
#include "sleep.h"

#include "../InterruptSetup.h"
#include "../Buttons.h"

#include "buttonTest.h"

void buttonTest() {

	InterruptSetup_setInterruptHandler(
		INTERRUPT_0_ID,
		(Xil_ExceptionHandler)Buttons_basicInterruptHandler
	);

	while(true) {
		xil_printf("\nButton::\nC: %d\nD: %d\nL: %d\nR: %d\nU: %d\n",
			Buttons_isButtonPressed(BTN_CENTRE),
			Buttons_isButtonPressed(BTN_DOWN),
			Buttons_isButtonPressed(BTN_LEFT),
			Buttons_isButtonPressed(BTN_RIGHT),
			Buttons_isButtonPressed(BTN_UP)
		);

		sleep(1);
	}
}


