
#include "xpseudo_asm.h"
#include "xil_io.h"

#include "WolfensteinGame.h"
#include "Constants.h"

int main() {
	Xil_Out32(0xFFFFFFF0, (u32)CORE_1_BASE_ADDR);
	__asm__("sev");

	WolfensteinGame game0;
	game0.playGame();

	while(1);
}
