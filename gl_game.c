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

#define VERTEX_CHANNELS (3+4+3)
#define PI 3.14159265359
#define MAXBUF 1000
#define LIBGL_DEBUG

typedef struct gl_glyph
{
  float ax; // advance.x
  float ay; // advance.y

  float bw; // bitmap.width;
  float bh; // bitmap.rows;

  float bl; // bitmap_left;
  float bt; // bitmap_top;

  float tx; // x offset of glyph in texture coordinates
} gl_glyph;

typedef struct gl_game_state
{
	game_state *state;

	struct gl_object *gl_objects;
	struct gl_object *text_objects;

	struct gl_object *map_object;
	struct gl_object *highlight_object;
	struct gl_object *fog_of_war_object;
	struct gl_object *foreground_object;
	struct gl_object *units_object;
	struct gl_object *unit_team_colors_object;
	struct gl_object *cursor_object;
	struct gl_object *help_object;

	GLfloat *colors;
	int cursor_color;
	int vertices_store_size;
	int atlas_w;
	int atlas_h;

	FT_Library library;
	FT_Face face;
	
	GLuint VAO;
	GLuint VBO;
   	GLuint shader_program;
   	GLuint texture;
	GLuint font_texture;
  int initFonts;
  gl_glyph gl_glyphs[129];
} gl_game_state;

#include "colors.c"
#include "gl_object.c"
#include "text.c"
#include "texture.c"

void initializeGraphics(GLFWwindow **window, 
				  		game_state *state,
				  		gl_game_state *gl_state)
{
	char* sprite_data = loadTexture("tex.bmp");
	initFreetype(&gl_state->library, &gl_state->face);
	// GENERAL START SETUP -----------------------------------------------------
	// Initialize GLFW
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
	glfwInit();

	// Tell GLFW what version of OpenGL we are using
	// In this case we are using OpenGL 3.3
	// Tell GLFW we are using the CORE profile
	// So that means we only have the modern functions
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_ANY_PROFILE);

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
	// gladLoadGL();
	if (GLEW_OK != glewInit()) 
	{ 
	  printf("Failed to initialize GLEW\n"); 
	} 
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
  GLint compile_ok = GL_FALSE;
  glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &compile_ok);
  if (0 == compile_ok)
  {
    fprintf(stderr, "Error in vertex shader");
  }
	glEnable(GL_BLEND);

	// Create Fragment Shader Object and get its reference
	GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
	// Attach Fragment Shader source to the Fragment Shader Object
	glShaderSource(fragment_shader, 1, &fragment_shader_src, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(fragment_shader);
  glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &compile_ok);
  GLchar errorLog[1000];
  if (0 == compile_ok)
  {
    fprintf(stderr, "Error in fragment shader");
    GLint logSize = 0;
    glGetShaderiv(fragment_shader, GL_INFO_LOG_LENGTH, &logSize);
    glGetShaderInfoLog(fragment_shader, logSize, &logSize, &errorLog[0]);
    printf("%s", errorLog);
  }

	// Create Shader Program Object and get its reference
	gl_state->shader_program = glCreateProgram();
	// Attach the Vertex and Fragment Shaders to the Shader Program
	glAttachShader(gl_state->shader_program, vertex_shader);
	glAttachShader(gl_state->shader_program, fragment_shader);
	// Wrap-up/Link all the shaders together into the Shader Program
	glLinkProgram(gl_state->shader_program);

	// Delete the now useless Vertex and Fragment Shader objects
	free((void*)vertex_shader_src);
	free((void*)fragment_shader_src);
	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);

	// Create reference containers for the Vertex Array Object, 
	// the Vertex Buffer Object, and the Element Buffer Object

	// Generate the VAO, VBO, and EBO with only 1 object each
	glGenVertexArrays(1, &gl_state->VAO);
	glGenBuffers(1, &gl_state->VBO);

	glGenTextures(1, &gl_state->texture);
	glBindTexture(GL_TEXTURE_2D, gl_state->texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, TEXMAP_WIDTH, TEXMAP_HEIGHT, 0, GL_RGBA, GL_UNSIGNED_BYTE, sprite_data);
	glGenerateMipmap(GL_TEXTURE_2D);

	glBindVertexArray(gl_state->VAO);
	glBindBuffer(GL_ARRAY_BUFFER, gl_state->VBO);
	
	// Configure the Vertex Attributes so that OpenGL knows how to read the VBO
  GLint mPosition = glGetAttribLocation(gl_state->shader_program,"aPos");
  glVertexAttribPointer(mPosition, 3, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);

  GLint mColor = glGetAttribLocation(gl_state->shader_program,"aCol");
	glVertexAttribPointer(mColor, 4, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)(3 * sizeof(float)));
	glEnableVertexAttribArray(1);

  GLint mTexCoord = glGetAttribLocation(gl_state->shader_program,"aTexCoord");
	glVertexAttribPointer(mTexCoord, 3, GL_FLOAT, GL_FALSE, 
						  10 * sizeof(float), (void*)(7 * sizeof(float)));
	glEnableVertexAttribArray(2);
	
	glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glUseProgram(gl_state->shader_program);
	
	// Bind both the VBO and VAO to 0 so that we don't accidentally 
	// modify the VAO and VBO we created
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);

	gl_state->state = state;
	loadColors(&gl_state->colors);
	glEnable(GL_LINE_SMOOTH);
	glLineWidth(3);
}

