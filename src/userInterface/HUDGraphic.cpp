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
#include <linmath/float2.h>
#include <linmath/float3.h>
#include <linmath/float4.h>
#include <Texture.h>
#include <Dimension.h>
#include "HUDGraphic.h"
#include <iostream>
#include <sstream>
#include <stdexcept>

using namespace chag;

HUDGraphic::HUDGraphic(Texture* texture) :
        texture(texture), textureElseColor(true) {}

HUDGraphic::HUDGraphic(Color color) : color(color.getColor()) , textureElseColor(false){ }

float3 HUDGraphic::getCenterOffset(float width, float height) {
    return make_vector(offsetX.getSize(width), offsetY.getSize(height), 0.0f);
}

HUDGraphic* HUDGraphic::setCenterOffset(Dimension offsetX, Dimension offsetY) {
    this->offsetX = offsetX;
    this->offsetY = offsetY;
    return this;
}

HUDGraphic* HUDGraphic::setTexturePosition(HUDGraphic::TexturePosition<int> texturePosition) {
    this->texturePosition = texturePosition;
    return this;
}

HUDGraphic::TexturePosition<float> HUDGraphic::getTexturePosition() {
    TexturePosition<int> tp = texturePosition;
    if (tp.isEmpty()) {
        return TexturePosition<float>(0.0f,0.0f,1.0f,1.0f);
    } else {
        float width = 1.0f, height = 1.0f;
        if (isTextureElseColor()) {
            width = texture->getWidth();
            height = texture->getHeight();
        }
        return TexturePosition<float>((float) tp.botLeftX / width, (float) tp.botLeftY / height,
                                      (float) tp.topRightX / width, (float) tp.topRightY / height);
    }
}

template <typename T>
bool HUDGraphic::TexturePosition<T>::isEmpty() {
    return empty;
}

Texture* HUDGraphic::getTexture() {
    if(!textureElseColor)
        throw std::runtime_error("This graphic doesn't have a texture.");
    return texture;
}

bool HUDGraphic::isTextureElseColor() {
    return textureElseColor;
}

float4 HUDGraphic::getColor() {
    if(textureElseColor)
        throw std::runtime_error("This graphic doesn't have a solid color.");
    return color;
}

HUDGraphic* HUDGraphic::setBorder(int pixels, Color borderColor) {
    return setBorder(pixels, pixels, borderColor);
}

HUDGraphic* HUDGraphic::setBorder(int botAndTop, int leftAndRight, Color borderColor) {
    return setBorder(botAndTop, leftAndRight, botAndTop, leftAndRight, borderColor);
}

HUDGraphic* HUDGraphic::setBorder(int top, int right, int bot, int left, Color borderColor) {
    this->borderColor = borderColor.getColor();
    borders[0] = top;
    borders[1] = right;
    borders[2] = bot;
    borders[3] = left;
    return this;
}

float4 HUDGraphic::getBorderColor() {
    return borderColor;
}

int* HUDGraphic::getBorders() {
    return borders;
}

HUDGraphic* HUDGraphic::setRoundedCorners(int pixels){
    return setRoundedCorners(pixels, pixels, pixels, pixels);
}

HUDGraphic* HUDGraphic::setRoundedCorners(int topLeft, int topRight, int botRight, int botLeft) {
    roundedCorners[0] = topLeft;
    roundedCorners[1] = topRight;
    roundedCorners[2] = botLeft;
    roundedCorners[3] = botRight;
    return this;
}

int* HUDGraphic::getRoundedCorners() {
    return roundedCorners;
}

HUDGraphic* HUDGraphic::setBorderSize(int top, int right, int bot, int left) {
    if(top != -1)
        this->borders[0] = top;
    if(right != -1)
        this->borders[1] = right;
    if(bot != -1)
        this->borders[2] = bot;
    if(left != -1)
        this->borders[3] = left;
    return this;
}

HUDGraphic* HUDGraphic::setBorderColor(Color borderColor) {
    this->borderColor = borderColor.getColor();
    return this;
}

HUDGraphic* HUDGraphic::setBackground(Color color) {
    textureElseColor = false;
    this->color = color.getColor();
    return this;
}

HUDGraphic* HUDGraphic::setBackground(Texture *texture) {
    textureElseColor = true;
    this->texture = texture;
    return this;
}

HUDGraphic::Color::Color(int red, int green, int blue, float opacity)
        : Color(make_vector((float)red / 255.0f,
                            (float)green / 255.0f,
                            (float)blue / 255.0f, opacity))
{
}

HUDGraphic::Color::Color(float4 rawColor) : color(rawColor) {
}

HUDGraphic::Color::Color(int red, int green, int blue): Color(red,green,blue,1.0f) {
}

HUDGraphic::Color::Color(std::string hexString): Color(hexString,1.0f) {
}

HUDGraphic::Color::Color(std::string hexString, float opacity) {

    if(hexString.length() == 0) {
        throw std::invalid_argument("The color hexString can't be empty in HUDGraphic::Color::Color().");
    }

    if(hexString[0] == '#') {
        hexString = hexString.substr(1,hexString.length()-1);
    }

    if (hexString.find_first_not_of("0123456789abcdefABCDEF", 0) != std::string::npos) {
        throw std::invalid_argument("The color hexString can only contain: 0-9, a-f or A-F.");
    }

    float divBy;
    unsigned int valLen;
    if (hexString.length() == 3) {
        divBy = 15.0f;
        valLen = 1;
    } else if (hexString.length() == 6) {
        divBy = 255.0f;
        valLen = 2;
    } else {
        throw std::invalid_argument("The color hexString has to be of length 3 or 6 in HUDGraphic::Color::Color().");
    }

    hexStringToFloat(hexString, 0, valLen, &color.x);
    hexStringToFloat(hexString, valLen*1, valLen, &color.y);
    hexStringToFloat(hexString, valLen*2, valLen, &color.z);
    color /= divBy;

    color.w = opacity;
}

void HUDGraphic::Color::hexStringToFloat(std::string hexString, unsigned int pos, unsigned int len, float* target){
    int temp = 0;
    std::stringstream(hexString.substr(pos,len)) >> std::hex >> temp;
    *target = (float)temp;
}

float4 HUDGraphic::Color::getColor() {
    return color;
}
