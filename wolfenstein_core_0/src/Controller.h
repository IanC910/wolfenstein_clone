
#ifndef CONTROLLER_H
#define CONTROLLER_H

void Controller_initialize();

void Controller_update();

float Controller_getNormedJoystickX(int joystickIndex);
float Controller_getNormedJoystickY(int joystickIndex);
bool Controller_getJoystickButtonStatus(int joystickIndex);
bool Controller_isTriggerPressed(int joystickIndex);

#endif
