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
#include "unit.c"
#include "outpost.c"
#include "gl_object.c"

#define PI 3.14159265359
#define MAXBUF 1000
#define MAX_PLAYERS 8

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

#define MODE_NORMAL 0
#define MODE_MOVE 1
#define MODE_ATTACK 2

typedef struct player_state
{
	float workshop_health;
	int workshop_x;
	int workshop_y;	

	int essence_total;
	int essence_generation;
	int runes;
	unsigned char team;

	unit *units;
	outpost *outposts;
} player_state;

// NOTE(filip): Make these unsigned char* instead of unsigned char** for ASM?
// NOTE(filip): Consider splitting game_state into persistent game data and 
// 				volatile game data for future savefiles
// Keeps track of game state
typedef struct game_state 
{

	unsigned char **terrain_map;
	unsigned char **unit_map;
	unsigned char **ui_map;

	int size_x;
	int size_y;
	gl_object *map_object;
	gl_object *highlight_object;

	float map_offset_x;
	float map_offset_y;
	float map_hex_size;

	int player_number; // Number of players in game
	int turn; // Active player index

	// Selected unit data
	unit *selected_unit; // What unit is selected
	
	// Move cursor data
	// NOTE(filip): Make this flag clearer or find a way to remove it
	unsigned char cursor_color;
	int cursor_x;
	int cursor_y;
	int cursor_active;
	int cursor_distance;
	gl_object *cursor_object;

	int mode; // Cursor mode 0, 1, 2

	int golem_cooldown; // number of turns until next golem spawns

	player_state players[MAX_PLAYERS];

	gl_object *gl_objects;
	// NOTE(ionut): Every third element belongs to the same map to compress all
	// 				3 into one vector
	GLfloat *colors;

	int vertices_store_size;
	int vertices_size;
	int indices_store_size;
	int indices_size;
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
	unsigned char key_pressed_V;
	unsigned char key_pressed_B;

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
	unsigned char button_V;
	unsigned char button_B;

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

int findNextPowerOf2(int n)
{
    int k = 1;
    while (k < n) {
        k = k << 1;
    }
    return k;
}

// Generates vertices for a single hexagon + color
// Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildHexagonVertices(float offset_x, float offset_y, float z_index, 
			 			 	  float color_r, float color_b, float color_g, 
						 	  float side_len, GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y + side_len;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x;
	*(dest++) = offset_y - side_len;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = z_index;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = z_index;
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

// This generates vertices and indices for map
gl_object* buildMapGL(float offset_x, float offset_y, float z_index,
				float side_len,
				game_state *state)
{
	int i, j;
	int vertices_size = state->size_x * state->size_y * 6 * 6;
	int indices_size = state->size_x * state->size_y * 4 * 3;

	gl_object *temp;
	createGLObject(&temp, 
				   vertices_size,
				   indices_size);
	GLfloat *iter_v = temp->vertices;
	GLuint *iter_i = temp->indices; 
	addGLObject(temp, &state->gl_objects);
	computeListOffsets(state->gl_objects, NULL);
	int index_cnt = temp->vertices_offset;
	for(i = 0; i < state->size_y; i++){
		for(j = 0; j < state->size_x; j++){
			// NOTE(filip): Organize this to be more readable
			iter_v = 
				buildHexagonVertices(offset_x + 
								    (j + i * 0.5) * sqrt(3) * side_len, 
								    offset_y + 
								    i * side_len * 3 / 2 , 
									z_index,
								    0.0f, 0.0f, 0.0f,
								    side_len * 0.9, iter_v);
			
			iter_i = 
				buildHexagonIndices(index_cnt, iter_i);

			index_cnt += 6;	
		}
	}

	// Add object to the object list
	#ifdef DEBUG
	printGLObject(temp);
	#endif

	return temp;
}

gl_object* buildHexagonGL(float offset_x, float offset_y, float z_index,
					float color_r, float color_g, float color_b, 
					float side_len, game_state *state)
{
	int vertices_size = 6 * 6; // Hexagon has 6 vertices, each with 6 float values
	int indices_size = 3 * 4; // Hexagon has 4 triangles, each with 3 vertex indices

	gl_object *temp;
	createGLObject(&temp, 
				   vertices_size,
				   indices_size);
	GLfloat *iter_v = temp->vertices;
	GLuint *iter_i = temp->indices; 
	addGLObject(temp, &state->gl_objects);
	computeListOffsets(state->gl_objects, NULL);
	buildHexagonVertices(offset_x, offset_y, z_index, color_r, color_g, color_b, side_len, iter_v);
	buildHexagonIndices(temp->vertices_offset/6, iter_i);

	// Add object to the object list
	#ifdef DEBUG
	printGLObject(temp);
	#endif

	return temp;
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

	unit *iter = state->players[state->turn].units;

	while(iter != NULL)
	{
		iter->mp_current = iter->mp_stat;
		iter = iter->next;
	}

	state->selected_unit = NULL;
	state->cursor_active = 0;
	state->mode = MODE_NORMAL;
}

// NOTE(filip): Function header
void setMoveCursor(int new_move_x, int new_move_y, game_state *state);

// Jump to the next unit (or first if state->started == 0)
void step (game_state* state)
{
	if(state->selected_unit == NULL)
	{
		state->selected_unit = state->players[state->turn].units;	
		setMoveCursor(state->selected_unit->position_x, 
					  state->selected_unit->position_y, 
					  state);
	}
	else	
	{
		unsigned char looped = 0;
		state->ui_map[state->selected_unit->position_y][state->selected_unit->position_x] = 0;
       	if(state->selected_unit->next !=NULL)
			state->selected_unit = state->selected_unit->next;
		else	
			state->selected_unit = state->players[state->turn].units;	

		while(state->selected_unit->next != NULL && state->selected_unit->mp_current == 0)
		{ 
			state->selected_unit = state->selected_unit->next;
			if(state->selected_unit->next == NULL && state->selected_unit->mp_current == 0)
			{
				if(looped==0)
				{
					state->selected_unit = state->players[state->turn].units;
				}
				looped = 1;
			}
		}
		state->mode = MODE_NORMAL;

		setMoveCursor(state->selected_unit->position_x, 
				state->selected_unit->position_y, 
				state);

		// NOTE(filip): Uncomment this for turns ending when all units with 
		// MP have been cycled
		/*if(looped == 1 && state->selected_unit->next == NULL)
		{
			turn(state);
		}*/
	}
}

void setMoveCursor(int new_move_x, int new_move_y, game_state *state)
{
	state->cursor_x = new_move_x;
	state->cursor_y = new_move_y;
	state->cursor_active = 1;

	// NOTE(filip): Clarify this
	if(state->selected_unit != NULL)
		state->cursor_distance = (abs(state->selected_unit->position_x - state->cursor_x) + 
		abs(state->selected_unit->position_y - state->cursor_y ) +
		abs(state->selected_unit->position_x + state->selected_unit->position_y -
		state->cursor_x - state->cursor_y)) / 2;
	else
		state->cursor_distance = 0;
	//if(new_move_x != state->selected_unit->position_x || new_move_y != state->selected_unit->position_y)
	if(state->mode == MODE_MOVE)
	{
		if(state->cursor_distance > state->selected_unit->mp_current)
		{
			// NOTE(filip): Cursor color outside move range 
			state->cursor_color = 4;
		}
		if(state->cursor_distance == state->selected_unit->mp_current)
		{
			// NOTE(filip): Cursor color at the edge of  move range 
			state->cursor_color = 3;
		}
		if(state->cursor_distance < state->selected_unit->mp_current)
		{
			// NOTE(filip): Cursor color inside move range 
			state->cursor_color = 2;
		}
	}
	if(state->mode == MODE_ATTACK)
	{
		if(state->unit_map[state->cursor_y][state->cursor_x] == 0)
			state->cursor_color = 5;
		else if(state->cursor_distance > state->selected_unit->attack_range 
			 || findUnit(state->players[state->turn].units, state->cursor_x, state->cursor_y) != NULL)
			state->cursor_color = 4;
		else
			state->cursor_color = 6;
		}
}

// Confirms move, moving unit from cursor to cursor
void moveSelectedUnit(game_state *state)
{
	if(state->unit_map[state->cursor_y][state->cursor_x] == 0)
	{
		if(state->cursor_distance<=state->selected_unit->mp_current){
			state->selected_unit->mp_current-=state->cursor_distance;
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

void attackSelectedUnit(game_state *state)
{
	if(state->unit_map[state->cursor_y][state->cursor_x] != 0)
	{
		if(findUnit(state->players[state->turn].units, state->cursor_x, state->cursor_y) == NULL)
		{
			unit *target = NULL;
			int k;
			for(int i = 0 ; i < state->player_number ; i++)
			{
				unit *v = findUnit(state->players[i].units, state->cursor_x, state->cursor_y);
	unit* units[MAX_PLAYERS];
				if(v != NULL)
				{
					target = v;
					k = i;
				}
			}
			if(state->cursor_distance <= state->selected_unit->attack_range)
			{
				target->health -= state->selected_unit->attack_damage;
				if(target->health <= 0)
				{
					//removeUnit(&state->players[k].units, target);
					//target->object->deleted = 1;
					state->unit_map[state->cursor_y][state->cursor_x] = 0;
				}
				state->selected_unit->mp_current = 0;
				step(state);
			}
		}
	}
}


//Building construction function
/*
void build(game_state *state)
{
	if(state->selected_unit != NULL && state->selected_unit->type = 1)
	{
		if(state->terrain_map[state->selected_unit->position_y][state->selected_unit->position_x] % 3 != 0)
	}
}
*/

// Generates a hard coded hexagonal test map
// TODO(filip): Free memory allocated by initializeMap() and initializeUIState()
// 				Create freeMap and freeUIState functions
void generateTestMap(game_state *state)
{
	int i, j;
	state->size_x = 12;
   	state->size_y = 16;	
	allocMap(state->size_x, state->size_y, &state->terrain_map);
	allocMap(state->size_x, state->size_y, &state->unit_map);
	allocMap(state->size_x, state->size_y, &state->ui_map);
	state->terrain_map[3][4] = 4;
	state->terrain_map[13][10] = 4;
	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 1, 0, 2, 2, 3);
		addUnit(u, &state->players[0].units);
	}

	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 1, 1, 2, 2, 3);
		addUnit(u, &state->players[1].units);
	}

	state->unit_map[0][0] = 1; 
	state->players[0].units->position_x = 0;
	state->players[0].units->position_y = 0;
	state->unit_map[1][0] = 1;
	state->players[0].units->next->position_x = 0;
	state->players[0].units->next->position_y = 1;
	state->unit_map[2][0] = 1;	
	state->players[0].units->next->next->position_x = 0;
	state->players[0].units->next->next->position_y = 2;
	state->unit_map[0][10] = 1;
	state->players[1].units->position_x = 10;
	state->players[1].units->position_y = 0;
	state->unit_map[0][2] = 1;	
	state->players[1].units->next->position_x = 2;
	state->players[1].units->next->position_y = 0;
	state->unit_map[0][3] = 1;	
	state->players[1].units->next->next->position_x = 3;
	state->players[1].units->next->next->position_y = 0;
}

