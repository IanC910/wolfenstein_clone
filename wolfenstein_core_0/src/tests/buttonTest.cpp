
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
			Buttons_getButtonStatus(CENTRE),
			Buttons_getButtonStatus(DOWN),
			Buttons_getButtonStatus(LEFT),
			Buttons_getButtonStatus(RIGHT),
			Buttons_getButtonStatus(UP)
		);

		sleep(1);
	}
}


