/*******************************************************************************
* 
* FILENAME : main.c
*
* DESCRIPTION :
*       Main file for game4x. This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    19/09/2021
*
*******************************************************************************/

#include <stdio.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <math.h>
#include <stdlib.h>

#define PI 3.14159265359
#define MAXBUF 1000
#define MAX_PLAYERS 8

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

// NOTE(filip): Everything has to be simplified to be re-written in ASM
// NOTE(filip): Maybe move these structs in header file?
typedef struct unit
{
	float health; 			// from 0.0 to 1.0
	int position_x;			// map position
	int position_y;
	int type; 				// 1, 2 or 3
	int team; 				// from 0 to number of players
	int mp_current;			// points left this turn
	int mp_stat;			// total mp
	struct unit *next;		// next unit
} unit;

void createUnit(unit **u, int position_x, int position_y, int type, int team, int mp_stat){
	*u = malloc(sizeof(unit));
	(*u)->position_x = position_x;
	(*u)->position_y = position_y;
	(*u)->type = type;
	(*u)->team = team;
	(*u)->mp_stat = mp_stat;
	(*u)->next = NULL;
}

void addUnit(unit *src, unit **dst){
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
		addUnit(src, &(*dst)->next);
	}
}

// ACICLIC
void removeUnit(unit **base, unit *target){
	if((*base) == target)
	{
		unit *u = (*base)->next;
		free(*base);
		(*base) = u;
	}
	unit *iter = (*base);
	while(iter->next != NULL)
	{
		if(iter->next == target)
		{
			iter->next = target->next;
			free(target);
		}
		iter = iter->next;
		
	}


}

unit* findUnit(unit *iter, int position_x, int position_y){
	if(iter == NULL){	
		return NULL;
	}
	else if(iter->position_x == position_x && iter->position_y == position_y)
	{
		return iter;
	}
	else
	{
		return findUnit(iter->next, position_x, position_y);
	}
}


// NOTE(filip): Make these unsigned char* instead of unsigned char** for ASM?
// NOTE(filip): Consider splitting game_state into persistent game data and 
// 				volatile game data for future savefiles
// Keeps track of game state
typedef struct game_state 
{

	unsigned char **terrain_map;
	unsigned char **unit_map; // NOTE(filip): This will be for rendering,
							  //			  unit data will be saved elsewhere 
	unsigned char **ui_map;

	int size_x;
	int size_y;

	int player_number; // Number of players in game
	int turn; // Active player index

	// Selected unit data
	unit *selected_unit; // What unit is selected
	
	// Move cursor data
	// NOTE(filip): Make this flag clearer or find a way to remove it
	int move_cursor_x;
	int move_cursor_y;

	unit* units[MAX_PLAYERS];
	
	// NOTE(ionut): Every third element belongs to the same map to compress all
	// 				3 into one vector
	GLfloat *colors;
} game_state;

char* loadFile(const char* file_name)
{
	char *dest = NULL;
	FILE *fp = fopen(file_name, "r");
	if (fp != NULL) {
		// Go to the end of the file. 
		if (fseek(fp, 0L, SEEK_END) == 0) {
			// Get the size of the file. 
			long bufsize = ftell(fp);
			if (bufsize == -1) {   }

			// Allocate our buffer to that size. 
			dest = malloc(sizeof(char) * (bufsize + 1));

			// Go back to the start of the file. 
			if (fseek(fp, 0L, SEEK_SET) != 0) { }

			//Read the entire file into memory. 
			size_t newLen = fread(dest, sizeof(char), bufsize, fp);
			if ( ferror( fp ) != 0 ) {
				fputs("Error reading file", stderr);
			} else {
				dest[newLen++] = '\0'; // Just to be safe. 
			}
		}
		fclose(fp);
	}
	return dest;
}

// Generates vertices for a single hexagon + color
// Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildHexagonVertices(float offset_x, float offset_y, 
			 			 	  float color_r, float color_b, float color_g, 
						 	  float side_len, GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y + side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x;
	*(dest++) = offset_y - side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	return dest;
}

