#ifndef SHADER_H
#define SHADER_H

#include <glad/glad.h> // include glad to get all the required OpenGL headers
  
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
  
class Shader
{
private:
    void checkCompileErrors(unsigned int shader, std::string type);
public:
    // the program ID
    unsigned int ID;
    // constructor reads and builds the shader
    Shader(const char* vertexPath, const char* fragmentPath, const char* GLSL_PATH);
    // use/activate the shader
    void use();
    // detelte unuse shader
    void unuse();
    // utility uniform functions
    void setBool(const std::string &name, bool value) const;  
    void setInt(const std::string &name, int value) const;   
    void setFloat(const std::string &name, float value) const;
};
#endif