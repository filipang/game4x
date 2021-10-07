#version 330 core
out vec4 FragColor;

in vec4 ourColor;
in vec3 texCoord;

uniform sampler2D ourTexture;
uniform int isText;

void main()
{
	if(isText == 0)
	{
		FragColor = ourColor * (1 - texCoord.z) + 
					texture(ourTexture, vec2(texCoord.x, texCoord.y)) * texCoord.z;
	}
	else
	{
		vec4 texColor = texture(ourTexture, vec2(texCoord.x, texCoord.y));
		FragColor = vec4(ourColor.x, ourColor.y, ourColor.z, ourColor.w * texColor.x);
	}
}
