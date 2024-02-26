
#include "Colour.h"

int colourRGB(int r, int g, int b) {
	return (
		b << 20 |
		g << 12 |
		r << 4
	);
}
