#ifndef GPIO_H
#define GPIO_H
extern "C"
{
#include "PmodJSTK2.h"
}
#include <xparameters.h>
#include "xgpio.h"
#include "xscugic.h"


/* ---------------------------------------------------------------------------- *
 * 						 JSTK2 Initialize and Functions 						*
 * ---------------------------------------------------------------------------- */

PmodJSTK2 jstk1;
PmodJSTK2 jstk2;
JSTK2_Position jstkPosition1;
JSTK2_Position jstkPosition2;
JSTK2_DataPacket rawdata;

void jstkInitialize() {
   // Initialize the joystick device

	JSTK2_begin(
		&jstk1,
		XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
		XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR
	);

	JSTK2_begin(
		&jstk2,
		XPAR_PMODJSTK2_1_AXI_LITE_SPI_BASEADDR,
		XPAR_PMODJSTK2_1_AXI_LITE_GPIO_BASEADDR
	);

   // Set inversion register to invert only the Y axis
   JSTK2_setInversion(&jstk1, 0, 1);
   JSTK2_setInversion(&jstk2, 0, 1);
}

float mapJSTK(u8 value) {
	return (((float)value/128.0)-1.0);
}


/* ---------------------------------------------------------------------------- *
 * 						Redefinitions from xparameters.h 						*
 * ---------------------------------------------------------------------------- */

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_1_BASEADDR
#define LED_BASE XPAR_LED_CONTROLLER_0_S00_AXI_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_0_DEVICE_ID


//Interrupts stuff below
#define INTC_DEVICE_ID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define BTNS_DEVICE_ID		XPAR_AXI_GPIO_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR

#define BTN_INT 			XGPIO_IR_CH1_MASK
//static int btn_value;


XGpio LEDInst, BTNInst;
XScuGic INTCInst;

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2


/* ---------------------------------------------------------------------------- *
 * 							Global Variables									*
 * ---------------------------------------------------------------------------- */
XGpio Gpio; // Gpio instance for buttons and switches

#endif
