
#ifndef DROP_H
#define DROP_H

#include "ObjectWithPosition.h"

class Drop : public ObjectWithPosition {
public:
	// Check if the drop is within pickUp distance, and update pickedUp status
	bool pickUp(float distance);

	// Returns the pickedUp status of the drop
	bool isPickedUp();

	//	Sets pickedUp to true (drop no longer active)
	void reset();

	// Sets pickedUp to false (drop is active)
	void initialize();

private:
	bool pickedUp = true;
};

#endif