GLuint* buildHexagonIndices(GLuint offset, GLuint* dest)
{
	*(dest ++) = offset;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 5;

	*(dest ++) = offset + 5;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 4;

	*(dest ++) = offset + 1;
	*(dest ++) = offset + 2;
	*(dest ++) = offset + 4;

	*(dest ++) = offset + 2;
	*(dest ++) = offset + 3;
	*(dest ++) = offset + 4;

	return dest;
}


// This enerates vertices and indices for map
void buildHexagonMapGL(int size_x, int size_y, 
					   float side_len, 
				       float offset_x, float offset_y, 
					   GLfloat** vertices, GLuint** indices)
{
	int i, j;
	*vertices = (GLfloat *) malloc(6 * 6 * size_x * size_y * sizeof (GLfloat));
	*indices = (GLuint *) malloc(4 * 3 * size_x * size_y * sizeof (GLuint));
	GLfloat *iter_v = *vertices;
	GLuint *iter_i = *indices;
	uint index_cnt = 0;
	for(i = 0; i < size_y; i++){
		for(j = 0; j < size_x; j++){
			// NOTE(filip): Organize this to be more readable
			iter_v = buildHexagonVertices(offset_x + 
										  (j + i * 0.5) * sqrt(3) * side_len, 
										  offset_y + 
										  i * side_len * 3 / 2 , 
									      0.0f, 0.0f, 0.0f,
									      side_len, iter_v);
			
			iter_i = buildHexagonIndices(index_cnt, iter_i);
			index_cnt += 6;	
			#ifdef DEBUG
			printf("(%.2f,%.2f) ", (float)j*0.08f, (float)i*0.08f);
			#endif
		}
		#ifdef DEBUG
		printf("\n");
		#endif
	}
}

int getHexagonMapVertexBufferSize(game_state *state)
{
	// 6 GLfloats for each of the 6 vertices of the hexagon
	return state->size_x*state->size_y*6*6*sizeof(GLfloat);
}

int getHexagonMapIndexBufferSize(game_state *state)
{
	// 3 points for each of the 4 triangles that make up a hexagon
	return state->size_x*state->size_y*4*3*sizeof(GLuint);
}

void freeMapVertices(GLfloat* vertices)
{
	free(vertices);
}

void freeMapIndices(GLuint* indices)
{
	free(indices);
}

void allocMap(int size_x, int size_y, unsigned char ***mapPtr)
{
	int i, j;
	*mapPtr = (unsigned char **) malloc(sizeof(unsigned char *) * size_y);
	for(i = 0; i < size_y; i++)
	{
		*(*mapPtr + i) = 
			(unsigned char *) malloc(sizeof(unsigned char) * size_x);
		for(j = 0; j < size_x; j++) 
		{
			*(*(*mapPtr + i) + j) = 0;
		}
	}
}

void freeMap(int size_x, int size_y, unsigned char **map)
{
	int i;
	for(i = 0; i < size_y; i++)
	{
		free(*map + i); 
	}
	free(map);
}

void printMap(int size_x, int size_y, 
			  unsigned char **map)
{
	int i, j;
	printf("Map data:\n");
	for(i = 0; i < size_y; i++)
	{
		for(j = 0; j < size_x; j++)
		{
			printf("%d", *(*(map + i) + j));
		}
		printf("\n");
	}
}

// NOTE(filip): Function header
void step(game_state* state);

// Starts first turn on next turn
void turn(game_state* state)
{

	//state-> turn is -1 when the game starts
	state->turn = (state->turn + 1)%state->player_number;

	unit *iter = state->units[state->turn];
	// NOTE(filip): Hardcoded turns for 2 players
	// TODO(filip): Dynamic turns for variable number of players
	// TODO(filip): Remove hard coded unit codes
	while(iter != NULL)
	{
		iter->mp_current = iter->mp_stat;
		iter = iter->next;
	}

	step(state);
}

