
#ifndef COLOUR_RGB_H
#define COLOUR_RGB_H

class Colour {
public:
	Colour(char r, char g, char b);

	int getColourAsInt();
	int getColourAsInt(float coef);


private:
	char red;
	char green;
	char blue;
};

// Colour Presets
#define HARD_WOOD_BROWN	Colour(8, 6, 4)
#define CONCRETE_GREY	Colour(8, 8, 8)
#define PALE_GREEN		Colour(7, 9, 7)

// Game Visuals
#define FLOOR_COLOUR 	CONCRETE_GREY
#define CEILING_COLOUR 	HARD_WOOD_BROWN
#define WALL_COLOUR		PALE_GREEN

#endif
