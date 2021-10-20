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

#define TILE_DISABLED 0
#define TILE_NORMAL	  1
#define TILE_ESSENCE  2
#define TILE_BLOCK	  3
#define TILE_FIRE	  4
#define TILE_WATER	  5
#define TILE_ICE	  6

#define MODE_NORMAL 	0
#define MODE_MOVE 		1
#define MODE_ATTACK		2
#define MODE_BUILD		3
#define MODE_TRANSITION	4

#define MAX_MAP_SIZE_X 100
#define MAX_MAP_SIZE_Y 100
#define MAX_UNIT_COUNT 25

#define MAX_PLAYERS 8

// NOTE(filip): Make these unsigned char* instead of unsigned char** for ASM?
// NOTE(filip): Consider splitting game_state into persistent game data and 
// 				volatile game data for future savefiles
// Keeps track of player state

typedef struct unit
{
	int health; 			// from 0.0 to 1.0
	int position_x;			// map position
	int position_y;
	int type; 				// 1, 2 or 3
	int team; 				// from 0 to number of players
	int attack_range;		// attack range
    int attack_damage;		
	int mp_current;			// points left this turn
	int mp_stat;			// total mp
	int vision_range;
	int rotation;
} unit;


typedef struct player_state
{
	int essence_total;
	int essence_generation;
	int turns_to_pulse;
	int spawn_tile_x;
	int spawn_tile_y;
	unsigned char team;

} player_state;

typedef struct game_state 
{
	unsigned char terrain_map[MAX_MAP_SIZE_Y][MAX_MAP_SIZE_X];
	int size_x;
	int size_y;
	float map_offset_x;
	float map_offset_y;
	float map_hex_size;

	int player_number; // Number of players in game
	int turn; // Active player index
	int turn_count;
	int unit_count;

	// Selected unit data
	int selected_unit; // What unit is selected
	int target_unit; // What unit is selected
	
	// Move cursor data
	int cursor_x;
	int cursor_y;
	int cursor_active;
	int cursor_distance;

	int mode; // Cursor mode 0, 1, 2
	struct player_state players[MAX_PLAYERS];
	struct unit units[MAX_UNIT_COUNT];

	char alert_message[200];
	char **unit_names; 
	float alert_countdown;
	float alert_countdown_max;
	double delta_time;
	int end;
} game_state;

#include "unit.c"

void saveState(game_state* state)
{
	writeFile("data.save", (char *)state, sizeof(game_state) + 1);
}

void loadState(game_state* state)
{
	char* data = loadFile("data.save");
	memcpy(state, data, sizeof(game_state));
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
	state->unit_count = 0;
	state->alert_countdown = -1;
	state->selected_unit = -1;
	state->target_unit = -1;

	state->map_offset_x = -0.0;
	state->map_offset_y = -0.0;
	state->map_hex_size = 0.1;
	state->players[0].turns_to_pulse = -1;
	state->players[1].turns_to_pulse = -1;
	
	state->unit_names = malloc(10 * sizeof(char *));
	#define BIND_UNIT_NAME(index, string)\
	state->unit_names[index] = malloc(40 * sizeof(char));\
	strcpy(state->unit_names[index], string);
	
	BIND_UNIT_NAME(UNIT_WORKSHOP, "Workshop");
	BIND_UNIT_NAME(UNIT_GOLEM, "Golem");
	BIND_UNIT_NAME(UNIT_UNBOUND_ELEMENTAL, "Unbound Elemental");
	BIND_UNIT_NAME(UNIT_FIRE_ELEMENTAL, "Fire Elemental");
	BIND_UNIT_NAME(UNIT_WATER_ELEMENTAL, "Water Elemental");
	BIND_UNIT_NAME(UNIT_ICE_ELEMENTAL, "Ice Elemental");
	BIND_UNIT_NAME(UNIT_ARCANE_ELEMENTAL, "Arcane Elemental");
	BIND_UNIT_NAME(UNIT_WISP, "Wisp");
	#undef BIND_UNIT_NAME
	
}

// TODO(filip): implement this!
void finalizeGameState(game_state state);

void updateEssenceGeneration(int team, game_state *state)
{
	state->players[team].essence_generation = 0;
	int i;
	for(i = 0; i < state->unit_count; i++)
	{
		if(state->units[i].team == team)
		{
			int pos_x = state->units[i].position_x;
			int pos_y = state->units[i].position_y;
			if(state->units[i].type == UNIT_GOLEM && 
			   state->terrain_map[pos_y][pos_x] == TILE_ESSENCE)
				state->players[team].essence_generation += 20;	
		}
	}
}

