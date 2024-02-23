
#include "Colour.h"

Colour::Colour(char r, char g, char b) {
	red 	= (r < 15) ? r : 15;
	green 	= (g < 15) ? g : 15;
	blue 	= (b < 15) ? b : 15;
}

int Colour::getColourAsInt() {
	return (
		blue << 20 |
		green << 12 |
		red << 4
	);
}

int Colour::getColourAsInt(float coef) {
	return (
		(int)(blue * coef) << 20 |
		(int)(green * coef) << 12 |
		(int)(red * coef) << 4
	);
}
