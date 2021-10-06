#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;
layout (location = 2) in vec3 aTexCoord;

out vec3 ourColor;
out vec3 texCoord;

void main()
{
   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
   ourColor = vec3(aCol.x, aCol.y, aCol.z);
}
