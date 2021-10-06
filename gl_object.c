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
	int vertices_offset;
	struct gl_object *next;	
	int modified; // NOTE(filip): This turns to 1 when it needs to be updated
	int resized;
	int deleted; // NOTE(filip): This turns to 1 when it needs to be deleted
	
	int type;
} gl_object;

// NOTE(filip): problem with holding address related information in ints and not
// long long?
void createGLObject(gl_object **o, 
					int vertices_size)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = vertices_size;
	(*o)->vertices = malloc(vertices_size*sizeof(GLfloat));
	(*o)->modified = 0;
	(*o)->deleted = 0;
	(*o)->resized = 0;
	(*o)->type = SPRITE_OBJECT;
	(*o)->next = NULL;
}

void createGLObjectEmpty(gl_object **o)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = 0;
	(*o)->modified = 0;
	(*o)->deleted = 0;
	(*o)->resized = 0;
	(*o)->type = SPRITE_OBJECT;
	(*o)->next = NULL;
}

void addGLObject(gl_object *src, gl_object **dst)
{
	if((*dst) == NULL)
	{
		(*dst) = src;
		src->vertices_offset = 0;
	}
	else if((*dst)->next == NULL)
	{
		(*dst)->next = src;
		src->vertices_offset = (*dst)->vertices_offset + (*dst)->vertices_size;
	}
	else
	{
		addGLObject(src, &(*dst)->next);
	}
}

// TODO(filip): Free unit list function

void markObjectsModified(gl_object *start)
{
	while(start != NULL)
	{
		start->modified = 1;
		start = start->next;
	}
}

// NOTE(filip): Computes offsets up to target without touching target (target 
// 				can be NULL)
void computeListOffsets(gl_object *list)
{
	int vertices_offset = 0;
	gl_object *iter = list;
	while(iter != NULL)
	{
		iter->vertices_offset = vertices_offset;
		vertices_offset += iter->vertices_size;
		iter = iter->next;
	}
}

void removeGLObject(gl_object **base, gl_object *target)
{
	gl_object *iter = *base;
	if(iter == target)
	{
		*base = target->next;
		computeListOffsets(target->next);
		markObjectsModified(target->next);
		free(target);
	}
	else
	{
		printf("LOOKING FOR OBJ TO DELETE:\n");
		while(iter != NULL)
		{
			if(iter->next == target)
			{
				printf("FOUND ONE!:\n");
				iter->next = target->next;
				computeListOffsets(*base);
				markObjectsModified(*base); // NOTE(filip): this isn't right
				free(target);
			}
			iter = iter->next;
		}
		printf("DONE LOOKING..!\n");
	}
}

void getTotalSizes(gl_object *list, int *vertices_total)
{
	*vertices_total = 0;
	gl_object *iter = list;
	while(iter != NULL)
	{
		*vertices_total += iter->vertices_size;
		iter = iter->next;
	}
}

void printGLObject(gl_object *object)
{
	printf("gl_object: %x\nvertex_size: %d\nvertex_offset: %d\n"
			"modified:%d\ndeleted:%d\nnext:%x\n",
			object,
			object->vertices_size,
			object->vertices_offset,
			object->modified,
			object->deleted,
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
