/*******************************************************************************
* 
* FILENAME : colors.c
*
* DESCRIPTION :	
*		File that loads colors into memory
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    25/09/2021
*
*******************************************************************************/
#define BLACK		0
#define COLORLESS	0
#define WHITE		1
#define PURPLE		2
#define ORANGE		3
#define	DARK_GREY	4
#define	LIGHT_GREY	5
#define GREEN		6
#define YELLOW		7
#define RED			8
#define PINK		9

void loadColors(GLfloat **colors)
{
/*	GLfloat temp_colors[]= {0.65f, 0.65f, 0.55f, //T0.
							0.55f, 0.15f, 0.5f,  //U0.
							0.0f, 0.0f, 0.0f,    //I0. 
							0.55f, 0.4f, 0.05f,	 //T1. 
							0.8f, 0.4f, 0.2f,	 //U1.
							0.9f, 0.9f, 0.9f,	 //I1. 
							0.9f, 0.9f, 0.0f,    //T2.
							0.3f, 0.1f, 0.0f,	 //U2.
							0.55f, 0.55f, 1.0f,	 //I2.
							0.7f, 0.4f, 0.0f,	 //T3.
							0.0f, 0.0f, 0.0f,	 //U3.
							0.9f, 0.9f, 0.3f,	 //I3.
							0.15f, 0.9f, 0.6f,	 //T4.
							0.0f, 0.0f, 0.0f,	 //U4.
							0.8f, 0.2f, 0.2f,	 //I4.
							0.0f, 0.0f, 0.0f,	 //T5,
							0.0f, 0.0f, 0.0f, 	 //U5,
							0.5f, 0.5f, 0.5f, 	 //I5,
							0.0f, 0.0f, 0.0f, 	 //T6,
							0.0f, 0.0f, 0.0f, 	 //U6,
							0.1f, 0.66f, 0.1f 	 //I6,
							};
*/
	GLfloat temp_colors[]= {0.0,	0.0,	0.0,	//0.BLACK
							1.0,	1.0,	1.0,	//1.WHITE
							0.55,	0.15,	0.5,	//2.PURPLE
							0.8,	0.4f,	0.2,	//3.ORANGE
							0.15,	0.15,	0.15,	//4.DARK_GREY
							0.35,	0.35,	0.35,	//5.LIGHT_GREY
							0.1,	0.66,	0.1,	//6.GREEN
							0.9,	0.9,	0.3,	//7.YELLOW
							0.8,	0.2,	0.2,	//8.RED
							1.0,	0.5,	0.8,	//9.PINK
							};
							
	
	*colors = malloc(sizeof(temp_colors));
	memcpy(*colors, temp_colors, sizeof(temp_colors));
	
}

GLfloat* getColor(int color, GLfloat *colors)
{
	return colors + color * 3;
}
