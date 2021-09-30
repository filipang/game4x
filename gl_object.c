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

typedef struct gl_object
{
	GLfloat* vertices;
	GLuint* indices;
	int vertices_size;
	int vertices_offset;
	int indices_size;
	int indices_offset;
//	struct gl_data_buffers *gl_data;
//	int vertex_offset;
//	int vertex_size;
//	int index_offset;
//	int index_size;
	struct gl_object *next;	
	int modified; // NOTE(filip): This turns to 1 when it needs to be updated
	int deleted; // NOTE(filip): This turns to 1 when it needs to be deleted
} gl_object;

// NOTE(filip): problem with holding address related information in ints and not
// long long?
void createGLObject(gl_object **o, 
					int vertices_size, 
					int indices_size)
{
	*o = malloc(sizeof(gl_object));
	(*o)->vertices_size = vertices_size;
	(*o)->vertices = malloc(vertices_size*sizeof(GLfloat));
	(*o)->indices_size = indices_size;
	(*o)->indices = malloc(indices_size*sizeof(GLuint));
	(*o)->modified = 0;
	(*o)->deleted = 0;
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
void decreaseIndices(gl_object *iter, int amount)
{
	int i;
	while(iter != NULL)
	{
		for(i = 0; i < iter->indices_size; i++)
			iter->indices[i] -= amount;
		iter = iter->next;
	}
}

void markObjectsModified(gl_object *start)
{
	while(start != NULL)
	{
		start->modified = 1;
		start = start->next;
	}
}

void removeGLObject(gl_object **base, gl_object *target)
{
	gl_object *iter = *base;
	if(iter == target)
	{
		*base = target->next;
		decreaseIndices(target->next, target->vertices_size);
		markObjectsModified(target->next);
		free(target);
	}
	else
	{
		while(iter != NULL)
		{
			if(iter->next == target)
			{
				iter->next = target->next;
				decreaseIndices(target->next, target->vertices_size);
				markObjectsModified(target->next);
				free(target);
			}
			iter = iter->next;
		}
	}
}

// NOTE(filip): Computes offsets up to target without touching target (target 
// 				can be NULL)
void computeListOffsets(gl_object *list, gl_object *target)
{
	int vertices_offset = 0;
   	int indices_offset = 0;
	gl_object *iter = list;
	while(iter != target && iter != NULL)
	{
		iter->vertices_offset = vertices_offset;
		iter->indices_offset = indices_offset;
		vertices_offset += iter->vertices_size;
		indices_offset += iter->indices_size;
		iter = iter->next;
	}
}

void getTotalSizes(gl_object *list, int *vertices_total, int *indices_total)
{
	*vertices_total = 0;
   	*indices_total = 0;
	gl_object *iter = list;
	while(iter != NULL)
	{
		*vertices_total += iter->vertices_size;
		*indices_total += iter->indices_size;
		iter = iter->next;
	}
}

void printGLObject(gl_object *object)
{
	printf("gl_object: %x\nvertex_size: %d\nvertex_offset: %d\nindex_size: %d\n"
			"index_offset:%d\nmodified:%d\ndeleted:%d\nnext:%x\n",
			object,
			object->vertices_size,
			object->vertices_offset,
			object->indices_size,
			object->indices_offset,
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
