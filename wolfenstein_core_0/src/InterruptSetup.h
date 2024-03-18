
#ifndef BTN_INTERRUPT_SETUP_H
#define BTN_INTERRUPT_SETUP_H

#include "xil_types.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"

#define INTERRUPT_0_ID	XPAR_FABRIC_BTN_INTERRUPT_GEN_0_INTERRUPT_INTR

int InterruptSetup_setInterruptHandler(int interruptId, Xil_ExceptionHandler interruptHandler);

#endif
