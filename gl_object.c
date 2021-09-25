typedef struct gl_object
{
	struct gl_data_buffers *gl_data;
	int vertex_offset;
	int vertex_size;
	int index_offset;
	int index_size;
	struct gl_object *next;	
} gl_object;

// NOTE(filip): problem with holding address related information in ints and not
// long long?
void createGLObject(gl_object **o, struct gl_data_buffers *gl_data, 
					int vertex_offset, int vertex_size, 
					int index_offset, int index_size){
	*o = malloc(sizeof(gl_object));
	(*o)->gl_data = gl_data;
	(*o)->vertex_offset = vertex_offset;
	(*o)->vertex_size = vertex_size;
	(*o)->index_offset = index_offset;
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
