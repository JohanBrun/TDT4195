#version 430 core

in layout(location=0) vec3 position;
in layout(location=1) vec4 color;

out vec4 vertexColor;

void main()
{
    gl_Position = vec4(position, 1.0f);
    vertexColor = color;
}