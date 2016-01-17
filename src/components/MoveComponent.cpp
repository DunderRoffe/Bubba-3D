//
// Created by johan on 2015-11-29.
//

#include <GameObject.h>
#include "MoveComponent.h"
#include "float3x3.h"

MoveComponent::MoveComponent(){

}

MoveComponent::MoveComponent(GameObject* meshObject) {
    this->meshObject = meshObject;
}

MoveComponent::MoveComponent(GameObject* meshObject, Quaternion rotation, float rotationSpeed,
                             float3 velocity, float3 location, float3 acceleration,
                             float3 scale, float3 scaleSpeed) : MoveComponent (meshObject){
    this->velocity = velocity;
    this->acceleration = acceleration;
    this->rotation = rotation;
    this->rotationSpeed = rotationSpeed;
    this->location = location;
    this->scale = scale;
    this->scaleSpeed = scaleSpeed;
}

void MoveComponent::afterCollision() {
}

void MoveComponent::duringCollision() {
}

void MoveComponent::beforeCollision() {
}


void MoveComponent::update(float dt){

    velocity += acceleration*dt;
    location += velocity*dt;
    rotation.w += rotationSpeed*dt;
    scale += scaleSpeed*dt;

    float4x4 transform = make_translation(location);
    if(hasRotation)
        transform = transform*makematrix(rotation);
    transform = transform*make_scale<float4x4>(scale);
    meshObject->move(transform);


}

float3 MoveComponent::getVelocity(){ return velocity; }
float3 MoveComponent::getAcceleration(){ return acceleration; }
Quaternion MoveComponent::getRotation() { return rotation; }
float3 MoveComponent::getLocation(){ return location; }
float MoveComponent::getRotationSpeed(){ return rotationSpeed; }
float3 MoveComponent::getScale(){ return scale; }
float3 MoveComponent::getScaleSpeed(){ return scaleSpeed; }


void MoveComponent::setVelocity(float3 v){velocity = v;}
void MoveComponent::setAcceleration(float3 a){acceleration = a;}
void MoveComponent::setRotation(Quaternion r){rotation = r; hasRotation = true;}
void MoveComponent::setLocation(float3 l){location = l;}
void MoveComponent::setRotationSpeed(float rs){rotationSpeed = rs;}
void MoveComponent::setScale(float3 s){scale = s;}
void MoveComponent::setScaleSpeed(float3 ss){scaleSpeed = ss;}
void MoveComponent::updateRotation(Quaternion r) {
    setRotation(hasRotation ? r*getRotation() : r);
}