
#include "InterruptSetup.h"

// Static instance of interrupt controller
static XScuGic interruptController0;

int InterruptSetup_setInterruptHandler(int interruptId, Xil_ExceptionHandler interruptHandler) {

    int result;
    XScuGic *interruptControllerPtr = &interruptController0;
    XScuGic_Config *interruptControllerConfig;

    // Get config for interrupt controller
    interruptControllerConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if(interruptControllerConfig == NULL) {
        return XST_FAILURE;
    }

    // Initialize the interrupt controller driver
    result = XScuGic_CfgInitialize(
		interruptControllerPtr,
		interruptControllerConfig,
		interruptControllerConfig->CpuBaseAddress
	);
    if(result != XST_SUCCESS) {
        return result;
    }

    // Set the priority of the interrupt ID to 0xA0 (highest 0xF8, lowest 0x00) and a trigger for a rising edge 0x3.
    XScuGic_SetPriorityTriggerType(interruptControllerPtr, interruptId, 0xA0, 0x3);

    // Connect the interrupt controller to the interrupt ID
    result = XScuGic_Connect(
		interruptControllerPtr,
		interruptId,
		interruptHandler,
		(void *)&interruptController0
    );
    if(result != XST_SUCCESS) {
        return result;
    }

    XScuGic_Enable(interruptControllerPtr, interruptId);

    // Initialize the exception table and register the interrupt controller handler with the exception table
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(
		XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)XScuGic_InterruptHandler,
		interruptControllerPtr
	);

    // enable non-critical exceptions
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