// NOTE(filip): Function header
void setMoveCursor(int new_move_x, int new_move_y, 
				   int range, game_state *state);

// Jump to the next unit (or first if state->started == 0)
// FIXME(filip): Jump to next unit only if it hasn't moved yet
void step (game_state* state)
{
	if(state->selected_unit == NULL)
	{
		state->selected_unit = state->units[state->turn];	
		setMoveCursor(state->selected_unit->position_x, state->selected_unit->position_y, state->selected_unit->mp_current, state);
	}
	else	
	{
	unsigned char looped = 0;
       	if(state->selected_unit->next !=NULL)
		state->selected_unit = state->selected_unit->next;
	else	
		state->selected_unit = state->units[state->turn];	

	while(state->selected_unit->next != NULL && state->selected_unit->mp_current == 0){ 

        state->selected_unit = state->selected_unit->next;
        if(state->selected_unit->next == NULL){
            if(looped==0){
                state->selected_unit = state->units[state->turn];
            }
            looped = 1;
        }
    }

state->ui_map[state->selected_unit->position_y][state->selected_unit->position_x] = 1;
setMoveCursor(state->selected_unit->position_x, state->selected_unit->position_y, state->selected_unit->mp_current, state);

if(looped == 1 && state->selected_unit->next == NULL)
{
	turn(state);
}
}
}

void setMoveCursor(int new_move_x, int new_move_y, 
				   int range, game_state *state)
{
	int cost = 0, i, j;

	if(state->move_cursor_x != -9999)
	state->ui_map[state->move_cursor_y][state->move_cursor_x] = 0;

	state->move_cursor_x = new_move_x;
	state->move_cursor_y = new_move_y;

	// NOTE(filip): Clarify this
	cost = abs(state->selected_unit->position_x - state->move_cursor_x) + 
		   abs(state->selected_unit->position_y - state->move_cursor_y);
	
	if(new_move_x != state->selected_unit->position_x || new_move_y != state->selected_unit->position_y)
	{	
		if(cost > range)
		{
			state->ui_map[new_move_y][new_move_x] = 4;
		}
		if(cost == range)
		{
			state->ui_map[new_move_y][new_move_x] = 3;
		}
		if(cost < range)
		{
			state->ui_map[new_move_y][new_move_x] = 2;
		}
	}


}

// Confirms move, moving unit from cursor to move_cursor
void moveSelectedUnit(game_state *state)
{
	state->unit_map[state->selected_unit->position_y][state->selected_unit->position_x] 
		= 0;
	state->unit_map[state->move_cursor_y][state->move_cursor_x] 
		= 1;
	printf("%d turn nr\n", state->turn);
	// for(int i = 0 ; i < state->player_number ; i++)
	state->selected_unit->position_x = state->move_cursor_x;
	state->selected_unit->position_y = state->move_cursor_y;

	state->ui_map[state->move_cursor_y][state->move_cursor_x] = 0;
	step(state);
}

// Generates a hard coded hexagonal test map
// TODO(filip): Free memory allocated by initializeMap() and initializeUIState()
// 				Create freeMap and freeUIState functions
void generateHexagonalTestMap(game_state *state)
{
	int i, j;
	state->size_x = 15;
   	state->size_y = 20;	
	allocMap(state->size_x, state->size_y, &state->terrain_map);
	allocMap(state->size_x, state->size_y, &state->unit_map);
	allocMap(state->size_x, state->size_y, &state->ui_map);

	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 1, 0, 3);
		addUnit(u, &state->units[0]);
	}

	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 2, 1, 3);
		addUnit(u, &state->units[1]);
	}

	state->unit_map[2][1] = 1; 
	state->units[0]->position_x = 1;
	state->units[0]->position_y = 2;
	state->unit_map[1][3] = 1;
	state->units[0]->next->position_x = 3;
	state->units[0]->next->position_y = 1;
	state->unit_map[6][6] = 1;	
	state->units[0]->next->next->position_x = 6;
	state->units[0]->next->next->position_y = 6;
	state->unit_map[13][10] = 1;
	state->units[1]->position_x = 10;
	state->units[1]->position_y = 13;
	state->unit_map[13][6] = 1;	
	state->units[1]->next->position_x = 6;
	state->units[1]->next->position_y = 13;
	state->unit_map[12][9] = 1;	
	state->units[1]->next->next->position_x = 9;
	state->units[1]->next->next->position_y = 12;
}