void finalizeGraphics(GLFWwindow *window, gl_game_state* gl_state)
{
	glDeleteVertexArrays(1, &gl_state->VAO);
	glDeleteBuffers(1, &gl_state->VBO);
	glDeleteProgram(gl_state->shader_program);
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
							  float side_len, int rotation, GLfloat* dest)
{
	GLfloat positions_x[6] = 
	{
		offset_x, 
		offset_x + sqrt(3)/2*side_len, 
		offset_x + sqrt(3)/2*side_len,
		offset_x,
		offset_x - sqrt(3)/2*side_len,
		offset_x - sqrt(3)/2*side_len,
	};
	GLfloat positions_y[6] = 
	{
		offset_y + side_len, 
		offset_y + side_len/2,
		offset_y - side_len/2,
		offset_y - side_len,
		offset_y - side_len/2,
		offset_y + side_len/2, 
	};

	*(dest++) = positions_x[(rotation)%6];
	*(dest++) = positions_y[(rotation)%6];
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.5 * tex_width);
	*(dest++) = tex_y + (1.0 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = positions_x[(rotation + 1)%6];
	*(dest++) = positions_y[(rotation + 1)%6];
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (1.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/2 * tex_height);
	*(dest++) = tex_weight;
	
	*(dest++) = positions_x[(rotation + 2)%6];
	*(dest++) = positions_y[(rotation + 2)%6];
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (1.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/6 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = positions_x[(rotation + 3)%6];
	*(dest++) = positions_y[(rotation + 3)%6];
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.5 * tex_width);
	*(dest++) = tex_y + (0.0 * tex_height);
	*(dest++) = tex_weight;

	*(dest++) = positions_x[(rotation + 4)%6];
	*(dest++) = positions_y[(rotation + 4)%6];
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + (0.0 * tex_width);
	*(dest++) = tex_y + (sqrt(3)/6 * tex_height);
	*(dest++) = tex_weight;
	
	*(dest++) = positions_x[(rotation + 5)%6];
	*(dest++) = positions_y[(rotation + 5)%6];
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
						   float color_a, 
						   float tex_x, float tex_y, float tex_weight, 
						   GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + 0.5;
	*(dest++) = tex_y + 1.0;
	*(dest++) = tex_weight;

	*(dest++) = offset_x + size_x;
	*(dest++) = offset_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + 1.0;
	*(dest++) = tex_y + sqrt(3)/2;
	*(dest++) = tex_weight;
	
	*(dest++) = offset_x + size_x;
	*(dest++) = offset_y + size_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + 1.0;
	*(dest++) = tex_y + sqrt(3)/6;
	*(dest++) = tex_weight;

	*(dest++) = offset_x;
	*(dest++) = offset_y + size_y;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	*(dest++) = color_a;
	*(dest++) = tex_x + 0.5;
	*(dest++) = tex_y + 0.0;
	*(dest++) = tex_weight;

	return dest;
}

