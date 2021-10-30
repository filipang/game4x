/*******************************************************************************
* 
* FILENAME : gl_object.c
*
* DESCRIPTION :
*       Main file for game4x. This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    25/09/2021
*
*******************************************************************************/

#define SPRITE_OBJECT 0
#define TEXT_OBJECT 1

typedef struct gl_object
{
	GLfloat* vertices; // 0
	int vertices_size; // 8
	struct gl_object *next; //16	
	int enabled;	//24
	char *text; //32

	int vertex_step; //40
	int drawing_mode; //44
} gl_object;

// NOTE(filip): problem with holding address related information in ints and not
// long long?
/*void createGLObject(gl_object **o, 
					int vertices_size)
{
	gl_object *obj = malloc(sizeof(gl_object));
	obj->vertices_size = vertices_size;
	obj->vertices = malloc(vertices_size*sizeof(GLfloat));
	obj->enabled = 1;
	obj->drawing_mode = GL_TRIANGLE_FAN;
	obj->text = NULL;
	obj->next = NULL;
	*o = obj;
}
*/
/*
void createGLObjectEmpty(gl_object **o)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = 0;
	(*o)->enabled = 1;
	(*o)->drawing_mode = GL_TRIANGLE_FAN;
	(*o)->text = NULL;
	(*o)->next = NULL;
}
*/
/*void addGLObject(gl_object *src, gl_object **dst)
{
	if((*dst) == NULL)
	{
		(*dst) = src;
	}
	else if((*dst)->next == NULL)
	{
		(*dst)->next = src;
	}
	else
	{
		addGLObject(src, &(*dst)->next);
	}
}*/

// TODO(filip): Free unit list function

//void printGLObject(gl_object *object);
/*void removeGLObject(gl_object **base, gl_object *target)
{
	if(base == NULL || target == NULL) return;
	gl_object *iter = *base;
	if(iter == target)
	{
		if(target->text != NULL)
			free(target->text);
		*base = target->next;
		free(target);
	}
	else
	{
		while(iter != NULL)
		{
			if(iter->next == target)
			{
				iter->next = target->next;
				if(target->text != NULL)
					free(target->text);

				free(target);
			}
			iter = iter->next;
		}
	}
}*/
/*void printGLObject(gl_object *object)
{
	if(object->text != NULL)
		printf("gl_object: %x\nvertex_size: %d\n"
				"next:%x\ntext:%c\n",
				object,
				object->vertices_size,
				object->next,
				*object->text);
	else
		printf("gl_object: %x\nvertex_size: %d\n"
				"next:%x\n",
				object,
				object->vertices_size,
				object->next);
}

void printGLObjectList(gl_object *iter)
{
	printf("Printing object list: \n");
	int i = 0;
	while(iter != NULL)
	{
		printf("%d.", i);
		i++;
		printGLObject(iter);
		printf("\n");
		iter = iter->next;
	}
}*/
