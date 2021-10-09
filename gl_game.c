/*******************************************************************************
* 
* FILENAME : gl_game.c
*
* DESCRIPTION :
*       This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    2/10/2021
*
*******************************************************************************/

// FIXME(filip): Visual glitch when changing turns sometimes

void initializeGL(GLFWwindow **window, 
				  GLuint *VAO, GLuint *VBO, 
				  GLuint *shader_program, 
				  GLuint *sprite_texture,
				  char* sprite_data)
{
	// GENERAL START SETUP -----------------------------------------------------
	// Initialize GLFW
	glfwInit();

	// Tell GLFW what version of OpenGL we are using
	// In this case we are using OpenGL 3.3
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	// Tell GLFW we are using the CORE profile
	// So that means we only have the modern functions
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Create a GLFWwindow object
	*window = glfwCreateWindow(900, 900, "Game4X", NULL, NULL);
	// Error check if the window fails to create
	if (*window == NULL)
	{
		printf("Failed to create GLFW window");
		glfwTerminate();
	}
	// Introduce the window into the current context
	glfwMakeContextCurrent(*window);
	glfwSetInputMode(*window, GLFW_STICKY_KEYS, GLFW_TRUE);
	// TODO(filip): fix mouse lag
	// Load GLAD so it configures OpenGL
	gladLoadGL();
	// Specify the viewport of OpenGL in the Window
	// In this case the viewport goes from x = 0, y = 0, to x = 800, y = 800
	glViewport(0, 0, 900, 900);

	const char* vertex_shader_src = loadFile("shader.vert");
	const char* fragment_shader_src = loadFile("shader.frag");

	// Create Vertex Shader Object and get its reference
	GLuint vertex_shader = glCreateShader(GL_VERTEX_SHADER);
	// Attach Vertex Shader source to the Vertex Shader Object
	glShaderSource(vertex_shader, 1, &vertex_shader_src, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(vertex_shader);
	glEnable(GL_BLEND);

	// Create Fragment Shader Object and get its reference
	GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
	// Attach Fragment Shader source to the Fragment Shader Object
	glShaderSource(fragment_shader, 1, &fragment_shader_src, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(fragment_shader);

	// Create Shader Program Object and get its reference
	*shader_program = glCreateProgram();
	// Attach the Vertex and Fragment Shaders to the Shader Program
	glAttachShader(*shader_program, vertex_shader);
	glAttachShader(*shader_program, fragment_shader);
	// Wrap-up/Link all the shaders together into the Shader Program
	glLinkProgram(*shader_program);

	// Delete the now useless Vertex and Fragment Shader objects
	free((void*)vertex_shader_src);
	free((void*)fragment_shader_src);
	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);

	// Create reference containers for the Vertex Array Object, 
	// the Vertex Buffer Object, and the Element Buffer Object

	// Generate the VAO, VBO, and EBO with only 1 object each
	glGenVertexArrays(1, VAO);
	glGenBuffers(1, VBO);

	glGenTextures(1, sprite_texture);
	glBindTexture(GL_TEXTURE_2D, *sprite_texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, TEXMAP_WIDTH, TEXMAP_HEIGHT, 0, GL_RGBA, GL_UNSIGNED_BYTE, sprite_data);
	glGenerateMipmap(GL_TEXTURE_2D);

	glBindVertexArray(*VAO);
	glBindBuffer(GL_ARRAY_BUFFER, *VBO);
	
	// Configure the Vertex Attributes so that OpenGL knows how to read the VBO
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)(3 * sizeof(float)));
	glEnableVertexAttribArray(1);

	glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)(7 * sizeof(float)));
	glEnableVertexAttribArray(2);
	
	glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	
	// Bind both the VBO and VAO to 0 so that we don't accidentally 
	// modify the VAO and VBO we created
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);
}

void finalizeGL(GLFWwindow *window, GLuint VAO, GLuint VBO, GLuint shader_program)
{
	glDeleteVertexArrays(1, &VAO);
	glDeleteBuffers(1, &VBO);
	glDeleteProgram(shader_program);
	glfwDestroyWindow(window);
	glfwTerminate();
}