void freeMapVertices(GLfloat* vertices)
{
	free(vertices);
}

int getTileTexture(int tile_type)
{
	switch(tile_type)
	{
		case TILE_NORMAL:
			return TEXTURE_GRASS;
			break;
		case TILE_BLOCK:
			return TEXTURE_MOUNTAIN;
			break;
		case TILE_ESSENCE:
			return TEXTURE_ESSENCE;
			break;
		default:
			return TEXTURE_GRASS;
			break;
	};
}

// Called everytime the map needs to be rendered
void updateMapGL(game_state *state, gl_game_state *gl_state)
{
	int i, j, k;

	if(gl_state->map_object == NULL)
	{
			
		int vertices_size = state->size_x * state->size_y * VERTEX_CHANNELS * 6;

		createGLObject(&gl_state->map_object, 
					   vertices_size);
		gl_state->map_object->vertex_step = 6;
		addGLObject(gl_state->map_object, &gl_state->gl_objects);
	}

	GLfloat *iter_v = gl_state->map_object->vertices;
	GLfloat *beginWrite=NULL, *endWrite=NULL;
	
	// TODO(filip): Optimize this
	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			int tile = state->terrain_map[i][j];
			if(state->terrain_map[i][j]!=TILE_DISABLED)
			{
				float x;
				float y;
				hexGridToViewport(j, i, 
								  state->map_offset_x, state->map_offset_y,
								  state->map_hex_size,
								  &x, &y);
				int color = WHITE;
				if(tile == TILE_ESSENCE)
					color = CYAN;
				else if(tile == TILE_FIRE)
					color = RED;
				else if(tile == TILE_ICE)
					color = CYAN;
				else if(tile == TILE_WATER)
					color = BLUE;

				float color_r = gl_state->colors[3 * color + 0];
				float color_g = gl_state->colors[3 * color + 1];
				float color_b = gl_state->colors[3 * color + 2];
				float color_a = 1;
				float tex_weight = 1;
				if(tile != TILE_NORMAL && tile != TILE_ESSENCE)
					tex_weight = 0;
				sub_texture temp = 
					loadSubtextureBounds(getTileTexture(tile));
				iter_v = buildHexagonVertices(x, y, 0,
											  color_r, color_g, color_b, 
											  1.0, 
											  temp.start_x,
											  temp.start_y,
											  tex_weight,
											  temp.width,
											  temp.height,
								    	  state->map_hex_size * 0.9, 0, iter_v);
			}
		}
	}
}

int getUnitTexture(int unit_type)
{
	if(unit_type == UNIT_WORKSHOP)
	{
		return TEXTURE_WORKSHOP;
	}
	else if(unit_type == UNIT_GOLEM)
	{
		return TEXTURE_GOLEM;
	}
	else if(unit_type == UNIT_WISP)
	{
		return TEXTURE_WISP;
	}
	else if(unit_type == UNIT_UNBOUND_ELEMENTAL)
	{
		return TEXTURE_UNBOUND_ELEMENTAL;
	}
	else if(unit_type == UNIT_FIRE_ELEMENTAL)
	{
		return TEXTURE_FIRE_ELEMENTAL;
	}
	else if(unit_type == UNIT_WATER_ELEMENTAL)
	{
		return TEXTURE_WATER_ELEMENTAL;
	}
	else if(unit_type == UNIT_ICE_ELEMENTAL)
	{
		return TEXTURE_ICE_ELEMENTAL;
	}
	else if(unit_type == UNIT_ARCANE_ELEMENTAL)
	{
		return TEXTURE_ARCANE_ELEMENTAL;
	}
}

