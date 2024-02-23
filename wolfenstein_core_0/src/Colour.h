
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

#endif
