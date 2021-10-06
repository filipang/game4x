#version 330 core
out vec4 FragColor;

in vec4 ourColor;
in vec3 texCoord;

uniform sampler2D ourTexture;

void main()
{
	FragColor = ourColor * (1 - texCoord.z) + 
				texture(ourTexture, vec2(texCoord.x, texCoord.y)) * texCoord.z;
}