void updateUnitListGL(game_state *state, gl_game_state *gl_state)
{
	int i;
	unit *iter;
	int vertices_size = VERTEX_CHANNELS * 6 * state->unit_count; 
	if(gl_state->units_object == NULL && gl_state->unit_team_colors_object == NULL)
	{

		createGLObject(&gl_state->units_object, 
					   VERTEX_CHANNELS * 6 * 2 * state->size_x * state->size_y);
		gl_state->units_object->vertices_size = vertices_size;
		gl_state->units_object->vertex_step = 6;
		addGLObject(gl_state->units_object, &gl_state->gl_objects);

		createGLObject(&gl_state->unit_team_colors_object, 
					   VERTEX_CHANNELS * 6 * 2 * state->size_x * state->size_y);
		gl_state->unit_team_colors_object->vertices_size = vertices_size;
		gl_state->unit_team_colors_object->vertex_step = 6;
		gl_state->unit_team_colors_object->drawing_mode = GL_LINE_LOOP;
		addGLObject(gl_state->unit_team_colors_object, &gl_state->gl_objects);
	}
	gl_state->units_object->vertices_size = vertices_size;
	GLfloat *iter_v1 = gl_state->units_object->vertices;
	GLfloat *iter_v2 = gl_state->unit_team_colors_object->vertices;
	for(i = 0; i < state->unit_count; i++)
	{
		unit* iter = &state->units[i];
		float position_x; 
		float position_y;
		hexGridToViewport(iter->position_x, iter->position_y, 
						  state->map_offset_x, state->map_offset_y,
						  state->map_hex_size, 
						  &position_x, &position_y);
		int color = getUnitTeamColor(iter->team, gl_state->colors);
		float color_r = gl_state->colors[color * 3 + 0];
		float color_g = gl_state->colors[color * 3 + 1];
		float color_b = gl_state->colors[color * 3 + 2];
		float color_a = 1;
		sub_texture temp = 
			loadSubtextureBounds(getUnitTexture(iter->type));

		iter_v2 = buildHexagonVertices(position_x, position_y, 0.2f,
							 color_r, color_g, color_b, color_a,
							 0, 0, 0, 0, 0,
							 0.9 * state->map_hex_size,
							 iter->rotation,
							 iter_v2);
		color_a = 1;
		iter_v1 = buildHexagonVertices(position_x, position_y, 0.2f,
							 color_r, color_g, color_b, color_a,
							 temp.start_x,
							 temp.start_y,
							 1.0,
							 temp.width,
							 temp.height,
							 0.80 * state->map_hex_size,
							 iter->rotation,
							 iter_v1);
	}
	gl_state->units_object->vertices_size = vertices_size;	
	gl_state->unit_team_colors_object->vertices_size = vertices_size;	
}

void updateHighlight(game_state *state, gl_game_state *gl_state)
{
	if(state->selected_unit != -1)
	{
		float position_x;		
		float position_y; 
		hexGridToViewport(state->units[state->selected_unit].position_x, 
						  state->units[state->selected_unit].position_y, 
						  state->map_offset_x, state->map_offset_y,
						  state->map_hex_size, 
						  &position_x, &position_y);

		int color = YELLOW;	
		float color_r = gl_state->colors[3 * color + 0];
		float color_g = gl_state->colors[3 * color + 1];
		float color_b = gl_state->colors[3 * color + 2];
		float color_a = 1;

		if(gl_state->highlight_object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 6; // Hexagon has 6 vertices, each with 10 float values

			createGLObject(&gl_state->highlight_object, 
						   vertices_size);
			gl_state->highlight_object->drawing_mode = GL_LINE_LOOP;
			gl_state->highlight_object->vertex_step = 6;
			addGLObject(gl_state->highlight_object, &gl_state->gl_objects);
		}

		buildHexagonVertices(position_x, position_y, 0.2f,
							 color_r, color_g, color_b, color_a,
							 0.0, 0.0, 0.0,
							 0.0, 0.0,
							 1.0 * state->map_hex_size,
							 0,
							 gl_state->highlight_object->vertices);

	}
	else
	{
		// Marks for deletion
		if(gl_state->highlight_object!=NULL)
		{
			removeGLObject(&gl_state->gl_objects, gl_state->highlight_object);
			gl_state->highlight_object = NULL;
		}
	}
}

