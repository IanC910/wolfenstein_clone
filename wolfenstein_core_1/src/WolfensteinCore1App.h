
#ifndef WOLFENSTEIN_CORE_1_H
#define WOLFENSTEIN_CORE_1_H

class WolfensteinCore1App {

public:
	WolfensteinCore1App();

	void runCore1App();

private:
	void getNewDistanceArray();
	void drawEnvironment();
	int getScreenRowOfCeilingAtDistance(float distance);
	int getColourFromGradient(const int* gradient, const int gradientLength, float distance);
	void fillNonRectangularCeilingAndFloor(int startRay, int endRay, int rowAlreadyDrawn);
	void updateScreen();
};

#endif
