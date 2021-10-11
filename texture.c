/*******************************************************************************
* 
* FILENAME : texture.c
*
* DESCRIPTION :
*      Source file oriented around the texture struct 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    2/10/2021
*
*******************************************************************************/
#define SUB_TEXTURE_COUNT 2
#define TEXMAP_WIDTH 576
#define TEXMAP_HEIGHT 256

#define TEXTURE_GOLEM	2
#define TEXTURE_GRASS	1
#define TEXTURE_FOG		0

typedef struct sub_texture
{
	GLfloat start_x;
	GLfloat start_y;
	GLfloat width;
	GLfloat height;
} sub_texture;
char *loadTexture(const char *texture_location)
{
	int nr_channels, width, height;
	return stbi_load(texture_location, &width, &height, &nr_channels, 0);
}

// NOTE(filip): This approach is not very scalable, consider implementing 
// 				a streamlined texture packing method				
sub_texture loadSubtextureBounds(int texture_index)
{
	sub_texture result;
	if(texture_index == 0)	
	{
		result.start_x = ((GLfloat) (0.0 * 256.0 * 2 + 3.0)) / (2 * TEXMAP_WIDTH);
		result.start_y = ((GLfloat) (0.0 * 256.0 * 2 + 3.0)) / (2 * TEXMAP_HEIGHT);
		result.width = ((GLfloat) (2.0 * 256.0 - 6.0)) / (2 * TEXMAP_WIDTH);
		result.height = ((GLfloat) (2.0 * 256.0 - 6.0)) / (2 * TEXMAP_HEIGHT);
	}
	else if(texture_index == 1)
	{
		result.start_x = ((GLfloat) (1.0 * 256.0 * 2 + 3.0)) / (2 * TEXMAP_WIDTH);
		result.start_y = ((GLfloat) (0.0 * 256.0 * 2 + 3.0)) / (2 * TEXMAP_HEIGHT);
		result.width = ((GLfloat) (2.0 * 256.0 - 6.0)) / (2 * TEXMAP_WIDTH);
		result.height = ((GLfloat) (2.0 * 256.0 - 6.0)) / (2 * TEXMAP_HEIGHT);
	}
	else if(texture_index == 2)
	{
		result.start_x = ((GLfloat) (2.0 * 256.0 * 2 + 3.0)) / (2 * TEXMAP_WIDTH);
		result.start_y = ((GLfloat) (0.0 * 192.0 * 2 + 3.0)) / (2 * TEXMAP_HEIGHT);
		result.width = ((GLfloat) (2.0 * 64.0 - 6.0)) / (2 * TEXMAP_WIDTH);
		result.height = ((GLfloat) (2.0 * 64.0 - 6.0)) / (2 * TEXMAP_HEIGHT);
	}

	return result;
}	
