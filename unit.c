/*******************************************************************************
* 
* FILENAME : unit.c
*
* DESCRIPTION :
*       Main file for game4x. This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    25/09/2021
*
*******************************************************************************/
#define UNIT_WORKSHOP			0
#define UNIT_GOLEM				1
#define UNIT_WISP				2
#define UNIT_UNBOUND_ELEMENTAL	3
#define UNIT_FIRE_ELEMENTAL		4
#define UNIT_WATER_ELEMENTAL	5
#define UNIT_ICE_ELEMENTAL		6
#define	UNIT_ARCANE_ELEMENTAL	7
#define UNIT_ARCANE_PULSE		8

// NOTE(filip): Everything has to be simplified to be re-written in ASM
typedef struct unit
{
	int health; 			// from 0.0 to 1.0
	int position_x;			// map position
	int position_y;
	int type; 				// 1, 2 or 3
	int team; 				// from 0 to number of players
	int attack_range;		// attack range
    float attack_damage;	// attack damage from 0.0 to 1.0
	int mp_current;			// points left this turn
	int mp_stat;			// total mp
	int vision_range;
	int rotation;

	struct unit *next;		// next unit
} unit;

void createUnit(unit **u, int position_x, int position_y)
{	
	*u = malloc(sizeof(unit));
	(*u)->position_x = position_x;
	(*u)->position_y = position_y;
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
	unit *iter = (*base);
	if(iter == target)
	{
		unit *u = (*base)->next;
		free(*base);
		(*base) = u;
	}
	else
	{
		while(iter != NULL)
		{
			if(iter->next == target)
			{
				iter->next = target->next;
				free(target);
			}
			iter = iter->next;	
		}
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

unit* createWorkshop(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_WORKSHOP;
		u->team = team;
		u->health = 80;
		u->attack_range = 0;
		u->attack_damage = 0;
		u->mp_stat = 0;
		u->mp_current = 2;
		u->vision_range = 1;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createGolem(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_GOLEM;
		u->team = team;
		u->health = 30;
		u->attack_range = 2;
		u->attack_damage = 10;
		u->mp_stat = 1;
		u->mp_current = 1;
		u->vision_range = 2;
		if(team == 0)
			u->rotation = 1;
		else if(team == 1)
			u->rotation = 4;
		
		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createWisp(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_WISP;
		u->team = team;
		u->health = 10;
		u->attack_range = 2;
		u->attack_damage = 5;
		u->mp_stat = 3;
		u->mp_current = 3;
		u->vision_range = 3;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createUnboundElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_UNBOUND_ELEMENTAL;
		u->team = team;
		u->health = 20;
		u->attack_range = 2;
		u->attack_damage = 10;
		u->mp_stat = 2;
		u->mp_current = 2;
		u->vision_range = 3;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createFireElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_UNBOUND_ELEMENTAL;
		u->team = team;
		u->health = 40;
		u->attack_range = 2;
		u->attack_damage = 20;
		u->mp_stat = 2;
		u->mp_current = 2;
		u->vision_range = 3;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createWaterElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_UNBOUND_ELEMENTAL;
		u->team = team;
		u->health = 40;
		u->attack_range = 2;
		u->attack_damage = 20;
		u->mp_stat = 2;
		u->mp_current = 2;
		u->vision_range = 3;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}

unit* createIceElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		unit *u;
		createUnit(&u, pos_x, pos_y);
		u->type = UNIT_UNBOUND_ELEMENTAL;
		u->team = team;
		u->health = 40;
		u->attack_range = 2;
		u->attack_damage = 20;
		u->mp_stat = 2;
		u->mp_current = 2;
		u->vision_range = 3;
		u->rotation = 0;

		addUnit(u, &state->players[team].units);
		state->unit_count++;
}