// Generates vertices for a single hexagon + color
// Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildHexagonVertices(float offset_x, float offset_y, float z_index, 
			 			 	  float color_r, float color_b, float color_g, 
							  float color_a, 
							  float tex_x, float tex_y, float tex_weight, 
							  float tex_width, float tex_height, 
							  float side_len, GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y + side_len;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.5 * tex_width);
	*(dest++) = tex_y + (1.0 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (1.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/2 * tex_height);
	*(dest++) = tex_weight;
	
	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (1.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/6 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = offset_x;
	*(dest++) = offset_y - side_len;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.5 * tex_width);
	*(dest++) = tex_y + (0.0 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/6 * tex_height);
	*(dest++) = tex_weight;
	
	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/2 * tex_height);
	*(dest++) = tex_weight;
	
	return dest;
}

GLfloat* buildRectVertices(float offset_x, float offset_y, float z_index, 
						   float size_x, float size_y,
			 			   float color_r, float color_b, float color_g, 
						   float tex_x, float tex_y, float tex_weight, 
						   GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = 1.0;
	*(dest++) = tex_x + 0.5;
	*(dest++) = tex_y + 1.0;
	*(dest++) = tex_weight;

	*(dest++) = offset_x + size_x;
	*(dest++) = offset_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = 1.0;
	*(dest++) = tex_x + 1.0;
	*(dest++) = tex_y + sqrt(3)/2;
	*(dest++) = tex_weight;
	
	*(dest++) = offset_x + size_x;
	*(dest++) = offset_y + size_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = 1.0;
	*(dest++) = tex_x + 1.0;
	*(dest++) = tex_y + sqrt(3)/6;
	*(dest++) = tex_weight;

	*(dest++) = offset_x;
	*(dest++) = offset_y + size_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = 1.0;
	*(dest++) = tex_x + 0.5;
	*(dest++) = tex_y + 0.0;
	*(dest++) = tex_weight;

	return dest;
}

void freeMapVertices(GLfloat* vertices)
{
	free(vertices);
}

// Called everytime the map needs to be rendered
void updateMapGL(game_state *state)
{
	int i, j, k;
	float x, y;

	if(state->map_object == NULL)
	{
			
		int vertices_size = state->size_x * state->size_y * VERTEX_CHANNELS * 6;

		createGLObject(&state->map_object, 
					   vertices_size);
		state->map_object->vertex_step = 6;
		addGLObject(state->map_object, &state->gl_objects);
	}

	GLfloat *iter_v = state->map_object->vertices;
	GLfloat *beginWrite=NULL, *endWrite=NULL;
	
	// TODO(filip): Optimize this
	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			hexGridToViewport(j, i, 
							  state->map_offset_x, state->map_offset_y,
							  state->map_hex_size,
							  &x, &y);
			sub_texture temp = loadSubtextureBounds(TEXTURE_GRASS);
			iter_v = buildHexagonVertices(x, y, 0,
								    	  state->colors[state->terrain_map[i][j] * 9 + 0], 
								    	  state->colors[state->terrain_map[i][j] * 9 + 1], 
								    	  state->colors[state->terrain_map[i][j] * 9 + 2],
										  1.0, 
										  temp.start_x,
										  temp.start_y,
										  1.0,
										  temp.width,
										  temp.height,
								    	  state->map_hex_size * 0.9, iter_v);
		}
	}
	state->map_object->modified = 1;
}

void updateUnitGL(game_state *state, unit* u)
{
	if(u->health>=0)
	{
		float position_x; 
		float position_y;
		hexGridToViewport(u->position_x, u->position_y, 
						  state->map_offset_x, state->map_offset_y,
						  state->map_hex_size, 
						  &position_x, &position_y);
		float color_r = state->colors[u->type * u->team * 9 + 3];
		float color_g = state->colors[u->type * u->team * 9 + 4];
		float color_b = state->colors[u->type * u->team * 9 + 5];
		if(u->object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 6; // Hexagon has 6 vertices, each with 10 float values

			createGLObject(&u->object, 
						   vertices_size);
			u->object->vertex_step = 6;
			addGLObject(u->object, &state->gl_objects);
			state->vertices_size+= u->object->vertices_size;
		}
		sub_texture temp = loadSubtextureBounds(2);
		buildHexagonVertices(position_x, position_y, 0.2f,
							 color_r, color_g, color_b, 1.0,
							 temp.start_x,
							 temp.start_y,
							 1.0,
							 temp.width,
							 temp.height,
							 0.8 * state->map_hex_size,
							 u->object->vertices);
		u->object->modified = 1;
	}
	else{
		u->object->deleted = 1;
	}
}

