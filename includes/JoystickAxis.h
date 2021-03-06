/*
 * This file is part of Bubba-3D.
 *
 * Bubba-3D is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Bubba-3D is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Bubba-3D. If not, see http://www.gnu.org/licenses/.
 */
//
// Created by simon on 2015-12-22.
//

#ifndef BUBBA_3D_JOYSTICKAXIS_H
#define BUBBA_3D_JOYSTICKAXIS_H

#include <SFML/Window.hpp>
#include <ControlStatus.h>
#include <Input.h>
#include <IJoystickTranslation.h>

/**
 * An input class that uses the axes of joysticks. This class is quite versatile and
 * can be used to bind different types of bindings. Check the various constructors to see their usages.
 */
class JoystickAxis : public Input {
public:
    enum Separation {POSITIVE,NEGATIVE};

    /**
     * This is the most simple constructor. It takes one axis and a boolean
     * that signifies the duality of the axis. A joystick axis has the raw interval
     * [-100,100] which is what you will receive if \p dual is true. If \p dual
     * is false the interval is transformed to [0,100]. This can be useful for
     * triggers. Triggers are seen as axes and has the interval [-100,100] but
     * you often want a trigger to be seen as one button and not a dual.
     */
    JoystickAxis(IJoystickTranslation::Axis axis, bool dual);

    /**
     * Enables you to use only the positive or negative portion
     * of an axis.
     */
    JoystickAxis(IJoystickTranslation::Axis axis, Separation separation);

    /**
     * Allows you to combine two axes into one dual interval. The interval of
     * \p axisPos will be transformed from [-100,100] to [0,100]. The interval
     * of \axisNeg will be transformed from [-100,100] to [-100,0]. Together
     * they form the dual interval [-100,100]
     */
    JoystickAxis(IJoystickTranslation::Axis axisPos, IJoystickTranslation::Axis axisNeg);
    ControlStatus getStatus();

    /**
     * returns ControlStatus::Activator::JOYSTICK
     */
    ControlStatus::Activator getActivator();

    /**
     * This function takes a value in the interval [-100,100] and removes [-15,15].
     * This means that any number in [-15,15] is counted as zero and the rest of
     * the numbers are scaled appropriately. This should be used whenever a value
     * from a joystick axis is used as the axes often have a small resting area
     * that should be ignored.
     */
    static float removeDeadZone(float val);

private:
    IJoystickTranslation::Axis axisPos, axisNeg;
    bool separated = false, doubleAxed = false;
    Separation separation;

    ControlStatus getStatusSeparated();
    ControlStatus getStatusNormal();

};


#endif //BUBBA_3D_JOYSTICKAXIS_H
