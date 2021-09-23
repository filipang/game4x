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
#include <string.h>
#include <stdlib.h>

#define PI 3.14159265359
#define MAXBUF 1000
#define MAX_PLAYERS 8

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

#define MODE_NORMAL 0
#define MODE_MOVE 1
#define MODE_ATTACK 2

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

// TODO(filip): Free unit list function
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
	unsigned char cursor_color;
	int cursor_x;
	int cursor_y;
	int move_cost;

	int mode; // Cursor mode 0, 1, 2

	unit* units[MAX_PLAYERS];
	
	// NOTE(ionut): Every third element belongs to the same map to compress all
	// 				3 into one vector
	GLfloat *colors;
} game_state;

typedef struct input_pressed
{
	unsigned char key_pressed_W;
	unsigned char key_pressed_A;
	unsigned char key_pressed_S;
	unsigned char key_pressed_D;
	unsigned char key_pressed_TAB;
	unsigned char key_pressed_ENTER;
	unsigned char key_pressed_SPACE;
	unsigned char key_pressed_ESCAPE;
	unsigned char key_pressed_T;
	unsigned char key_pressed_M;

	unsigned char button_W;
	unsigned char button_A;
	unsigned char button_S;
	unsigned char button_D;
	unsigned char button_TAB;
	unsigned char button_ENTER;
	unsigned char button_SPACE;
	unsigned char button_ESCAPE;
	unsigned char button_T;
	unsigned char button_M;

} input_pressed;

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

	while(iter != NULL)
	{
		iter->mp_current = iter->mp_stat;
		iter = iter->next;
	}

	state->selected_unit = NULL;
}

// NOTE(filip): Function header
void setMoveCursor(int new_move_x, int new_move_y, 
				   int range, game_state *state);

// Jump to the next unit (or first if state->started == 0)
void step (game_state* state)
{
	if(state->selected_unit == NULL)
	{
		state->selected_unit = state->units[state->turn];	
		setMoveCursor(state->selected_unit->position_x, 
					  state->selected_unit->position_y, 
					  state->selected_unit->mp_current, 
					  state);
	}
	else	
	{
		unsigned char looped = 0;
		state->ui_map[state->selected_unit->position_y][state->selected_unit->position_x] = 0;
       	if(state->selected_unit->next !=NULL)
			state->selected_unit = state->selected_unit->next;
		else	
			state->selected_unit = state->units[state->turn];	

		while(state->selected_unit->next != NULL && state->selected_unit->mp_current == 0)
		{ 
			state->selected_unit = state->selected_unit->next;
			if(state->selected_unit->next == NULL)
			{
				if(looped==0)
				{
					state->selected_unit = state->units[state->turn];
				}
				looped = 1;
			}
		}

		setMoveCursor(state->selected_unit->position_x, 
				state->selected_unit->position_y, 
				state->selected_unit->mp_current, state);

		// NOTE(filip): Uncomment this for turns ending when all units with 
		// MP have been cycled
		/*if(looped == 1 && state->selected_unit->next == NULL)
		{
			turn(state);
		}*/
	}
}

void setMoveCursor(int new_move_x, int new_move_y, 
				   int range, game_state *state)
{
	state->cursor_x = new_move_x;
	state->cursor_y = new_move_y;

	// NOTE(filip): Clarify this
	state->move_cost = abs(state->selected_unit->position_x - state->cursor_x) + 
		   abs(state->selected_unit->position_y - state->cursor_y);
	
	//if(new_move_x != state->selected_unit->position_x || new_move_y != state->selected_unit->position_y)
	if(state->move_cost > state->selected_unit->mp_current)
	{
		// NOTE(filip): Cursor color outside move range 
		state->cursor_color = 4;
	}
	if(state->move_cost == state->selected_unit->mp_current)
	{
		// NOTE(filip): Cursor color at the edge of  move range 
		state->cursor_color = 3;
	}
	if(state->move_cost < state->selected_unit->mp_current)
	{
		// NOTE(filip): Cursor color inside move range 
		state->cursor_color = 2;
	}

}

