#version 430 core

in layout(location=0) vec3 position;
in layout(location=1) vec4 color;
in layout(location=2) vec3 normal;

out vec4 vertex_color;
out vec3 vertex_normal;

// Task 4
uniform layout(location=5) mat4 transform_matrix;

void main()
{
    gl_Position = transform_matrix * vec4(position, 1.0f);
    vertex_color = color;
    vertex_normal = normal;
}