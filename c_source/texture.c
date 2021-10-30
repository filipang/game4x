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
#define TEXMAP_WIDTH 768
#define TEXMAP_HEIGHT 64

#define TEXTURE_GRASS				5
#define TEXTURE_FOG					3
#define TEXTURE_MOUNTAIN			7
#define TEXTURE_ESSENCE				1
#define TEXTURE_GOLEM				4
#define TEXTURE_UNBOUND_ELEMENTAL	8
#define TEXTURE_FIRE_ELEMENTAL		2
#define TEXTURE_WATER_ELEMENTAL 	9
#define TEXTURE_ICE_ELEMENTAL		6
#define TEXTURE_ARCANE_ELEMENTAL	0
#define TEXTURE_WORKSHOP			10
#define TEXTURE_WISP				11


typedef struct sub_texture
{
	GLfloat start_x;
	GLfloat start_y;
	GLfloat width;
	GLfloat height;
} sub_texture;

char *loadTexture(const char *texture_location);
/*
{
	int nr_channels, width, height;
	stbi_set_flip_vertically_on_load(1);  
	return stbi_load(texture_location, &width, &height, &nr_channels, 0);
}
*/
// NOTE(filip): This approach is not very scalable, consider implementing 
// 				a streamlined texture packing method				
sub_texture* loadSubtextureBounds(int texture_index);
/*
{
	sub_texture *result = malloc(sizeof(sub_texture));
	result->start_x = ((float)texture_index) * (1.0/12.0);
	result->start_y = 0;
	result->width = 1.0/12; 
	result->height = 1;

	return result;
}
*/
