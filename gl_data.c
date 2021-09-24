typedef struct gl_data{
	GLfloat* vertices;
	GLuint* indices;
	int vertices_size;
	int indices_size;
} gl_data;

void prepareAddGLData(gl_data *data, int vertices_size, int indices_size){
	if(data->vertices == NULL){
		data->vertices = (GLfloat *) malloc(vertices_size * sizeof(GLfloat));	
	}
	else{
		printf("Before:\nTo be added:\nvertices_size: %d\nindices_size: %d\nIn data:\nvertices_size:%d\nindices_size:%d\n", vertices_size, indices_size, data->vertices_size, data->indices_size);
		data->vertices = (GLfloat *) realloc(data->vertices, (data->vertices_size + vertices_size)*sizeof(GLfloat));
		printf("After:\nTo be added:\nvertices_size: %d\nindices_size: %d\nIn data:\nvertices_size:%d\nindices_size:%d\n", vertices_size, indices_size, data->vertices_size, data->indices_size);
		// data->vertices_size += size; - NOTE(filip): This happens after the 
		// 											   actual data write.
	}

	if(data->indices == NULL){
		data->indices = (GLuint *) malloc(indices_size * sizeof(GLuint));	
	}
	else{
		printf("Before:\nTo be added:\nvertices_size: %d\nindices_size: %d\nIn data:\nvertices_size:%d\nindices_size:%d\n",vertices_size, indices_size, data->vertices_size, data->indices_size);
		data->indices = (GLuint *) realloc(data->indices, (data->indices_size + indices_size)*sizeof(GLuint));
		printf("After:\nTo be added:\nvertices_size: %d\nindices_size: %d\nIn data:\nvertices_size:%d\nindices_size:%d\n",vertices_size, indices_size, data->vertices_size, data->indices_size);
		// data->indices_size += size; - NOTE(filip): This happens after the 
		// 											   actual data write.
	}
}

