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
#pragma once

#include <vector>
#include <map>
#include <Dimension.h>
#include <functional>

class Texture;
class HUDGraphic;
class IHudDrawable;
class InsideChecker;
class GLSquare;

/**
 * A layout is an object that is passed to the HudRenderer to render a menu or UI.
 */
class Layout {

public:
    Layout() = default;
    virtual ~Layout() = default;

    enum ListenerType {
        ON_CLICK_LISTENER,
        ON_HOVER_LISTENER
    };

    typedef std::function<void (int x, int y, Layout* element, bool enteredElseLeaving)> EventFunction;

    /**
     * The function to fetch all GLSquares from this layout and its children
     * based on the position and dimensions given. The parent calculates
     * the dimensions and implementing classes must assume that the dimensions
     * are correct. The parent uses getWidth() and getHeight() to determine
     * the dimensions.
     *
     * This function doesn't need to be overidden but getGLSquares(float layoutXPos,
     * float layoutYPos, float layoutWidth, float layoutHeight, map<string,IHudDrawable*>* list) must be
     * overridden.
     */
    virtual std::map<std::string, IHudDrawable*> getGLSquares(float layoutXPos,float layoutYPos,
                                                              float layoutWidth, float layoutHeight);

    /**
     *
     * \internal
     *
     * \warning Never allowed to return a wrapping dimension
     */
    virtual Dimension getWidth() = 0;
    /**
     * \internal
     * \warning Never allowed to return a wrapping dimension
     */
    virtual Dimension getHeight() = 0;

    /**
     * The function to fetch all GLSquares from this layout and its children
     * based on the position and dimensions given. The parent calculates
     * the dimensions and implementing classes must assume that the dimensions
     * are correct. The parent uses getWidth() and getHeight() to determine
     * the dimensions.
     *
     * The overridden method should always call Layout::getGLSquares(float layoutXPos,
     * float layoutYPos, float layoutWidth, float layoutHeight, map<string,IHudDrawable*>* list)
     * before doing anything else. Otherwise Layout::setBackground() won't have an effect.
     */
    virtual void getGLSquares(float layoutXPos,float layoutYPos, float layoutWidth,
                              float layoutHeight, std::map<std::string, IHudDrawable*> *map) = 0;

    virtual HUDGraphic* getGraphic();

    /**
     * Sets the background of this Layout.
     */
    virtual Layout* setBackground(HUDGraphic *graphic);

    /**
     * Sets the layout id of this layout. This makes it possible to retrieve the
     * layout by HudRenderer::getLayoutById(). You can also get the rendering GLSquare
     * of the background using HudRenderer::getHudDrawableById().
     */
    virtual Layout* setLayoutId(std::string id);

    /**
     * Searches through this object and all children after the
     * given ID and returns the first match found.
     * Returns {\code nullptr} if no child had the specified id.
     */
    virtual Layout* findById(std::string id);

    virtual void invokeListeners(int x, int y, ListenerType listenerType);
    virtual void invokeListenersInternal(int x, int y, ListenerType listenerType, bool mayBeHit);

    virtual Layout* addClickListener(EventFunction eventFunction);
    virtual Layout* addHoverListener(EventFunction eventFunction);

    /**
     * Add a sub-layout. How the child is positioned and its dimensions are
     * decided by the implementing class.
     */
    virtual void addChild(Layout* child);

    virtual void clearChildren();
    virtual void clearHoverListeners();
    virtual void clearClickListeners();

    virtual void callListeners(int x, int y, ListenerType listenerType, bool enteringElseLeaving);

    virtual void updateGraphic();
    virtual IHudDrawable* getRenderedBackground();

protected:
    std::vector<Layout*> children;
    HUDGraphic* graphic = nullptr;
    std::string id = "";
    InsideChecker* insideChecker = nullptr;

    std::vector<EventFunction>* hoverListeners = new std::vector<EventFunction>();
    std::vector<EventFunction>* clickListeners = new std::vector<EventFunction>();
    GLSquare* renderedBackground = nullptr;

    bool hoveredBackground = false;
    bool mouseWasDown = false;

    std::string getNextRandId();
};