// Confirms move, moving unit from cursor to cursor
void moveSelectedUnit(game_state *state)
{
	if(state->unit_map[state->cursor_y][state->cursor_x] == 0)
	{
		if(state->move_cost<=state->selected_unit->mp_current){
			state->selected_unit->mp_current-=state->move_cost;
			// for(int i = 0 ; i < state->player_number ; i++)
			
			state->unit_map[state->selected_unit->position_y][state->selected_unit->position_x] = 0;
			state->unit_map[state->cursor_y][state->cursor_x] = 1;

			state->selected_unit->position_x = state->cursor_x;
			state->selected_unit->position_y = state->cursor_y;

			
			//step(state);
		} else 
		{
			printf("Not enough MP!\n");
		}
	}
	else
	{
		printf("Can't move there!\n");
	}
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

	GLfloat *iter = mapVertices;
	GLfloat *beginWrite=NULL, *endWrite=NULL;
	
	// NOTE(filip): This could be pleaced better somewhere else
	// NOTE(filip): This wipes ui map and sets it according to move_cursor and
	// 				selected unit.
	
	for(i = 0; i < state->size_y; i++)
		memset(state->ui_map[i], 0, state->size_x);

	if(state->cursor_y != -9999 )
		state->ui_map[state->cursor_y][state->cursor_x] = state->cursor_color;

	if(state->selected_unit != NULL)
		state->ui_map[state->selected_unit->position_y][state->selected_unit->position_x] = 1;

	// TODO(filip): Optimize this
	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			for (k = 0; k < 6; k++)
			{
				iter += 3;	
				if(state -> ui_map[i][j] != 0)
				{
					if(*iter!=state->colors[state->ui_map[i][j] * 9 + 6])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[state->ui_map[i][j] * 9 + 6];

					if(*iter!=state->colors[state->ui_map[i][j] * 9 + 7])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[state->ui_map[i][j] * 9 + 7];

					if(*iter!=state->colors[state->ui_map[i][j] * 9 + 8])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
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
					
					if(*iter!=state->colors[u->type * 9 + 3])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[u->type * 9 + 3];

					if(*iter!=state->colors[u->type * 9 + 4])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[u->type * 9 + 4];

					if(*iter!=state->colors[u->type * 9 + 5])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[u->type * 9 + 5];
				}
				else
				{

					if(*iter!=state->colors[state->terrain_map[i][j] * 9 + 0])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 0];

					if(*iter!=state->colors[state->terrain_map[i][j] * 9 + 1])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 1];

					if(*iter!=state->colors[state->terrain_map[i][j] * 9 + 2])
					{
						endWrite = iter+1;
						beginWrite = beginWrite != NULL ? beginWrite : iter;
					}
					*(iter++) = state->colors[state->terrain_map[i][j] * 9 + 2];
				}
			}
		}
	}

	if(beginWrite!=NULL)
	{
		#ifdef DEBUG
		printf("Writing %ld bytes of data to be rendered\nbeginWrite: %ld\nendWrite: %ld\nmapVertices: %ld\nmap size: %ld\n", 
				(long long)endWrite-(long long)beginWrite, 
				beginWrite, 
				endWrite, 
				mapVertices, 
				getHexagonMapVertexBufferSize(state));
		#endif
		glBindBuffer(GL_ARRAY_BUFFER, VBO); // Binds GL_ARRAY_BUFFER to our VBO
		glBufferSubData(GL_ARRAY_BUFFER,
						((long long)beginWrite-(long long)mapVertices),
						((long long)endWrite-(long long)beginWrite), // Size of new data 
						beginWrite); // New data to render
		
		glBindBuffer(GL_ARRAY_BUFFER, 0);	
	}
}