void updateCursor(game_state *state, gl_game_state *gl_state)
{
	if(state->cursor_active != 0)
	{
		int target = findUnit(state->cursor_x, state->cursor_y, state);
		
		float position_x;		
		float position_y;
		hexGridToViewport(state->cursor_x, state->cursor_y,
						  state->map_offset_x, state->map_offset_y,
						  state->map_hex_size, 
						  &position_x, &position_y);
		
		int color;	
		if(state->mode == MODE_MOVE)
		{
			if(state->cursor_distance > state->units[state->selected_unit].mp_current)
				color = RED;

			if(state->cursor_distance == state->units[state->selected_unit].mp_current)
				color = YELLOW;

			if(state->cursor_distance < state->units[state->selected_unit].mp_current)
				color = WHITE;

			if(target != -1)	
				color = RED;
		}
		if(state->mode == MODE_ATTACK)
		{
			if(target == -1 && 
			   state->cursor_distance <= state->units[state->selected_unit].attack_range)
				color = LIGHT_GREY;
			else if(target != -1 && 
			   		state->cursor_distance <= state->units[state->selected_unit].attack_range &&
			   		state->units[target].team != state->units[state->selected_unit].team)
				color = GREEN;
			else
				color =  RED;
		}

		float color_r = gl_state->colors[3 * color + 0];
		float color_g = gl_state->colors[3 * color + 1];
		float color_b = gl_state->colors[3 * color + 2];
		float color_a = 0.6;
		
		if(gl_state->cursor_object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 6; // Hexagon has 6 vertices, each with 10 float values
			createGLObject(&gl_state->cursor_object, 
						   vertices_size);
			gl_state->cursor_object->vertex_step = 6;
			GLfloat *iter_v = gl_state->cursor_object->vertices;
			addGLObject(gl_state->cursor_object, &gl_state->gl_objects);
		}
		
		buildHexagonVertices(position_x, position_y, 0.4,
							 color_r, color_g, color_b, color_a, 
							 0.0, 0.0, 0.0,
							 0.0, 0.0,
							 0.55 * state->map_hex_size,
							 0,
							 gl_state->cursor_object->vertices);

	}
	else
	{
		// Marks for deletion
		if(gl_state->cursor_object!=NULL)
		{
			removeGLObject(&gl_state->gl_objects, gl_state->cursor_object);
			gl_state->cursor_object = NULL;
		}
	}
}

void updateFogOfWar(game_state *state, gl_game_state *gl_state)
{
	int i, j, k;
	gl_object *object;
	int vertices_size = state->size_x * state->size_y * VERTEX_CHANNELS * 6;

	if(gl_state->fog_of_war_object == NULL)
	{
		createGLObjectEmpty(&object); // DIFF
		object->vertex_step = 6;
		object->vertices = malloc(vertices_size * sizeof(GLfloat)); //DIFF
	}
	else
	{
		object = gl_state->fog_of_war_object; // DIFF
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
			int tile = state->terrain_map[i][j]; 
			float x, y;
			for(k = 0; k < state->unit_count; k++)
			{
				unit *iter = &state->units[k];
				if(hexDistance(iter->position_x, iter->position_y, j, i) <= iter->vision_range
				   && state->turn == iter->team)
					is_fog = 0;			
			}
			if(state->mode == MODE_TRANSITION) is_fog = 1;
			if(is_fog && tile != TILE_DISABLED)
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
										 state->map_hex_size,
										 0,
										 iter_v);
			}		
		}
	}
	if(gl_state->fog_of_war_object == NULL)
	{	
		addGLObject(object, &gl_state->gl_objects);
		gl_state->fog_of_war_object = object;
	}
}

void updateForeground(game_state *state, gl_game_state *gl_state)
{
	float position_x = -1; 
	float position_y = -1;
	float size_x = 2;
	float size_y = 0.3;
	float color_r = 0.1;
	float color_g = 0.1;
	float color_b = 0.1; 

	if(gl_state->foreground_object == NULL)
	{
		int vertices_size = VERTEX_CHANNELS * 4; // Hexagon has 6 vertices, each with 10 float values

		createGLObject(&gl_state->foreground_object, 
					   vertices_size);
		gl_state->foreground_object->vertex_step = 4;
		addGLObject(gl_state->foreground_object, &gl_state->gl_objects);
	}

	buildRectVertices(position_x, position_y, -0.9f,
					  size_x, size_y,
					  color_r, color_g, color_b, 1.0,
					  0.0, 0.0, 0.0,
					  gl_state->foreground_object->vertices);
}

