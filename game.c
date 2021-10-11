/*******************************************************************************
* 
* FILENAME : game.c
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
#include "unit.c"

// NOTE(filip): Make these unsigned char* instead of unsigned char** for ASM?
// NOTE(filip): Consider splitting game_state into persistent game data and 
// 				volatile game data for future savefiles
// Keeps track of player state
typedef struct player_state
{
	float workshop_health;
	int workshop_x;
	int workshop_y;	

	int essence_total;
	int essence_generation;
	int runes;
	unsigned char team;

	struct unit *units;
	struct outpost *outposts;
} player_state;

typedef struct game_state 
{

	unsigned char **terrain_map;


	int size_x;
	int size_y;
	float map_offset_x;
	float map_offset_y;
	float map_hex_size;

	int player_number; // Number of players in game
	int turn; // Active player index
	int turn_count;

	// Selected unit data
	struct unit *selected_unit; // What unit is selected
	
	// Move cursor data
	// NOTE(filip): Make this flag clearer or find a way to remove it
	unsigned char cursor_color;
	int cursor_x;
	int cursor_y;
	int cursor_active;
	int cursor_distance;

	int mode; // Cursor mode 0, 1, 2

	int golem_cooldown; // number of turns until next golem spawns

	struct player_state players[MAX_PLAYERS];

	// NOTE(ionut): Every third element belongs to the same map to compress all
	// 				3 into one vector
	char **unit_names; 

	double delta_time;
} game_state;

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
		free(map[i]); 
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

// NOTE(filip): This could be optimized with a memset
void initializeGameState(game_state* state)
{
	state->player_number = 2;
	state->turn = 0;
	state->cursor_active = 0;
	state->turn = -1;
	state->turn_count = 1;
	state->mode = MODE_NORMAL;

	state->map_offset_x = -0.85;
	state->map_offset_y = -0.60;
	state->map_hex_size = 0.08;
	for(int i = 0; i < MAX_PLAYERS; i++)
	{
		state->players[i].units = NULL;
	}

	state->unit_names = malloc(4 * sizeof(char *));
	state->unit_names[0] = malloc(40 * sizeof(char));
	strcpy(state->unit_names[0], "Golem");
	state->unit_names[1] = malloc(40 * sizeof(char));
	strcpy(state->unit_names[1], "Unbound elemental");
	
}

// TODO(filip): implement this!
void finalizeGameState(game_state state);

// End curent player turn and start next player turn
void turn(game_state* state)
{
	//state-> turn is -1 when the game starts
	state->turn = (state->turn + 1)%state->player_number;
	state->turn_count++;

	struct unit *iter = state->players[state->turn].units;

	while(iter != NULL)
	{
		iter->mp_current = iter->mp_stat;
		iter = iter->next;
	}

	state->selected_unit = NULL;
	state->cursor_active = 0;
	state->mode = MODE_NORMAL;
}

unit *findGameUnit(int x, int y, game_state *state)
{
	for(int i = 0 ; i < state->player_number ; i++)
	{
		unit *v = findUnit(state->players[i].units, x, y);
		if(v!=NULL)
			return v;
	}
	return NULL;
}

int isInMapBounds(int x, int y, game_state *state)
{
	if(x >= state->size_x || x < 0)
		return 0;
	if(y >= state->size_y || y < 0)
		return 0;

	// TODO(filip): uncomment this when you encode 0 as being not part of the
	// 				map
	/*
	if(state->terrain_map[y][x] == 0)
		return 0;
	*/

	return 1;
}

// NOTE(filip): Function header
void setMoveCursor(int new_move_x, int new_move_y, game_state *state);

// Jump to the next unit (or first if state->started == 0)
// FIXME(filip): Step selects unit with 0 mp if it can't select any other unit
void step (struct game_state* state)
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
		//NOTE(filip): this flag is ambiguous
		unsigned char looped = 0;
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
	}
}

void setMoveCursor(int new_move_x, int new_move_y, struct game_state *state)
{
	if(isInMapBounds(new_move_x, new_move_y, state) == 0)
		return;
	state->cursor_x = new_move_x;
	state->cursor_y = new_move_y;
	state->cursor_active = 1;

	// NOTE(filip): Clarify this
	if(state->selected_unit != NULL)
		state->cursor_distance = hexDistance(state->selected_unit->position_x,
											 state->selected_unit->position_y,
											 state->cursor_x,
											 state->cursor_y);
	else
		state->cursor_distance = 0;

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
			if(findGameUnit(state->cursor_x, state->cursor_y, state) == NULL)	
				// NOTE(filip): Cursor color inside move range 
				state->cursor_color = 2;
			else
				state->cursor_color = 4;
		}
	}
	if(state->mode == MODE_ATTACK)
	{
		unit *target = findGameUnit(state->cursor_x, state->cursor_y, state);
		if(target == NULL || state->cursor_distance > 2)
			state->cursor_color = 5;
		else if(target != NULL && 
		   state->cursor_distance <= state->selected_unit->attack_range &&
		   target->team != state->selected_unit->team)
			state->cursor_color = 6;
		else
			state->cursor_color =  4;
	}
}