void updateEssenceTotal(int team, game_state *state)
{
	state->players[team].essence_total += 
		state->players[team].essence_generation;  
}

void alertMessage(char* message, float time, game_state *state)
{
	snprintf(state->alert_message, 100, "%s", message);
	state->alert_countdown = time;
	state->alert_countdown_max = time;
}

void updateAltars(int team, game_state *state)
{
	int i;
	for(i = 0; i < state->unit_count; i++)
	{
		int pos_x = state->units[i].position_x;
		int pos_y = state->units[i].position_y;
		if(state->units[i].type == UNIT_UNBOUND_ELEMENTAL)
		{	
			if(state->terrain_map[pos_y][pos_x] == TILE_FIRE)
			{
				removeUnit(i, state);
				createFireElemental(pos_x, pos_y, team, state);
				alertMessage("Your Elemental has been bound to fire!", 2, state);
				i--;
			}
			if(state->terrain_map[pos_y][pos_x] == TILE_WATER)
			{
				removeUnit(i, state);
				createWaterElemental(pos_x, pos_y, team, state);
				alertMessage("Your Elemental has been bound to water!", 2, state);
				i--;
			}
			if(state->terrain_map[pos_y][pos_x] == TILE_ICE)
			{
				removeUnit(i, state);
				createIceElemental(pos_x, pos_y, team, state);
				alertMessage("Your Elemental has been bound to ice!", 2, state);
				i--;
			}
		}
	}
}

void startArcanePulse(game_state *state)
{
	if(state->players[state->turn].essence_total >= 600)
	{
		state->players[state->turn].essence_total -= 600;
		state->players[state->turn].turns_to_pulse = 6;

	}
	else
		alertMessage("NOT ENOUGH ESSENCE!", 2, state);
}

void killAllEnemies(int team, game_state *state)
{
	int i;
	for(i = 0; i < state->unit_count; i++)
	{
		if(state->units[i].team != team && state->units[i].type != UNIT_WORKSHOP)
		{
			removeUnit(i, state);
			i--;
		}
	}
}

void updateArcanePulse(game_state *state)
{
	if(state->players[state->turn].turns_to_pulse != -1)
	{
		state->players[state->turn].turns_to_pulse--;
		if(state->players[state->turn].turns_to_pulse == 0)
		{
			killAllEnemies(state->turn, state);
			state->players[state->turn].turns_to_pulse = -1;
			alertMessage("ALL YOUR UNITS WERE DESTROYED!", 4, state);
		}
	}
}

int unitDistance(int u1, int u2, game_state *state)
{
	return hexDistance(state->units[u1].position_x, state->units[u1].position_y,
					   state->units[u2].position_x, state->units[u2].position_y);
}

void updateArcaneElemental(game_state *state)
{
	int i, j, k;
	for(i = 0; i < state->unit_count; i++)
	{
		if(state->units[i].type == UNIT_FIRE_ELEMENTAL)
		{
			for(j = 0; j < state->unit_count; j++)
			{
				if(state->units[j].type == UNIT_WATER_ELEMENTAL
				   && unitDistance(i, j, state) == 1)
				{
					for(k = 0; k < state->unit_count; k++)
					{
						if(state->units[k].type == UNIT_ICE_ELEMENTAL
						   && unitDistance(j, k, state) == 1 && unitDistance(i, k, state) == 1)
							{
							int x = state->units[i].position_x;
							int y = state->units[i].position_y;
							removeUnit(i, state);
							removeUnit(j, state);
							removeUnit(k, state);
							i--;
							j--;
							k--;
							createArcaneElemental(x, y, 
												  state->turn,
												  state);
						}
					}
				}
				
			}
		}
	}
}

int isUnitInVisionRange(int target, game_state *state)
{
	int in_range = 0;
	int i;
	for(i = 0; i < state->unit_count; i++)
	{
		if(hexDistance(state->units[target].position_x, state->units[target].position_y, 
					   state->units[i].position_x, state->units[i].position_y) 
			<= 
			state->units[i].vision_range
			&&
			state->units[i].team == state->turn)
		{
			in_range = 1;
		}
	}
	return in_range;	
}

