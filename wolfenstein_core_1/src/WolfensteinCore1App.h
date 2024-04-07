#ifndef WOLFENSTEIN_CORE_1_H
#define WOLFENSTEIN_CORE_1_H

#include "../../wolfenstein_core_0/src/ObjectWithPosition.h"
#include "../../wolfenstein_core_0/src/Player.h"
#include "../../wolfenstein_core_0/src/Sprite.h"

class WolfensteinCore1App {

public:
	WolfensteinCore1App();

	void run();

private:
	// Receive necessawry data from core 0 with valid-acknowledge handshake
	void receiveSharedDataPacket();

	// Use ray distances from shared data packet to draw the floor, ceiling, and walls
	void drawEnvironment();

	// Calculate the row of the screen the ceiling occupies at a distance from the player
	// This is the same as the row the wall starts
	int getScreenRowOfCeilingAtDistance(float distance);

	// Return element of a gradient based on distance from player
	int getColourFromGradient(const int* gradient, const int gradientLength, float distance);

	// Helper for drawEnvironment()
	// Fill the parts of the ceiling and floor that are not perfectly square
	void fillNonRectangularCeilingAndFloor(int rowAlreadyDrawn);

	// Draw sprite with offset with no size scaling
	void drawSpriteSimple(Sprite* sprite, int rowOffset, int colOffset);

	// Draw sprite at position of object with offset within player's field of view.
	// Size of sprite and height offset scale with distance from the player
	void drawObjectWithPosition(
		ObjectWithPosition* object,
		Sprite* sprite,
		int drawHeightOffset,
		int drawColOffset
	);

	// For each enemy, draw its sprite if it is alive and in the player's field of view
	void drawEnemies();

	// For each drop, draw its sprite if it is not picked up and in the player's field of view
	void drawDrops();

	// Draw the head-up display
	// Draw first person view of the player's weapon and health and ammo bars
	void drawHUD();

	// Copy the intermediate image buffer to the VGA buffer
	void updateScreen();
};

#endif