// Called everytime the map needs to be rendered
void updateMapGL(game_state *state)
{
	int i, j, k;

	GLfloat *vertices = state->map_object->vertices;
	GLfloat *iter = vertices;
	GLfloat *beginWrite=NULL, *endWrite=NULL;
	
	// NOTE(filip): This could be placed better somewhere else
	// NOTE(filip): This wipes ui map and sets it according to move_cursor and
	// 				selected unit.
	
	for(i = 0; i < state->size_y; i++)
		memset(state->ui_map[i], 0, state->size_x);

	if(state->cursor_active != 0)
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

	if(beginWrite!=NULL)
	{
		state->map_object->modified = 1;
	}
}

void updateUnitGL(game_state *state, unit* u)
{
	if(u->health>=0)
	{
		float position_x = state->map_offset_x + (u->position_x + u->position_y * 0.5) * sqrt(3) * state->map_hex_size;
		float position_y = state->map_offset_y + u->position_y * state->map_hex_size * 3/2;
		float color_r = state->colors[u->type * u->team * 9 + 3];
		float color_g = state->colors[u->type * u->team * 9 + 4];
		float color_b = state->colors[u->type * u->team * 9 + 5];
		if(u->object != NULL)
		{
			buildHexagonVertices(position_x, position_y, 0.2f,
								 color_r, color_g, color_b,
								 0.55 * state->map_hex_size,
								 u->object->vertices);
			
		}
		else
		{
			u->object = buildHexagonGL(position_x, position_y, 0.2f, 
									   color_r, 
									   color_g, 
									   color_b,
									   0.55 * state->map_hex_size, state);
			state->vertices_size+= u->object->vertices_size;
			state->indices_size+= u->object->indices_size;
		}
		u->object->modified = 1;
	}
	else{
		u->object->deleted = 1;
		removeUnit(&state->players[u->team].units, u);	
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

		if(state->highlight_object != NULL)
		{
			buildHexagonVertices(position_x, position_y, 0.2f,
								 color_r, color_g, color_b,
								 0.55 * state->map_hex_size,
								 state->highlight_object->vertices);
		}
		else
		{
			state->highlight_object = 
				buildHexagonGL(position_x, position_y, 0.2f, 
							   color_r, color_g, color_b,
							   state->map_hex_size, state);
			state->indices_size+= state->highlight_object->indices_size;
			state->vertices_size+= state->highlight_object->vertices_size;
		}
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

		if(state->cursor_object != NULL)
		{
			buildHexagonVertices(position_x, position_y, 0.4f,
								 color_r, color_g, color_b,
								 0.55 * state->map_hex_size,
								 state->cursor_object->vertices);
		}
		else
		{
			state->cursor_object = 
				buildHexagonGL(position_x, position_y, 0.4f, 
							   color_r, color_g, color_b,
							   state->map_hex_size, state);
			state->vertices_size+= state->cursor_object->vertices_size;
			state->indices_size+= state->cursor_object->indices_size;
		}
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

void updateUIGL(game_state *state)	
{
	updateCursor(state);
	updateHighlight(state);
}

void updateGL(game_state *state, GLuint VAO, GLuint VBO, GLuint EBO, GLuint shader_program)
{
	// Specify the color of the background
	glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
	// Clean the back buffer and assign the new color to it
	glClear(GL_COLOR_BUFFER_BIT);

	glBindVertexArray(VAO);

	gl_object *iter = state->gl_objects;
	while(iter!=NULL)
	{
		if(iter->deleted)
		{
			printf("BEFORE DELETE:\n");
			printf("state->vertices_size: %d\nstate->indices_size: %d\n", state->vertices_size, state->indices_size);
			printGLObjectList(state->gl_objects);
			state->vertices_size -= iter->vertices_size;
			state->indices_size -= iter->indices_size;
			removeGLObject(&state->gl_objects, iter);		
			printf("\nAFTER DELETE:\n");
			printf("state->vertices_size: %d\nstate->indices_size: %d\n", state->vertices_size, state->indices_size);
			printGLObjectList(state->gl_objects);
		}
		else if(iter->modified)
		{
			glBindBuffer(GL_ARRAY_BUFFER, VBO); 
			glBufferSubData(GL_ARRAY_BUFFER, 
					iter->vertices_offset * sizeof(GLfloat), 
					iter->vertices_size * sizeof(GLfloat), 
					iter->vertices);

			glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
			glBufferSubData(GL_ELEMENT_ARRAY_BUFFER, 
					iter->indices_offset * sizeof(GLfloat), 
					iter->indices_size * sizeof(GLfloat), 
					iter->indices);
			
			iter->modified = 0;

		}
		iter = iter->next;
	}

	glUseProgram(shader_program);
	glDrawElements(GL_TRIANGLES, state->indices_size, 
			       GL_UNSIGNED_INT, 0);

	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
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
	PROCESS_BUTTON_INPUT(V);
	PROCESS_BUTTON_INPUT(B);

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
	// Load GLAD so it configures OpenGL
	gladLoadGL();
	// Specify the viewport of OpenGL in the Window
	// In this case the viewport goes from x = 0, y = 0, to x = 800, y = 800
	glViewport(0, 0, 800, 800);

	const char* vertex_shader_src = loadFile("shader.vert");
	const char* fragment_shader_src = loadFile("shader.frag");

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

	// SPECIFIC START SETUP ----------------------------------------------------

	input_pressed input = {0};
	game_state state;

	// NOTE(filip): Consider moving these somewhere else
	// Initialize values for game state
	state.player_number = 2;
	state.turn = 0;
	state.cursor_active = 0;
	state.turn = -1;
	state.mode = MODE_NORMAL;

	state.map_offset_x = -0.94f;
	state.map_offset_y = -0.8f;
	state.map_hex_size = 0.049;
	for(int i = 0; i < MAX_PLAYERS; i++)
	{
		state.players[i].units = NULL;
	}
	state.selected_unit = NULL;
	state.highlight_object = NULL;
	state.cursor_object = NULL;

	generateTestMap(&state);

	// This starts the turn of player 0
	turn(&state);

	// Build vertices and indices for the map
	
	state.gl_objects = NULL;

	state.map_object = buildMapGL(state.map_offset_x, state.map_offset_y, 0.0f, state.map_hex_size, &state);
	//buildHexagonGL(-0.9f, 0.8f, 1.0f, 1.0f, 0.0f, 0.0f, 0.08f, &state);
	//buildHexagonGL(-0.60f, 0.8f, 1.0f, 0.0f, 0.0f, 1.0f, 0.08f, &state);

	// Create reference containers for the Vertex Array Object, 
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
	getTotalSizes(state.gl_objects, &state.vertices_size, &state.indices_size);
	state.vertices_store_size = findNextPowerOf2(state.vertices_size);
	state.indices_store_size = findNextPowerOf2(state.indices_size);
	
	glBufferData(GL_ARRAY_BUFFER, state.vertices_store_size * sizeof(GLfloat), NULL, GL_DYNAMIC_DRAW);

	// Bind the EBO specifying it's a GL_ELEMENT_ARRAY_BUFFER
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
	// Introduce the indices into the EBO
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, state.indices_store_size * sizeof(GLuint), NULL, GL_DYNAMIC_DRAW);

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
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

	// NOTE(filip):
	// Bind the EBO to 0 so that we don't accidentally modify it

	// GAME --------------------------------------------------------------------

	// TODO(filip): Move this somewhere else
	// List of colors  
	GLfloat colors[] = {0.65f, 0.65f, 0.55f, //T0.
						0.55f, 0.15f, 0.5f,  //U0.
						0.0f, 0.0f, 0.0f,    //I0. 
						0.55f, 0.4f, 0.05f,	 //T1. 
						0.8f, 0.4f, 0.2f,	 //U1.
						0.9f, 0.9f, 0.9f,	 //I1. 
						0.9f, 0.9f, 0.0f,    //T2.
						0.3f, 0.1f, 0.0f,	 //U2.
						0.55f, 0.55f, 1.0f,	 //I2.
						0.7f, 0.4f, 0.0f,	 //T3.
						0.0f, 0.0f, 0.0f,	 //U3.
						0.9f, 0.9f, 0.3f,	 //I3.
						0.15f, 0.9f, 0.6f,	 //T4.
						0.0f, 0.0f, 0.0f,	 //U4.
						0.8f, 0.2f, 0.2f,	 //I4.
						0.0f, 0.0f, 0.0f,	 //T5,
						0.0f, 0.0f, 0.0f, 	 //U5,
						0.5f, 0.5f, 0.5f, 	 //I5,
						0.0f, 0.0f, 0.0f, 	 //T6,
						0.0f, 0.0f, 0.0f, 	 //U6,
						0.1f, 0.66f, 0.1f 	 //I6,
						};

	state.colors = colors;
	// Main while loop
	while (!glfwWindowShouldClose(window))
	{
	
		processInput(window, &input);
		if(state.mode == MODE_NORMAL)
		{
			if(input.button_ESCAPE)
			{
				state.selected_unit = NULL;
				state.cursor_active = 0;	
			}
			if(input.button_TAB)
			{
				step(&state);
			}
			if(input.button_V && state.selected_unit != NULL)
			{
				state.mode = MODE_MOVE;
			}
			if(input.button_T && state.selected_unit != NULL)
			{
				state.mode = MODE_ATTACK;
			}
			if(input.button_ENTER)
			{
				turn(&state);

			}
			//Building Construction
			/*
			if(input.button_B){
				build(&state);	
			}
			*/

		} else if(state.mode == MODE_MOVE) 
		{
			if(input.button_TAB)
				step(&state);

			if(input.button_SPACE)
			{
				moveSelectedUnit(&state);
				if(state.selected_unit->mp_current == 0)
					step(&state);
			}
			// TODO(filip): Implement pathfinding
			// TODO(filip): Highlight path from unit to move cursor
			
			// NOTE(filip): moves cursor up
			if(input.button_W)	
				setMoveCursor(state.cursor_x - (state.cursor_y + 1) % 2, state.cursor_y + 1, &state);
			// NOTE(filip): moves cursor down
			if(input.button_S)			
				setMoveCursor(state.cursor_x + state.cursor_y % 2, state.cursor_y - 1, &state);
			// NOTE(filip): moves cursor left
			if(input.button_A)			
				setMoveCursor(state.cursor_x - 1, state.cursor_y, &state);
			// NOTE(filip): moves cursor right
			if(input.button_D)
				setMoveCursor(state.cursor_x + 1, state.cursor_y, &state);

			if(input.button_ESCAPE){
				state.mode = MODE_NORMAL;
				state.selected_unit = NULL;
				/*state.cursor_y = -9999;
				state.cursor_x = -9999;*/
				state.cursor_active = 0;
			}

			if(input.button_T && state.selected_unit != NULL)
			{
				state.mode = MODE_ATTACK;
				setMoveCursor(state.cursor_x, state.cursor_y, &state);
			}

		} else if(state.mode == MODE_ATTACK){
			if(input.button_ESCAPE)
			{
				state.mode = MODE_NORMAL;
				state.selected_unit = NULL;
				state.cursor_active = 0;
			}
			if(input.button_TAB){
				step(&state);
			}
			if(input.button_V && state.selected_unit != NULL){
				state.mode = MODE_MOVE;
				setMoveCursor(state.cursor_x, state.cursor_y, &state);
			}
			if(input.button_SPACE){
				attackSelectedUnit(&state);
			}
			// NOTE(filip): moves cursor up
			if(input.button_W)	
				setMoveCursor(state.cursor_x - (state.cursor_y + 1) % 2, state.cursor_y + 1, &state);
			// NOTE(filip): moves cursor down
			if(input.button_S)			
				setMoveCursor(state.cursor_x + state.cursor_y % 2, state.cursor_y - 1, &state);
			// NOTE(filip): moves cursor left
			if(input.button_A)			
				setMoveCursor(state.cursor_x - 1, state.cursor_y, &state);
			// NOTE(filip): moves cursor right
			if(input.button_D)
				setMoveCursor(state.cursor_x + 1, state.cursor_y, &state);
		}
		// Update map gl
		updateMapGL(&state);		
		// Update units gl
		updateUnitListGL(&state);
		// Update UI gl
		updateUIGL(&state);

		updateGL(&state, VAO, VBO, EBO, shader_program);

		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		// Take care of all GLFW events
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	freeMap(state.size_x, state.size_y, state.terrain_map);
	freeMap(state.size_x, state.size_y, state.unit_map);
	freeMap(state.size_x, state.size_y, state.ui_map);
	// Free allocated memory
	//freeMapIndices(state.gl_data->indices);
	//freeMapVertices(state.gl_data->vertices);
	
	// TODO(filip): Free gl_objects
	
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
