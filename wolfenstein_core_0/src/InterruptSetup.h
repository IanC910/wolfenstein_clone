
#ifndef INTERRUPT_SETUP_H
#define INTERRUPT_SETUP_H

#include "xil_types.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"

#define INTERRUPT_0_ID	61

int InterruptSetup_setInterruptHandler(int interruptId, Xil_ExceptionHandler interruptHandler);

#endif