// Called everytime the map needs to be rendered
void updateHexagonMapGL(game_state *state,
					   float *colors, 
					   GLfloat *mapVertices, 
					   GLuint VBO)
{
	int i, j, k;
	glBindBuffer(GL_ARRAY_BUFFER, VBO); // Binds GL_ARRAY_BUFFER to our VBO

	GLfloat *iter = mapVertices;
	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			for (k = 0; k < 6; k++)
			{
				iter += 3;	
				if(state -> ui_map[i][j] != 0)
				{
					*(iter++) = state->colors[state->ui_map[i][j] * 9 + 6];
					*(iter++) = state->colors[state->ui_map[i][j] * 9 + 7];
					*(iter++) = state->colors[state->ui_map[i][j] * 9 + 8];
				}
				else if(state->unit_map[i][j] != 0)
				{
					unit* u;
					for(int l = 0; l < state->player_number; l++){
						unit* temp = findUnit(state->units[l], j, i);
						if(temp != NULL)
							u = temp;
					}
					
					*(iter++) = state->colors[u->type * 9 + 3];
					*(iter++) = state->colors[u->type * 9 + 4];
					*(iter++) = state->colors[u->type * 9 + 5];
				}
				else
				{
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 0];
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 1];
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 2];
				}
			}
		}
	}

	glBufferSubData(GL_ARRAY_BUFFER, 0, // Writes new data to GL_ARRAY_BUFFER
					getHexagonMapVertexBufferSize(state), // Size of new data 
					mapVertices); // New data to render
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);	
}

// NOTE(filip): Not used
void setSquare(unsigned char c,int x, int y, unsigned char **mapBuffer)
{
	*(*(mapBuffer+y)+x) = c;
}

// Callback for every key pressed
void key_callback(GLFWwindow* window, 
				  int key, 
				  int scancode, 
				  int action, 
				  int mods)
{
	// Closes window when pressing ESCAPE
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GLFW_TRUE);
}

