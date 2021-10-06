#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec3 texCoord;

uniform sampler2D ourTexture;

void main()
{
   FragColor = vec4(ourColor, 1.0f) * (1 - texCoord.z) + 
			   texture(ourTexture, (vec2)texCoord) * texCoord.z;
}
