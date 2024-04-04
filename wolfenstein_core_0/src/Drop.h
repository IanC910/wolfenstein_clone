
#ifndef DROP_H
#define DROP_H

#include "ObjectWithPosition.h"

class Drop : public ObjectWithPosition {
public:
	bool canPickUp(float distance);
	bool isPickedUp();

	void reset();
	void initialize();

private:
	bool pickedUp = true;
};

#endif
