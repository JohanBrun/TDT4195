#version 430 core

in layout(location=0) vec3 position;
in layout(location=1) vec4 color;

out vec4 vertex_color;

// Task 4
uniform layout(location=5) mat4 transform_matrix;

void main()
{
    // Task 3
    // mat4x4 transform_matrix = mat4(1);
    // transform_matrix[0][0] = 1.5;

    gl_Position = transform_matrix * vec4(position, 1.0f);
    vertex_color = color;
}