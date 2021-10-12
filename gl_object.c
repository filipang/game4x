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
	GLfloat* vertices;
	int vertices_size;
	struct gl_object *next;	
	int enabled;
	char *text; //

	int vertex_step;
	int drawing_mode;
} gl_object;

// NOTE(filip): problem with holding address related information in ints and not
// long long?
void createGLObject(gl_object **o, 
					int vertices_size)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = vertices_size;
	(*o)->vertices = malloc(vertices_size*sizeof(GLfloat));
	(*o)->enabled = 1;
	(*o)->drawing_mode = GL_TRIANGLE_FAN;
	(*o)->text = NULL;
	(*o)->next = NULL;
}

void createGLObjectEmpty(gl_object **o)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = 0;
	(*o)->enabled = 1;
	(*o)->drawing_mode = GL_TRIANGLE_FAN;
	(*o)->text = NULL;
	(*o)->next = NULL;
}

void addGLObject(gl_object *src, gl_object **dst)
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
}

// TODO(filip): Free unit list function

void removeGLObject(gl_object **base, gl_object *target)
{
	if(base == NULL || target == NULL) return;
	gl_object *iter = *base;
	if(iter == target)
	{
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
				free(target);
			}
			iter = iter->next;
		}
	}
}

void printGLObject(gl_object *object)
{
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
}