int main()
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
	GLFWwindow* window = glfwCreateWindow(800, 800, "Game4X", NULL, NULL);
	// Error check if the window fails to create
	if (window == NULL)
	{
		printf("Failed to create GLFW window");
		glfwTerminate();
		return -1;
	}
	// Introduce the window into the current context
	glfwMakeContextCurrent(window);
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GLFW_TRUE);

	//Load GLAD so it configures OpenGL
	gladLoadGL();
	// Specify the viewport of OpenGL in the Window
	// In this case the viewport goes from x = 0, y = 0, to x = 800, y = 800
	glViewport(0, 0, 800, 800);

	const char* vertex_shader_src = loadFile("shader.vert");
	const char* fragment_shader_src = loadFile("shader.frag");

	printf("FRAGMENT:\n%s\n\nVERTEX:\n%s", fragment_shader_src, vertex_shader_src);
	//loadFile("shader.vert", vertex_shader_source);
	//loadFile("shader.frag", fragment_shader_source);
	// Create Vertex Shader Object and get its reference
	GLuint vertex_shader = glCreateShader(GL_VERTEX_SHADER);
	// Attach Vertex Shader source to the Vertex Shader Object
	glShaderSource(vertex_shader, 1, &vertex_shader_src, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(vertex_shader);

	// Create Fragment Shader Object and get its reference
	GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
	// Attach Fragment Shader source to the Fragment Shader Object
	glShaderSource(fragment_shader, 1, &fragment_shader_src, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(fragment_shader);

	// Create Shader Program Object and get its reference
	GLuint shader_program = glCreateProgram();
	// Attach the Vertex and Fragment Shaders to the Shader Program
	glAttachShader(shader_program, vertex_shader);
	glAttachShader(shader_program, fragment_shader);
	// Wrap-up/Link all the shaders together into the Shader Program
	glLinkProgram(shader_program);

	// Delete the now useless Vertex and Fragment Shader objects
	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);



	// Vertices coordinates
	GLfloat *vertices;

	// Indices for vertices order
	GLuint *indices;

	// SPECIFIC START SETUP ----------------------------------------------------

	game_state state;

	// NOTE(filip): Consider moving these somewhere else
	// Initialize values for game state
	state.player_number = 2;
	state.turn = 0;
	state.move_cursor_x = -9999;
	state.move_cursor_y = -9999;
	state.turn = -1;
	for(int i = 0; i < MAX_PLAYERS; i++)
	{
		state.units[i] = NULL;
	}
	state.selected_unit = NULL;

	generateHexagonalTestMap(&state);

	// This starts the turn of player 0
	turn(&state);

	// TODO(filip): Add way to render things other than the map
	// Build vertices and indices for the map
	buildHexagonMapGL(state.size_x, state.size_y, 
				      0.04f, 
				      -0.8f, -0.5f, 
				      &vertices, &indices);

	// Create reference containers for the Vartex Array Object, 
	// the Vertex Buffer Object, and the Element Buffer Object
	GLuint VAO, VBO, EBO;

	// Generate the VAO, VBO, and EBO with only 1 object each
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	glGenBuffers(1, &EBO);

	// Make the VAO the current Vertex Array Object by binding it
	glBindVertexArray(VAO);

	// Bind the VBO specifying it's a GL_ARRAY_BUFFER
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	// Introduce the vertices into the VBO
	glBufferData(GL_ARRAY_BUFFER, getHexagonMapVertexBufferSize(&state), 
				 vertices, GL_DYNAMIC_DRAW);


	// Bind the EBO specifying it's a GL_ELEMENT_ARRAY_BUFFER
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
	// Introduce the indices into the EBO
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, 
				 getHexagonMapIndexBufferSize(&state), 
				 indices, GL_DYNAMIC_DRAW);

	// Configure the Vertex Attributes so that OpenGL knows how to read the VBO
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 
						  6 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 
						  6 * sizeof(float), (void*)(3 * sizeof(float)));
	glEnableVertexAttribArray(1);
	
	// Bind both the VBO and VAO to 0 so that we don't accidentally 
	// modify the VAO and VBO we created
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);

	// NOTE(filip):
	// Bind the EBO to 0 so that we don't accidentally modify it

	// MAKE SURE TO UNBIND IT AFTER UNBINDING THE VAO, as the EBO is linked 
	// in the VAO

	// This does not apply to the VBO because the VBO is already linked to the 
	// VAO during glVertexAttribPointer
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	

	// Input
	// glfwSetKeyCallback(window, key_callback);

	// GAME --------------------------------------------------------------------

	// TODO(filip): Move this somewhere else
	// List of colors  
	GLfloat colors[] = {0.65f, 0.65f, 0.55f, //T0. Dark grey
						0.0f, 0.0f, 0.0f,	 //U0. 
						0.0f, 0.0f, 0.0f,    //I0. Dark blue: Blue ase
						0.55f, 0.4f, 0.05f,	 //T1. Blue: Blue unit
						0.55f, 0.15f, 0.5f,  //U1. Dark red: Red base
						0.9f, 0.9f, 0.3f,	 //I1. Red: Red unit
						0.9f, 0.9f, 0.0f,    //T2. Yellow: Selected
						0.15f, 0.9f, 0.6f,	 //U2. Green
						0.6f, 0.6f, 0.0f,	 //I2. Dark Yellow
						0.7f, 0.4f, 0.0f,	 //T3. Dark Orange
						0.0f, 0.0f, 0.0f,	 //U3.
						0.8f, 0.5f, 0.0f,	 //I3.
						0.0f, 0.0f, 0.0f,	 //T4.
						0.0f, 0.0f, 0.0f,	 //U4.
						0.8f, 0.2f, 0.2f};	 //I4.

	state.colors = colors;
	// Main while loop
	// TODO(filip): Store flags somewhere else
	int prev_p = 0, prev_a = 0, prev_b = 0, prev_c=0, prev_d=0, prev_e=0;
	while (!glfwWindowShouldClose(window))
	{
		// TODO(filip): Find better way to handle input
		if(glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS)
		{
			if(prev_p == 0)
			{
				step(&state);
				printMap(state.size_x, state.size_y, 
						 state.terrain_map);	
			}
			prev_p = 1;
		}
		else
		{
			prev_p = 0;
		}

		// NOTE(filip): This block needs to be rewritten
		{
			// NOTE(filip): moves move_cursor up
			// TODO(filip): Implement pathfinding
			// TODO(filip): Highlight path from unit to move cursor
			if(glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
			{
				if(prev_a == 0)
				{
					// TODO(filip): Get rid of hard coded range value
					setMoveCursor(state.move_cursor_x, state.move_cursor_y + 1, 
							      4, &state);
				}
				prev_a = 1;
			}
			else{
				prev_a = 0;
			}
			
			// NOTE(filip): moves cursor up
			if(glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
			{
				if(prev_b == 0)
				{
					// TODO(filip): Get rid of hard coded range value
					setMoveCursor(state.move_cursor_x, state.move_cursor_y - 1, 
							      4, &state);
				}
				prev_b = 1;
			}
			else{
				prev_b = 0;
			}

			// NOTE(filip): moves cursor left
			if(glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
			{
				if(prev_c == 0)
				{
					// TODO(filip): Get rid of hard coded range value
					setMoveCursor(state.move_cursor_x - 1, state.move_cursor_y, 
							      4, &state);
				}
				prev_c = 1;
			}
			else{
				prev_c = 0;
			}

			// NOTE(filip): moves cursor right
			if(glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
			{
				if(prev_d == 0)
				{
					// TODO(filip): Get rid of hard coded range value
					setMoveCursor(state.move_cursor_x + 1, state.move_cursor_y, 
								  4, &state);
				}
				prev_d = 1;
			}
			else{
				prev_d = 0;
			}

			// NOTE(filip): move
			if(glfwGetKey(window, GLFW_KEY_ENTER) == GLFW_PRESS)
			{
				if(prev_e == 0)
				{
					moveSelectedUnit(&state);
				}
				prev_e = 1;
			}
			else{
				prev_e = 0;
			}
		}

		// Specify the color of the background
		glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
		// Clean the back buffer and assign the new color to it
		glClear(GL_COLOR_BUFFER_BIT);
	

		// Bind the VAO so OpenGL knows to use it
		glBindVertexArray(VAO);
		// Render map
		updateHexagonMapGL(&state, colors, vertices, VBO);		

		// Tell OpenGL which Shader Program we want to use
		glUseProgram(shader_program);
		
		// Draw primitives
		glDrawElements(GL_TRIANGLES, state.size_x * state.size_y * 4 * 3, 
					   GL_UNSIGNED_INT, 0);

		glBindVertexArray(0);

		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		// Take care of all GLFW events
		// TODO(filip): Consider freezing main thread when there is no input
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	freeMap(state.size_x, state.size_y, state.terrain_map);
	freeMap(state.size_x, state.size_y, state.unit_map);
	freeMap(state.size_x, state.size_y, state.ui_map);
	// Free allocated memory
	freeMapIndices(indices);
	freeMapVertices(vertices);
	// Delete all the objects we've created
	glDeleteVertexArrays(1, &VAO);
	glDeleteBuffers(1, &VBO);
	glDeleteBuffers(1, &EBO);
	glDeleteProgram(shader_program);
	// Delete window before ending the program
	glfwDestroyWindow(window);
	// Terminate GLFW before ending the program
	glfwTerminate();
	return 0;
}
