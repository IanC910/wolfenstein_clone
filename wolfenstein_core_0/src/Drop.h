
#ifndef DROP_H
#define DROP_H

#include "ObjectWithPosition.h"

typedef struct {
	float positionX;
	float positionY;
} dropData_t;

class Drop : public ObjectWithPosition {
public:
	bool canPickUp(float distance);

	dropData_t getDropData();
};

#endif