void updateUnitListGL(game_state *state)
{
	int i;
	for(i = 0; i < state->player_number; i++)
	{
		unit *iter = state->players[i].units;
		while(iter != NULL)
		{
			updateUnitGL(state, iter);
			iter = iter->next;
		}
	}	
}

void updateHighlight(game_state *state)
{
	if(state->selected_unit != NULL)
	{
		float position_x = state->map_offset_x + 
						   (state->selected_unit->position_x + state->selected_unit->position_y * 0.5) * 
						   sqrt(3) * 
						   state->map_hex_size;

		float position_y = state->map_offset_y + 
						   state->selected_unit->position_y * 
						   state->map_hex_size * 
						   3/2;
		
		float color_r = 0.9f;
		float color_g = 0.9f;
		float color_b = 0.9f;
		float color_a = 0.5;

		if(state->highlight_object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 6; // Hexagon has 6 vertices, each with 10 float values

			createGLObject(&state->highlight_object, 
						   vertices_size);
			state->highlight_object->vertex_step = 6;
			addGLObject(state->highlight_object, &state->gl_objects);
			state->vertices_size+= state->highlight_object->vertices_size;
		}

		buildHexagonVertices(position_x, position_y, 0.2f,
							 color_r, color_g, color_b, color_a,
							 0.0, 0.0, 0.0,
							 0.0, 0.0,
							 0.8 * state->map_hex_size,
							 state->highlight_object->vertices);
		state->highlight_object->modified = 1;

	}
	else
	{
		// Marks for deletion
		if(state->highlight_object!=NULL)
		{
			state->highlight_object->deleted = 1;
			state->highlight_object = NULL;
		}
	}
}

void updateCursor(game_state *state)
{
	if(state->cursor_active != 0)
	{
		float position_x = state->map_offset_x + 
						   (state->cursor_x + state->cursor_y * 0.5) * 
						   sqrt(3) * 
						   state->map_hex_size;

		float position_y = state->map_offset_y + 
						   state->cursor_y * 
						   state->map_hex_size * 
						   3/2;
		
		float color_r = state->colors[9 * state->cursor_color + 6];
		float color_g = state->colors[9 * state->cursor_color + 7];
		float color_b = state->colors[9 * state->cursor_color + 8];
		float color_a = 0.8;

		if(state->cursor_object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 6; // Hexagon has 6 vertices, each with 10 float values
			createGLObject(&state->cursor_object, 
						   vertices_size);
			state->cursor_object->vertex_step = 6;
			GLfloat *iter_v = state->cursor_object->vertices;
			addGLObject(state->cursor_object, &state->gl_objects);
			state->vertices_size+= state->cursor_object->vertices_size;
		}
		
		buildHexagonVertices(position_x, position_y, 0.4,
							 color_r, color_g, color_b, color_a, 
							 0.0, 0.0, 0.0,
							 0.0, 0.0,
							 0.55 * state->map_hex_size,
							 state->cursor_object->vertices);
		state->cursor_object->modified = 1;

	}
	else
	{
		// Marks for deletion
		if(state->cursor_object!=NULL)
		{
			state->cursor_object->deleted = 1;
			state->cursor_object = NULL;
		}
	}
}

void updateFogOfWar(game_state *state)
{
	int i, j;
	gl_object *object;
	int old_vertices_size = 0; 	
	int vertices_size = state->size_x * state->size_y * VERTEX_CHANNELS * 6;

	if(state->fog_of_war_object == NULL)
	{
		createGLObjectEmpty(&object); // DIFF
		object->vertex_step = 6;
		object->vertices = malloc(vertices_size * sizeof(GLfloat)); //DIFF
	}
	else
	{
		object = state->fog_of_war_object; // DIFF
		old_vertices_size = object->vertices_size; //DIFF
		object->vertices_size = 0; //DIFF
	}

	// NOTE(filip): We don't know the exact size of the fog object, so we alloc
	// 				max size.
	GLfloat *iter_v = object->vertices;
	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			int is_fog = 1;
			struct unit *iter = state->players[state->turn].units;
			float x, y;
			while(iter!=NULL)
			{
				if(hexDistance(iter->position_x, iter->position_y, j, i) <= 2)
					is_fog = 0;			
				iter = iter->next;
			}
			if(is_fog)
			{
				hexGridToViewport(j, i, 
								  state->map_offset_x, state->map_offset_y, 
								  state->map_hex_size, 
								  &x, &y);
				object->vertices_size+= VERTEX_CHANNELS * 6;
				sub_texture temp = loadSubtextureBounds(TEXTURE_FOG);
				iter_v = 
					buildHexagonVertices(x, y, 0.0f,
										 0.15f, 0.15f, 0.15f, 1.0,
										 temp.start_x,
										 temp.start_y,
										 1.0,
										 temp.width,
										 temp.height,
										 state->map_hex_size, iter_v);
			}		
		}
	}
	if(state->fog_of_war_object == NULL)
	{	
		addGLObject(object, &state->gl_objects);
		state->fog_of_war_object = object;
		object->modified = 1;
		getTotalSizes(state->gl_objects, &state->vertices_size);
	}
	else
	{
		if(old_vertices_size != object->vertices_size){
			object->modified = 1;
			object->resized =  object->vertices_size - old_vertices_size;
		}
	}
	markObjectsModified(object);
}

