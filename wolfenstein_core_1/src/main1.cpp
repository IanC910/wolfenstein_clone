
#include "xil_cache.h"
#include "xil_io.h"

int main() {
	Xil_DCacheDisable();

	while(1) {
		xil_printf("Hi from core 1\n");
	}
}