void updateHelp(game_state *state, gl_game_state *gl_state)
{
	float position_x = -0.8; 
	float position_y = -0.8;
	float size_x = 1.6;
	float size_y = 1.6;
	float color_r = 0.1;
	float color_g = 0.1;
	float color_b = 0.1; 
	
	if(state->help == 1)
	{
		if(gl_state->help_object == NULL)
		{
			int vertices_size = VERTEX_CHANNELS * 4; // Hexagon has 6 vertices, each with 10 float values

			createGLObject(&gl_state->help_object, 
						   vertices_size);
			gl_state->help_object->vertex_step = 4;
			addGLObject(gl_state->help_object, &gl_state->gl_objects);
		}

		buildRectVertices(position_x, position_y, -0.9f,
						  size_x, size_y,
						  color_r, color_g, color_b, 0.6,
						  0.0, 0.0, 0.0,
						  gl_state->help_object->vertices);
	}
	else{
		if(gl_state->help_object != NULL)
			removeGLObject(&gl_state->gl_objects, gl_state->help_object);
			gl_state->help_object = NULL;
	}
}

// FIXME(filip): Highlight gets displayed over foreground
void updateUIGL(game_state *state, gl_game_state *gl_state)	
{
	updateFogOfWar(state, gl_state);
	updateCursor(state, gl_state);
	updateHighlight(state, gl_state);
	updateForeground(state, gl_state);
	updateHelp(state, gl_state);
}

// NOTE(filip): This assumes the correct buffers are bound
// NOTE(filip): This wipes the whole gl buffer and marks gl objects to
// 				rewrite it
void updateStoreSizeGL(int vertices_size, gl_game_state *gl_state)
{
	if(vertices_size >= gl_state->vertices_store_size)
	{
		gl_state->vertices_store_size = nextPowerOf2(vertices_size);
		glBufferData(GL_ARRAY_BUFFER, gl_state->vertices_store_size * sizeof(GLfloat), NULL, GL_DYNAMIC_DRAW);
	}
}

void updateGL(game_state *state, gl_game_state *gl_state) 
{
	glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT);
	// Update map gl
	updateMapGL(state, gl_state);		
	// Update units gl
	updateUnitListGL(state, gl_state);
	// Update UI gl
	updateUIGL(state, gl_state);
	// Specify the color of the background
	// Clean the back buffer and assign the new color to it

	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, gl_state->texture);	
	glBindVertexArray(gl_state->VAO);
	glBindBuffer(GL_ARRAY_BUFFER, gl_state->VBO);

	glUniform1i(glGetUniformLocation(gl_state->shader_program, "isText"), 0);
	gl_object *iter = gl_state->gl_objects;
	while(iter!=NULL)
	{
		updateStoreSizeGL(iter->vertices_size, gl_state);
		glBufferSubData(GL_ARRAY_BUFFER, 
				0, 
				iter->vertices_size * sizeof(GLfloat), 
				iter->vertices);
	
		for(int i = 0; 
			i < iter->vertices_size / VERTEX_CHANNELS; 
			i = i + iter->vertex_step)
			glDrawArrays(iter->drawing_mode, i, iter->vertex_step);
		iter = iter->next;
	}
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);
	updateTexts(state, gl_state);
	drawTexts(state, gl_state);
}

void freeGL(gl_game_state *gl_state)
{
	gl_object *iter = gl_state->gl_objects;
	while(iter != NULL)
	{
		free(iter->vertices);
		iter = iter->next;
	}
	iter = gl_state->text_objects;
	while(iter != NULL)
	{
		free(iter->vertices);
		iter = iter->next;
	}
	free(gl_state->colors);
}