// Confirms move, moving unit from cursor to cursor
void moveSelectedUnit(struct game_state *state)
{
	if(findGameUnit(state->cursor_x, state->cursor_y, state) == NULL)
	{
		if(state->cursor_distance<=state->selected_unit->mp_current){
			state->selected_unit->mp_current-=state->cursor_distance;
			state->selected_unit->position_x = state->cursor_x;
			state->selected_unit->position_y = state->cursor_y;
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

void attackSelectedUnit(struct game_state *state)
{
	unit *target = findGameUnit(state->cursor_x, state->cursor_y, state);
	if(target != NULL)
	{
		if(target->team != state->turn && 
		   state->cursor_distance <= state->selected_unit->attack_range)
		{
			target->health -= state->selected_unit->attack_damage;
			if(target->health <= 0)
				removeUnit(&state->players[target->team].units, target);

			state->selected_unit->mp_current = 0;
			step(state);
		}
	}
}

void processInput(struct input_pressed *input, struct game_state *state)
{
	if(state->mode == MODE_NORMAL)
	{
		if(input->button_ESCAPE)
		{
			state->selected_unit = NULL;
			state->cursor_active = 0;
		}
		if(input->button_TAB)
		{
			step(state);
		}
		if(input->button_V && state->selected_unit != NULL)
		{
			state->mode = MODE_MOVE;
		}
		if(input->button_T && state->selected_unit != NULL)
		{
			state->mode = MODE_ATTACK;
		}
		if(input->key_pressed_W)
		{	
			state->map_offset_y += state->delta_time;
		}
		if(input->key_pressed_A)
		{	
			state->map_offset_x -= state->delta_time;
		}
		if(input->key_pressed_S)
		{	
			state->map_offset_y -= state->delta_time;
		}
		if(input->key_pressed_D)
		{	
			state->map_offset_x += state->delta_time;
		}
		if(input->button_ENTER)
			turn(state);

	} else if(state->mode == MODE_MOVE) 
	{
		if(input->button_TAB)
			step(state);

		if(input->button_SPACE)
		{
			moveSelectedUnit(state);
			if(state->selected_unit->mp_current == 0)
				step(state);
		}
		// TODO(filip): Implement pathfinding
		// TODO(filip): Highlight path from unit to move cursor
		// TODO(filip): Make unit go up left if it can't go up right and vice
		// 				versa	

		// NOTE(filip): moves cursor up
		if(input->button_W)	
			setMoveCursor(state->cursor_x - (state->cursor_y + 1) % 2, 
						  state->cursor_y + 1, 
						  state);
		// NOTE(filip): moves cursor down
		if(input->button_S)			
			setMoveCursor(state->cursor_x + state->cursor_y % 2, 
						  state->cursor_y - 1, 
						  state);
		// NOTE(filip): moves cursor left
		if(input->button_A)			
			setMoveCursor(state->cursor_x - 1, state->cursor_y, state);
		// NOTE(filip): moves cursor right
		if(input->button_D)
			setMoveCursor(state->cursor_x + 1, state->cursor_y, state);

		if(input->button_ESCAPE){
			state->mode = MODE_NORMAL;
			state->selected_unit = NULL;
			state->cursor_active = 0;
		}
		if(input->button_T && state->selected_unit != NULL)
		{
			state->mode = MODE_ATTACK;
			setMoveCursor(state->cursor_x, state->cursor_y, state);
		}

	} else if(state->mode == MODE_ATTACK){
		if(input->button_ESCAPE)
		{
			state->mode = MODE_NORMAL;
			state->selected_unit = NULL;
			state->cursor_active = 0;
		}
		if(input->button_TAB)
			step(state);

		if(input->button_V && state->selected_unit != NULL){
			state->mode = MODE_MOVE;
			setMoveCursor(state->cursor_x, state->cursor_y, state);
		}
		if(input->button_SPACE)
			attackSelectedUnit(state);
		// Move cursor up
		if(input->button_W)	
			setMoveCursor(state->cursor_x - (state->cursor_y + 1) % 2, state->cursor_y + 1, state);
		// Move cursor down
		if(input->button_S)			
			setMoveCursor(state->cursor_x + state->cursor_y % 2, state->cursor_y - 1, state);
		// Move cursor left 
		if(input->button_A)			
			setMoveCursor(state->cursor_x - 1, state->cursor_y, state);
		// Move cursor right
		if(input->button_D)
			setMoveCursor(state->cursor_x + 1, state->cursor_y, state);
	}
	
}

// Generates a hard coded hexagonal test map
// TODO(filip): Free memory allocated by initializeMap() and initializeUIState()
// 				Create freeMap and freeUIState functions
void generateTestMap(struct game_state *state)
{
	int i, j;
	state->size_x = 10;
   	state->size_y = 10;	
	allocMap(state->size_x, state->size_y, &state->terrain_map);
	state->terrain_map[1][1] = 4;
	state->terrain_map[8][8] = 4;
	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 1, 0, 2, 2, 8);
		addUnit(u, &state->players[0].units);
		u->type = 0;
	}

	for(i = 0; i < 3; i++){
		unit *u;
		createUnit(&u, 0, 0, 1, 1, 2, 2, 8);
		addUnit(u, &state->players[1].units);
		u->type = 1;
	}

	state->players[0].units->position_x = 0;
	state->players[0].units->position_y = 2;

	state->players[0].units->next->position_x = 0;
	state->players[0].units->next->position_y = 0;

	state->players[0].units->next->next->position_x = 2;
	state->players[0].units->next->next->position_y = 0;

	state->players[1].units->position_x = 9;
	state->players[1].units->position_y = 8;

	state->players[1].units->next->position_x = 9;
	state->players[1].units->next->position_y = 9;

	state->players[1].units->next->next->position_x = 8;
	state->players[1].units->next->next->position_y = 9;
}
