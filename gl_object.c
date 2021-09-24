typedef struct gl_object
{
	GLfloat *vertex_ptr;
	int vertex_size;
	GLuint *index_ptr;
	int index_size;
	struct gl_object *next;	
} gl_object;

void createGLObject(gl_object **o, GLfloat *vertex_ptr, int vertex_size, GLuint *index_ptr, int index_size){
	*o = malloc(sizeof(gl_object));
	(*o)->vertex_ptr = vertex_ptr;
	(*o)->vertex_size = vertex_size;
	(*o)->index_ptr = index_ptr;
	(*o)->index_size = index_size;
	(*o)->next = NULL;
}

void addGLObject(gl_object *src, gl_object **dst){
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
void removeGLObject(gl_object **base, gl_object *target){
	gl_object *iter = (*base);
	if((*base) == target)
	{
		gl_object *u = (*base)->next;
		free(*base);
		(*base) = u;
	}
	if(iter  != NULL)
		while(iter->next != NULL)
		{
			if(iter->next == target)
			{
				iter->next = target->next;
				free(target);
			}
			if(iter->next != NULL)
				iter = iter->next;	
		}


}
