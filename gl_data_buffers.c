typedef struct gl_data_buffers{
	GLfloat* vertices;
	GLuint* indices;
	int vertices_size;
	int indices_size;
} gl_data_buffers;

void prepareAddGLData(gl_data_buffers *gl_data, int vertices_size, int indices_size){
	if(gl_data->vertices == NULL){
		gl_data->vertices = (GLfloat *) malloc(vertices_size * sizeof(GLfloat));	
	}
	else{
		gl_data->vertices = (GLfloat *) realloc(gl_data->vertices, 
				(gl_data->vertices_size + vertices_size)*sizeof(GLfloat));
	}

	if(gl_data->indices == NULL)
	{
		gl_data->indices = (GLuint *) malloc(indices_size * sizeof(GLuint));	
	}
	else
	{
		gl_data->indices = (GLuint *) realloc(gl_data->indices, (gl_data->indices_size + indices_size)*sizeof(GLuint));
	}
}