// End curent player turn and start next player turn
void turn(game_state* state)
{
	//state-> turn is -1 when the game starts
	if(state->turn != -1)
	{
		updateEssenceTotal(state->turn, state);
		updateAltars(state->turn, state);
		updateArcanePulse(state);
		updateArcaneElemental(state);
		if(state->players[state->turn].turns_to_pulse!=-1)
		{
			alertMessage("ENEMY IS WINDING UP AN ARCANE PULSE!", 3, state);
		}
		state->mode = MODE_TRANSITION;
	}

	state->turn = (state->turn + 1)%state->player_number;
	state->turn_count++;

	int i;
	for(i = 0; i < state->unit_count; i++)
	{
		state->units[i].mp_current = state->units[i].mp_stat;
	}

	state->selected_unit = -1;
	state->cursor_active = 0;

}

int isInMapBounds(int x, int y, game_state *state)
{
	if(x >= state->size_x || x < 0)
		return 0;

	if(y >= state->size_y || y < 0)
		return 0;

	if(state->terrain_map[y][x] == TILE_DISABLED)
		return 0;

	return 1;
}

// NOTE(filip): Function header
void setMoveCursor(int new_move_x, int new_move_y, struct game_state *state)
{
	if(isInMapBounds(new_move_x, new_move_y, state) == 0)
		return;
	state->cursor_x = new_move_x;
	state->cursor_y = new_move_y;
	if (new_move_x != state->units[state->selected_unit].position_x || 
		new_move_y != state->units[state->selected_unit].position_y)
		state->units[state->selected_unit].rotation = 
			calculateRotation(state->units[state->selected_unit].position_x,
						  state->units[state->selected_unit].position_y,
						  new_move_x, new_move_y);
	state->cursor_active = 1;

	// NOTE(filip): Clarify this
	if(state->selected_unit != -1)
		state->cursor_distance = hexDistance(state->units[state->selected_unit].position_x,
											 state->units[state->selected_unit].position_y,
											 state->cursor_x,
											 state->cursor_y);
	else
		state->cursor_distance = 0;

	if(state->cursor_distance == 0)
		state->cursor_active = 0;

	
	int target = findUnit(new_move_x, new_move_y, state);
	if(target != -1 && state->units[target].team == state->turn)
		target = -1;
	if(target != -1 && !isUnitInVisionRange(target, state))
		target = -1;

	state->target_unit = target;
	
}

// Jump to the next unit (or first if state->started == 0)
// FIXME(filip): Step selects unit with 0 mp if it can't select any other unit

void selectUnit(int u, game_state *state)
{
	if(u == -1)
	{
		state->mode = MODE_NORMAL;
		state->selected_unit = -1;	
	}
	else
	{
		state->selected_unit = u;
		state->mode = MODE_NORMAL;
		setMoveCursor(state->units[u].position_x, 
					  state->units[u].position_y, 
					  state);
		if(state->units[u].type == UNIT_WORKSHOP)
			state->mode = MODE_BUILD;
	}

}

void step (struct game_state* state)
{
	int i = state->selected_unit;
	if(state->selected_unit == -1)
	{
		i = 0;
	}
	while(i <= state->unit_count * 2)
	{
		i++;
		if(state->units[i % state->unit_count].team == state->turn)
		{
			selectUnit(i % state->unit_count, state);
			return;
		}
	}
	assert(0);
	return;
}

// Confirms move, moving unit from cursor to cursor
void moveSelectedUnit(struct game_state *state)
{
	if(findUnit(state->cursor_x, state->cursor_y, state) == -1)
	{
		if(state->cursor_distance<=state->units[state->selected_unit].mp_current){
			state->units[state->selected_unit].mp_current-=state->cursor_distance;
			state->units[state->selected_unit].position_x = state->cursor_x;
			state->units[state->selected_unit].position_y = state->cursor_y;
			//To make cursor invisible when it's on the selected unit
			setMoveCursor(state->cursor_x, state->cursor_y, state); 		
			updateEssenceGeneration(state->turn, state);
		} else 
		{
			alertMessage("Not enough MP!", 3, state);
		}
	}
	else
	{
		printf("Can't move there!\n");
	}
}

void attackSelectedUnit(struct game_state *state)
{
	int target = findUnit(state->cursor_x, state->cursor_y, state);
	if(target != -1)
	{
		if(state->units[target].team != state->turn && 
		   state->cursor_distance <= state->units[state->selected_unit].attack_range)
		{
			state->units[target].health -= state->units[state->selected_unit].attack_damage;
			if(state->units[target].health <= 0)
			{
				removeUnit(target, state);
			}
			state->units[state->selected_unit].mp_current = 0;
			step(state);
		}
	}
}

