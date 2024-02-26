
#ifndef COLOUR_RGB_H
#define COLOUR_RGB_H

int colourRGB(int r, int g, int b);

const int CEILING_GRADIENT_LENGTH = 5;
const int CEILING_GRADIENT[CEILING_GRADIENT_LENGTH] = {
	colourRGB(8, 6, 4),
	colourRGB(7, 6, 4),
	colourRGB(6, 5, 4),
	colourRGB(5, 4, 3),
	colourRGB(4, 3, 2)
};

const int FLOOR_GRADIENT_LENGTH = 5;
const int FLOOR_GRADIENT[FLOOR_GRADIENT_LENGTH] = {
	colourRGB(8, 8, 8),
	colourRGB(7, 7, 7),
	colourRGB(6, 6, 6),
	colourRGB(5, 5, 5),
	colourRGB(4, 4, 4)
};

const int WALL_GRADIENT_LENGTH = 5;
const int WALL_GRADIENT[WALL_GRADIENT_LENGTH] = {
	colourRGB(7, 9, 7),
	colourRGB(6, 8, 6),
	colourRGB(5, 7, 5),
	colourRGB(5, 6, 5),
	colourRGB(4, 5, 4)
};

#endif
