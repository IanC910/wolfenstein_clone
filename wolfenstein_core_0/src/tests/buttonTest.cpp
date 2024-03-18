
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
			Buttons_isButtonPressed(CENTRE),
			Buttons_isButtonPressed(DOWN),
			Buttons_isButtonPressed(LEFT),
			Buttons_isButtonPressed(RIGHT),
			Buttons_isButtonPressed(UP)
		);

		sleep(1);
	}
}


