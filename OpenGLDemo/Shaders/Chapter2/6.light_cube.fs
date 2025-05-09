#version 330 core
out vec4 FragColor;

uniform vec3 lightCubeColor;

void main()
{
    FragColor = vec4(lightCubeColor, 1.0);
}