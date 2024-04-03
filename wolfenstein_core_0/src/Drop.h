
#ifndef DROP_H
#define DROP_H

#include "ObjectWithPosition.h"

typedef struct {
	float positionX;
	float positionY;
	bool isPickedUp;
} dropData_t;

class Drop : public ObjectWithPosition {
public:
	bool canPickUp(float distance);
	bool isPickedUp();
	void initialize();
	dropData_t getDropData();
private:
	bool pickedUp = true;
};

#endif