void processInput(struct input_pressed *input, struct game_state *state)
{
	if(input->key_pressed_S && input->key_pressed_LEFT_CONTROL)
	{
		input->key_pressed_S = 0;
	}
	if(input->button_S && input->key_pressed_LEFT_CONTROL)
	{
		saveState(state);
		alertMessage("Saving game...", 2, state);
	}
	if(input->button_L && input->key_pressed_LEFT_CONTROL)
	{
		loadState(state);
		alertMessage("Loaded game!", 2, state);
	}
	if(input->key_pressed_ESCAPE >= 100)
	{
		state->end = 1;
	}
	if(state->mode == MODE_TRANSITION)
	{
		if(input->button_ENTER)
		{
			state->mode = MODE_NORMAL;
		}
	}
	else if(state->mode == MODE_NORMAL)
	{
		if(input->key_pressed_LMB)
		{
			state->map_offset_x += 0.0022 * input->mouse_delta_x;
			state->map_offset_y -= 0.0022 * input->mouse_delta_y;
		}

		if(input->button_ESCAPE)
		{
			state->selected_unit = -1;
			state->cursor_active = 0;
		}
		if(input->button_TAB)
		{
			step(state);
		}
		if(input->button_V && state->selected_unit != -1)
		{
			state->mode = MODE_MOVE;
		}
		if(input->button_T && state->selected_unit != -1)
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

	} 
	else if(state->mode == MODE_MOVE) 
	{
		if(input->button_TAB)
			step(state);

		if(input->button_SPACE || input->button_LMB)
		{
			moveSelectedUnit(state);
			if(state->units[state->selected_unit].mp_current == 0)
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
			selectUnit(-1, state);
		}
		if(input->button_T && state->selected_unit != -1)
		{
			state->mode = MODE_ATTACK;
			setMoveCursor(state->cursor_x, state->cursor_y, state);
		}

	} 
	else if(state->mode == MODE_ATTACK)
	{
		if(input->button_ESCAPE)
		{
		
			selectUnit(-1, state);
		}
		if(input->button_TAB)
			step(state);

		if(input->button_V && state->selected_unit != -1){
			state->mode = MODE_MOVE;
			setMoveCursor(state->cursor_x, state->cursor_y, state);
		}
		if(input->button_SPACE || input->button_LMB)
			attackSelectedUnit(state);
		// Move cursor up
		if(input->button_W)	
			setMoveCursor(state->cursor_x - (state->cursor_y + 1) % 2, 
						  state->cursor_y + 1, 
						  state);
		// Move cursor down
		if(input->button_S)			
			setMoveCursor(state->cursor_x + state->cursor_y % 2, 
						  state->cursor_y - 1, 
						  state);
		// Move cursor left 
		if(input->button_A)			
			setMoveCursor(state->cursor_x - 1, state->cursor_y, state);
		// Move cursor right
		if(input->button_D)
			setMoveCursor(state->cursor_x + 1, state->cursor_y, state);
	} 
	else if(state->mode == MODE_BUILD)
	{
		if(input->button_ESCAPE)
		{
			selectUnit(-1, state);
		}
		if(input->button_TAB)
		{
			step(state);
		}
		if(findUnit(state->players[state->turn].spawn_tile_x,
					state->players[state->turn].spawn_tile_y,
					state) == -1
			&&
			isInMapBounds(state->players[state->turn].spawn_tile_x,
						  state->players[state->turn].spawn_tile_y,
						  state))
		{
			if(input->button_1)
			{
				// TODO(filip): Check if space is obstructed and spawn somewhere 
				// 				else if it is
				// SPAWNS WISP
				if(state->players[state->turn].essence_total >= 50)
				{
					createWisp(state->players[state->turn].spawn_tile_x, 
							   state->players[state->turn].spawn_tile_y,
							   state->turn,
							   state);
					state->players[state->turn].essence_total -= 50;
				}
				else
				{
					alertMessage("NOT ENOGH ESSENCE!", 2, state);
				}
			}
			else if(input->button_2)
			{
				// SPAWNS GOLEM
				if(state->players[state->turn].essence_total >= 100)
				{
					createGolem(state->players[state->turn].spawn_tile_x, 
							    state->players[state->turn].spawn_tile_y,
							    state->turn,
							    state);
					state->players[state->turn].essence_total -= 100;
				}
				else
				{
					alertMessage("NOT ENOGH ESSENCE!", 2, state);
				}
			}
			else if(input->button_3)
			{
				if(state->players[state->turn].essence_total >= 100)
				{
					createUnboundElemental(state->players[state->turn].spawn_tile_x, 
										   state->players[state->turn].spawn_tile_y,
										   state->turn,
										   state);
					state->players[state->turn].essence_total -= 100;
				}
				else
				{
					alertMessage("NOT ENOGH ESSENCE!", 2, state);
				}
			}
		}
		else if(findUnit(state->players[state->turn].spawn_tile_x,
					state->players[state->turn].spawn_tile_y,
					state) != -1 && (input->button_1 || input->button_2 ||
									 input->button_3))
			alertMessage("Your spawn tile is occupied!!!", 2, state);

		if(input->button_4)
		{
			startArcanePulse(state);
		}
	}

	if((state->mode == MODE_ATTACK || state->mode == MODE_MOVE) && 
		state->mode != MODE_TRANSITION)
	{
		float viewport_x, viewport_y;
		int hex_x, hex_y;
		mouseCoordsToViewport(input->mouse_x, input->mouse_y, &viewport_x, &viewport_y);
		printf("viewport: %f %f\n", viewport_x, viewport_y);
		viewportToHexGrid(viewport_x, viewport_y, 
						  state->map_offset_x, state->map_offset_y,
						  state->map_hex_size,
						  &hex_x, &hex_y);
		setMoveCursor(hex_x, hex_y, state);
	}

	if(state->mode != MODE_ATTACK && 
	   state->mode != MODE_MOVE && 
	   state->mode != MODE_TRANSITION)
	{	
		if(input->button_LMB)
		{
			float viewport_x, viewport_y;
			int hex_x, hex_y;
			mouseCoordsToViewport(input->mouse_x, input->mouse_y, &viewport_x, &viewport_y);
			printf("viewport: %f %f\n", viewport_x, viewport_y);
			viewportToHexGrid(viewport_x, viewport_y, 
							  state->map_offset_x, state->map_offset_y,
							  state->map_hex_size,
							  &hex_x, &hex_y);
			int target = findUnit(hex_x, hex_y, state);
			if(target!=-1 && state->units[target].team == state->turn)
			{
				selectUnit(target, state);
			}
			else
			{
				selectUnit(-1, state);
			}
		}
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

	for(i = 0; i < state->size_y; i++)
	{
		for(j = 0; j < state->size_x; j++)
		{
			state->terrain_map[i][j] = TILE_NORMAL;	
		}
	}
	state->terrain_map[0][0] = TILE_DISABLED;
	state->terrain_map[1][0] = TILE_DISABLED;
	state->terrain_map[0][1] = TILE_DISABLED;
	state->terrain_map[state->size_y-1][state->size_x-1] = TILE_DISABLED;
	state->terrain_map[state->size_y-2][state->size_x-1] = TILE_DISABLED;
	state->terrain_map[state->size_y-1][state->size_x-2] = TILE_DISABLED;
	state->terrain_map[2][2] = TILE_ESSENCE;
	state->terrain_map[1][6] = TILE_ESSENCE;
	state->terrain_map[6][1] = TILE_ESSENCE;
	state->terrain_map[7][7] = TILE_ESSENCE;
	state->terrain_map[8][3] = TILE_ESSENCE;
	state->terrain_map[3][8] = TILE_ESSENCE;
	state->terrain_map[3][6] = TILE_FIRE;
	state->terrain_map[5][4] = TILE_WATER;
	state->terrain_map[7][2] = TILE_ICE;

	createWorkshop(1, 1, 0, state);
	state->players[0].spawn_tile_x = 1;
	state->players[0].spawn_tile_y = 2;
	createGolem(0, 2, 0, state);
	createGolem(2, 0, 0, state);
	createWorkshop(state->size_x - 3, state->size_y - 2, 1, state);
	state->players[1].spawn_tile_x = state->size_x-3;
	state->players[1].spawn_tile_y = state->size_y-3;
	createGolem(state->size_x - 3, state->size_y - 1, 1, state);
	createGolem(state->size_x - 1, state->size_y - 3, 1, state);

}