// NOTE(filip): This needs to be called every frame to work
void processInput(struct GLFWwindow *window, input_pressed *input){
	#define PROCESS_BUTTON_INPUT(button) 							\
	if(glfwGetKey(window, GLFW_KEY_##button) == GLFW_PRESS)			\
	{																\
		if(input->key_pressed_##button == 0)  						\
			input->button_##button = 1;								\
		else														\
			input->button_##button = 0;								\
		input->key_pressed_##button = 1;							\
	}else 															\
	{input->button_##button = 0;input->key_pressed_##button = 0;}

	//if(glfwGetKey(window, GLFW_KEY_##button == GLFW_RELEASE)) 
	PROCESS_BUTTON_INPUT(W);
	PROCESS_BUTTON_INPUT(A);
	PROCESS_BUTTON_INPUT(S);
	PROCESS_BUTTON_INPUT(D);
	PROCESS_BUTTON_INPUT(TAB);
	PROCESS_BUTTON_INPUT(SPACE);
	PROCESS_BUTTON_INPUT(ESCAPE);
	PROCESS_BUTTON_INPUT(ENTER);
	PROCESS_BUTTON_INPUT(T);
	PROCESS_BUTTON_INPUT(M);

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
	// TODO(filip): fix mouse lag
	// glfwSwapInterval(1);
	// Load GLAD so it configures OpenGL
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

	input_pressed input = {0};
	game_state state;

	// NOTE(filip): Consider moving these somewhere else
	// Initialize values for game state
	state.player_number = 2;
	state.turn = 0;
	state.cursor_x = -9999;
	state.cursor_y = -9999;
	state.turn = -1;
	state.mode = MODE_NORMAL;
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
	GLfloat colors[] = {0.65f, 0.65f, 0.55f, //T0.
						0.0f, 0.0f, 0.0f,	 //U0. 
						0.0f, 0.0f, 0.0f,    //I0. 
						0.55f, 0.4f, 0.05f,	 //T1. 
						0.55f, 0.15f, 0.5f,  //U1.
						0.9f, 0.9f, 0.3f,	 //I1. 
						0.9f, 0.9f, 0.0f,    //T2.
						0.15f, 0.9f, 0.6f,	 //U2.
						0.6f, 0.6f, 0.0f,	 //I2.
						0.7f, 0.4f, 0.0f,	 //T3.
						0.0f, 0.0f, 0.0f,	 //U3.
						0.8f, 0.5f, 0.0f,	 //I3.
						0.0f, 0.0f, 0.0f,	 //T4.
						0.0f, 0.0f, 0.0f,	 //U4.
						0.8f, 0.2f, 0.2f};	 //I4.

	state.colors = colors;
	// Main while loop
	while (!glfwWindowShouldClose(window))
	{
	
		processInput(window, &input);
		if(state.mode == MODE_NORMAL)
		{
			if(input.button_TAB){
				state.mode = MODE_MOVE;
				step(&state);
			}
		} else if(state.mode == MODE_MOVE) 
		{
			// NOTE(filip): move
			if(input.button_ENTER)
				turn(&state);

			if(input.button_TAB)
				step(&state);

			if(input.button_SPACE)
				moveSelectedUnit(&state);

			// NOTE(filip): moves cursor up
			// TODO(filip): Implement pathfinding
			// TODO(filip): Highlight path from unit to move cursor
			
			// NOTE(filip): moves cursor down
			if(input.button_W)	
				setMoveCursor(state.cursor_x, state.cursor_y + 1, 4, &state);
			// NOTE(filip): moves cursor up
			if(input.button_S)			
				setMoveCursor(state.cursor_x, state.cursor_y - 1, 4, &state);
			// NOTE(filip): moves cursor left
			if(input.button_A)			
				setMoveCursor(state.cursor_x - 1, state.cursor_y, 4, &state);
			// NOTE(filip): moves cursor right
			if(input.button_D)
				setMoveCursor(state.cursor_x + 1, state.cursor_y, 4, &state);

			if(input.button_ESCAPE){
				state.mode = MODE_NORMAL;
				state.selected_unit = NULL;
				state.cursor_y = -9999;
				state.cursor_x = -9999;
			}

			if(input.button_T)
				state.mode = MODE_ATTACK;

		} else if(state.mode == MODE_ATTACK){
			if(input.button_ESCAPE)
				state.mode = MODE_NORMAL;
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
		glfwWaitEvents();
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