void updateForeground(game_state *state)
{
	float position_x = -1; 
	float position_y = -1;
	float size_x = 2;
	float size_y = 0.3;
	float color_r = 0.1;
	float color_g = 0.1;
	float color_b = 0.1; 

	if(state->foreground_object == NULL)
	{
		int vertices_size = VERTEX_CHANNELS * 4; // Hexagon has 6 vertices, each with 10 float values

		createGLObject(&state->foreground_object, 
					   vertices_size);
		state->foreground_object->vertex_step = 4;
		addGLObject(state->foreground_object, &state->gl_objects);
		state->vertices_size+= state->foreground_object->vertices_size;
	}

	buildRectVertices(position_x, position_y, -0.9f,
					  size_x, size_y,
					  color_r, color_g, color_b,
					  0.0, 0.0, 0.0,
					  state->foreground_object->vertices);
	state->foreground_object->modified = 1;
}

// FIXME(filip): Highlight gets displayed over foreground
void updateUIGL(game_state *state)	
{
	updateFogOfWar(state);
	updateCursor(state);
	updateHighlight(state);
	updateForeground(state);
}

// NOTE(filip): This assumes the correct buffers are bound
// NOTE(filip): This wipes the whole gl buffer and marks gl objects to
// 				rewrite it
void updateStoreSizeGL(game_state *state)
{
	getTotalSizes(state->gl_objects, &state->vertices_size);
	int modified = 0;
	if(state->vertices_size > state->vertices_store_size)
	{
		state->vertices_store_size = nextPowerOf2(state->vertices_size);
		glBufferData(GL_ARRAY_BUFFER, state->vertices_store_size * sizeof(GLfloat), NULL, GL_DYNAMIC_DRAW);
		modified = 1;
	}

	if(modified)
	{
		markObjectsModified(state->gl_objects);	
	}
}

void updateGL(game_state *state, GLuint VAO, GLuint VBO, GLuint shader_program, GLuint texture)
{
	// Specify the color of the background
	glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
	// Clean the back buffer and assign the new color to it
	glClear(GL_COLOR_BUFFER_BIT);

	glBindTexture(GL_TEXTURE_2D, texture);	
	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);

	glUniform1i(glGetUniformLocation(shader_program, "isText"), 0);
	updateStoreSizeGL(state);
	gl_object *iter = state->gl_objects;
	while(iter!=NULL)
	{
		if(iter->deleted)
		{
			gl_object *temp = iter->next;
			removeGLObject(&state->gl_objects, iter);	
			markObjectsModified(state->gl_objects);
			iter = temp;	
			getTotalSizes(state->gl_objects, &state->vertices_size);
		}
		else 
		{
			if(iter->modified)
			{
				if(iter->resized)
				{
					markObjectsModified(iter->next);
					getTotalSizes(state->gl_objects, &state->vertices_size);
					computeListOffsets(state->gl_objects);
					getTotalSizes(state->gl_objects, &state->vertices_size);
					iter->resized = 0;
				}
				glBufferSubData(GL_ARRAY_BUFFER, 
						iter->vertices_offset * sizeof(GLfloat), 
						iter->vertices_size * sizeof(GLfloat), 
						iter->vertices);
				
				iter->modified = 0;
			}
			for(int i = iter->vertices_offset/VERTEX_CHANNELS; 
				i < (iter->vertices_offset + iter->vertices_size) / VERTEX_CHANNELS; 
				i = i + iter->vertex_step)
				glDrawArrays(GL_TRIANGLE_FAN, i, iter->vertex_step);
			iter = iter->next;

		}
	}

	glUseProgram(shader_program);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);	
}

