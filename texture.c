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

#define TEXTURE_GRASS	0
#define TEXTURE_FOG		1

typedef struct sub_texture
{
	GLfloat start_x;
	GLfloat start_y;
	GLfloat width;
	GLfloat height;
} sub_texture;

// NOTE(filip): This approach is not very scalable, consider implementing 
// 				a streamlined texture packing method				
void loadSubTextureBounds(sub_texture **sub_textures)
{
	*sub_textures = malloc(SUB_TEXTURE_COUNT * sizeof(sub_texture));
	(*sub_textures)[0].start_x = 0;
	(*sub_textures)[0].start_y = 0;
	(*sub_textures)[0].width   = 0.5;
	(*sub_textures)[0].height  = 1;

	(*sub_textures)[1].start_x = 0.5;
	(*sub_textures)[1].start_y = 0;
	(*sub_textures)[1].width   = 0.5;
	(*sub_textures)[1].height  = 1;
}
