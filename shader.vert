#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec4 aCol;
layout (location = 2) in vec3 aTexCoord;

uniform int isText;

out vec4 ourColor;
out vec3 texCoord;

void main()
{
   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
   ourColor = aCol;
   texCoord = aTexCoord;
}
