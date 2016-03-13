//
// Created by simon on 2016-03-12.
//

#ifndef SUPER_BUBBA_AWESOME_SPACE_TEXTOBJECT_H
#define SUPER_BUBBA_AWESOME_SPACE_TEXTOBJECT_H

#include <IHudDrawable.h>
#include <GL/glew.h>
#include <vector>

using namespace std;
using namespace chag;

class TextObject : public IHudDrawable {

public:
    TextObject(string text, Font* font, int width, int height, int x, int y);
    void virtual render(ShaderProgram* shaderProgram, float4x4* projectionMatrix);

protected:
    string text;
    Font* font;
    int height, width, x, y;
    int numVertices;

    GLuint vao;

private:
    void addPoints(std::vector<GLfloat> *data, int i, initializer_list<float> elems);
    void getLines(vector<string>* lines, vector<int>* linesOffsetLeft, int* numChars);
    int getOffsetByLineLength(int lineLength);
    void init(vector<string> lines, vector<int> linesOffsetLeft, int numChars);
    float4x4 getModelMatrix();

};


#endif //SUPER_BUBBA_AWESOME_SPACE_TEXTOBJECT_H
