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
// Created by simon on 2016-03-11.
//

#include <string>
#include <vector>
#include <cmath>

#include <FontManager.h>
#include <stdexcept>
#include <Logger.h>
#include <GL/glew.h>
#include <functional>
#include <Font.h>

#include <ft2build.h>
#include <glutil/glutil.h>
#include <Globals.h>
#include FT_FREETYPE_H


using namespace std;

GLuint* FontManager::getTex() {
    return getTex(false);
}

GLuint* FontManager::getTex(bool force) {
    if(!force && !initiated)
        throw logic_error("Bad state: FontManager hasn't loaded any fonts yet.");

    static GLuint h = 0;
    return &h;
}

bool FontManager::FontDefinition::operator== (FontDefinition fd) const {
    return fd.face == face && fd.pixelSize == pixelSize;
}

std::string FontManager::FontDefinition::getFace() const {
    return face;
}

int FontManager::FontDefinition::getPixelSize() const {
    return pixelSize;
}

FontManager* FontManager::getInstance() {

    static FontManager instance; // Guaranteed to be destroyed.
    // Instantiated on first use.
    return &instance;

}

FontManager::FontDefinition::FontDefinition(std::string face, int pixelSize) : face(face), pixelSize(pixelSize){ }

Font* FontManager::loadAndFetchFont(std::string fontFace, int pixelSize) {
    FontDefinition locate = FontDefinition(fontFace,pixelSize);
    auto it = loadedFonts.find(locate);
    if(it == loadedFonts.end()) {
        loadFont(fontFace, pixelSize);
        return loadedFonts.find(locate)->second;
    }else
        return it->second;
}

void FontManager::loadFont(std::string fontFace, int pixelSize) {

    FontDefinition newFont = FontDefinition(fontFace,pixelSize);
    loadedFonts.insert(std::pair<FontDefinition,Font*>(newFont,new Font(pixelSize)));

    unsigned int *width = (unsigned int*)calloc(sizeof(unsigned int),1);
    unsigned int *height = (unsigned int*)calloc(sizeof(unsigned int),1);
    *width = atlasWidth;
    *height = atlasHeight;

    iterateGlyphs(newFont,width,height);

    atlasWidth = *width;
    atlasHeight = *height;

    initTexture();

    drawGlyphs();

    Globals::set(Globals::FONT_TEXTURE_WIDTH,*width);
    Globals::set(Globals::FONT_TEXTURE_HEIGHT,*height);

}

void FontManager::initTexture() {
    GLuint* tex = getTex(true);

    if(initiated)
        glDeleteTextures(1,tex);
    else
        initiated = true;

    glActiveTexture(GL_TEXTURE4);
    glGenTextures(1, tex);
    glBindTexture(GL_TEXTURE_2D, *tex);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

    glTexStorage2D(GL_TEXTURE_2D,1,GL_R8,atlasWidth,atlasHeight);
}

void FontManager::iterateGlyphs(FontDefinition def, unsigned int* width, unsigned int* height) {

    FT_Face face = (FT_Face)malloc(sizeof(FT_Face));

    if(int error = FT_New_Face(*ft_library,def.face.c_str(),0,&face)){
        Logger::logError("Failed loading face '" + def.face + "'. Error code: " + std::to_string(error));
        return;
    }
    FT_Set_Pixel_Sizes(face,0,def.pixelSize);
    FT_GlyphSlot glyph = face->glyph;

    for(unsigned char c = 32; c < 128; c++){

        if(int error = FT_Load_Char(face,c,FT_LOAD_RENDER)){
            Logger::logError("Failed loading char '" + std::to_string(c) + "'. Error code: " + std::to_string(error));
            continue;
        }

        *height = max(*height,glyph->bitmap.rows);
        *width += glyph->bitmap.width;
    }

}

void FontManager::drawGlyphs() {

    FT_Face face;
    int x = 0;
    for(auto fontIt : loadedFonts){

        Font* font = fontIt.second;
        FontDefinition fDef = fontIt.first;
        if(int error = FT_New_Face(*ft_library,fDef.face.c_str(),0,&face)){
            Logger::logError("Failed loading face '" + fDef.face
                             + "'. Error code: " + std::to_string(error));
            continue;
        }
        FT_Set_Pixel_Sizes(face,0,fDef.pixelSize);
        FT_GlyphSlot glyph = face->glyph;

        for(unsigned char c = 32; c < 128; c++){

            if(int error = FT_Load_Char(face,c,FT_LOAD_RENDER)){
                Logger::logError("Failed loading char '" + std::to_string(c)
                                 + "'. Error code: " + std::to_string(error));
                continue;
            }

      if (glyph->bitmap.width > 0 && glyph->bitmap.rows > 0) {
          glTexSubImage2D(GL_TEXTURE_2D, 0, x, 0, glyph->bitmap.width, glyph->bitmap.rows,
          GL_RED, GL_UNSIGNED_BYTE, glyph->bitmap.buffer);
          CHECK_GL_ERROR();
      }

            font->addGlyph(glyph,x,c);
            x += glyph->bitmap.width;

        }
    }
}

FontManager::FontManager() {

    ft_library = (FT_Library*)malloc(sizeof(FT_Library));
    const int error = FT_Init_FreeType(ft_library);
    if(error != 0) {
        throw new runtime_error("Could not initiate FreeType. Error code: " + std::to_string(error));
    }
}

FontManager::~FontManager() {
    if (ft_library != nullptr) {
        free(ft_library);
    }
}
