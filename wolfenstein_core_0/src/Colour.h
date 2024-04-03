
#ifndef COLOUR_RGB_H
#define COLOUR_RGB_H

#define colourRGB(r, g, b) ((b) << 20 | (g) << 12 | (r) << 4)

const int CEILING_COLOUR = colourRGB(13, 14, 14);

const int FLOOR_COLOUR = colourRGB(7, 7, 7);

const int WALL_GRADIENT_LENGTH = 5;
const int WALL_GRADIENT[WALL_GRADIENT_LENGTH] = {
	colourRGB(4, 4, 14),
	colourRGB(4, 4, 12),
	colourRGB(3, 3, 10),
	colourRGB(3, 3, 8),
	colourRGB(3, 3, 7)
};

#endif
