
#ifndef OBJECT_WITH_POSITION_H
#define OBJECT_WITH_POSITION_H

class ObjectWithPosition {
public:
    float getPositionX();
    float getPositionY();

    void setPositionX(float x);
    void setPositionY(float y);

protected:
    float positionX = 0;
    float positionY = 0;
};

#endif