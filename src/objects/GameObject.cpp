
#include <algorithm>
#include "linmath/Quaternion.h"
#include "Sphere.h"
#include "GameObject.h"
#include "linmath/float3x3.h"
#include "Collider.h"
#include "Mesh.h"
#include "IComponent.h"
#include "IRenderComponent.h"
#include "Octree.h"

#define NORMAL_TEXTURE_LOCATION 3
#define DIFFUSE_TEXTURE_LOCATION 0

int GameObject::uniqueId = 0;

GameObject::GameObject() {
    m_modelMatrix = make_identity<float4x4>();
    id = getUniqueId();
}

GameObject::GameObject(GameObject* parent) {
	this->parent = parent;
	m_modelMatrix = make_identity<float4x4>();
	id = getUniqueId();
}

GameObject::GameObject(Mesh *mesh) {
    m_modelMatrix = make_identity<float4x4>();
    initGameObject(mesh, mesh);
}

GameObject::GameObject(Mesh *mesh, Mesh *colliderMesh) {
    m_modelMatrix = make_identity<float4x4>();
    initGameObject(mesh, colliderMesh);
}

GameObject::GameObject(Mesh *mesh, GameObject* parent) {
	this->parent = parent;
	m_modelMatrix = make_identity<float4x4>();
	initGameObject(mesh, mesh);
}

GameObject::GameObject(Mesh *mesh, Mesh *colliderMesh, GameObject* parent) {
	this->parent = parent;
	m_modelMatrix = make_identity<float4x4>();
	initGameObject(mesh, colliderMesh);
}

void GameObject::initGameObject(Mesh *mesh, Mesh *colliderMesh) {
    this->mesh = mesh;
    this->collisionMesh = colliderMesh;
    this->m_modelMatrix = make_identity<float4x4>();
    this->shininess = 0.0f;
    this->id = getUniqueId();
    this->sphere = mesh->getSphere();
    this->octree = createOctree(colliderMesh);
}

GameObject::~GameObject() {
    mesh = nullptr;
}

int GameObject::getUniqueId() {
    return ++uniqueId;
}

Octree* GameObject::createOctree(Mesh* mesh) {
    AABB* aabb = mesh->getAABB();
    float3 halfVector = (aabb->maxV - aabb->minV) / 2;
    float3 origin = aabb->maxV - halfVector;
    Octree* octree = new Octree(origin, halfVector);

    std::vector<Triangle *> triangles = mesh->getTriangles();
    octree->insertAll(triangles);

    return octree;
}

Sphere GameObject::getTransformedSphere() {
    float scaling = max(scale.x, max(scale.y, scale.z));
    return Sphere(sphere.getPosition()+location, scaling*sphere.getRadius());
}

void GameObject::makeDirty() {
    for (auto &component : components) {
        component->onDeath();
    }
    dirty = true;
}

bool GameObject::isDirty() {
    return dirty;
}

void GameObject::move(float4x4 modelMatrix) {
    m_modelMatrix = modelMatrix;
}

void GameObject::update(float4x4 updateMatrix) {
    m_modelMatrix = m_modelMatrix * updateMatrix;
}

void GameObject::render() {
    if(renderComponent != nullptr) {
        renderComponent->render();
    }
	if (children.size() != 0) {
		for (auto child : children) {
			child->render();
		}
	}
}

std::vector<Triangle *> GameObject::getTriangles() {
    return mesh->getTriangles();
}

float4x4 GameObject::getModelMatrix() {
    return m_modelMatrix;
}


void GameObject::renderShadow(ShaderProgram *shaderProgram) {
    renderComponent->renderShadow(shaderProgram);
	for (auto child : children) {
		child->renderShadow(shaderProgram);
	}
}

void GameObject::addRenderComponent(IRenderComponent* renderer) {
    this->renderComponent = renderer;
    components.push_back(renderer);
    renderer->bind(this);
}

void GameObject::addComponent(IComponent* newComponent) {
    components.push_back(newComponent);
    newComponent->bind(this);
}

void GameObject::update(float dt) {
    for (auto &component : components) {
        component->update(dt);
    }
    if (changed) {
        changed = false;
        float4x4 translation = make_translation(this->getAbsoluteLocation());
        float4x4 rotation    = makematrix(this->getAbsoluteRotation());
        float4x4 scale = make_scale<float4x4>(this->getAbsoluteScale());

        float4x4 point_translation = make_identity<float4x4>();
        if(parent != nullptr) {
            translation = make_translation(this->parent->getAbsoluteLocation());
            point_translation = make_translation(location);
        }

        move(translation * rotation * point_translation * scale);
    }
	for (auto child : children) {
		child->changed = true;
		child->update(dt);
	}
}

void GameObject::callEvent(EventType type, GameObject* data) {
    switch (type) {
    case EventType::BeforeCollision:
        for (auto &component : components) {
            component->beforeCollision(data);
        }
        break;
    case EventType::DuringCollision:
        for (auto &component : components) {
            component->duringCollision(data);
        }
        break;
    case EventType::AfterCollision:
        for (auto &component : components) {
            component->afterCollision(data);
        }
        break;
    }
	for (auto child : children) {
		child->callEvent(type, data);
	}
}

AABB GameObject::getTransformedAABB() {
    AABB* meshAabb = this->mesh->getAABB();
    aabb = multiplyAABBWithModelMatrix(meshAabb, m_modelMatrix);

    return aabb;
}

TypeIdentifier GameObject::getIdentifier() {
    return typeIdentifier;
}

void GameObject::setIdentifier(TypeIdentifier identifier) {
    this->typeIdentifier = identifier;
}

void GameObject::addCollidesWith(TypeIdentifier colliderID) {
    canCollideWith.push_back(colliderID);
}

void GameObject::addCollidesWith(initializer_list<TypeIdentifier> colliderIDs) {
    for (TypeIdentifier id : colliderIDs) {
        addCollidesWith(id);
    }
}
bool GameObject::collidesWith(TypeIdentifier id) {
    for (TypeIdentifier id2 : canCollideWith) {
        if (id2 == id) {
            return true;
        }
    }
    return false;
}
void GameObject::clearCollidesWithList() {
    canCollideWith = vector<TypeIdentifier>();
}

bool GameObject::isDynamicObject() {
    return dynamicObject;
}

void GameObject::setDynamic(bool isDynamic) {
    dynamicObject = isDynamic;
}

Octree* GameObject::getOctree() {
    return octree;
}

int GameObject::getId() {
    return id;
}

float3 GameObject::getAbsoluteScale() {
	if (parent != nullptr) {
		return scale + parent->getAbsoluteScale();
	}
	return scale;
}

float3 GameObject::getRelativeScale() {
	return scale;
}

Quaternion GameObject::getAbsoluteRotation() {
	if (parent != nullptr) {
		return rotation * parent->getAbsoluteRotation();
	}
	return rotation;
}

Quaternion GameObject::getRelativeRotation() {
	return rotation;
}

float3 GameObject::getAbsoluteLocation() {
	if (parent != nullptr) {
		return location + parent->getAbsoluteLocation();
	}
	return location;
}

float3 GameObject::getRelativeLocation() {
	return location;
}

void GameObject::updateRotation(Quaternion r) {
    setRotation(hasRotation ? r*getRelativeRotation() : r);
}

void GameObject::setScale(float3 s) {
    scale = s;
    changed = true;
}

void GameObject::setLocation(float3 l) {
    location = l;
    changed = true;
}

void GameObject::setRotation(Quaternion r) {
    rotation = r;
    hasRotation = changed = true;
}

void GameObject::addChild(GameObject* child) {
	children.push_back(child);
}

