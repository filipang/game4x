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
/*
// NOTE(filip): Everything has to be simplified to be re-written in ASM
int createUnit(int position_x, int position_y, game_state *state)
{	
	state->units[state->unit_count].position_x = position_x;
	state->units[state->unit_count].position_y = position_y;;
	state->unit_count++;
	return state->unit_count-1;
}
*/
void removeUnit(int index, game_state *state){
	int i;
	for(i = index + 1; i < state->unit_count; i++)
	{
		state->units[i-1] = state->units[i];
	}
	state->unit_count--;
}

int findUnit(int position_x, int position_y, game_state *state){
	int i;
	for(i = 0; i <= state->unit_count; i++)
	{
		if(state->units[i].position_x == position_x &&
		   state->units[i].position_y == position_y)
			return i;	
	}
	return -1;
}

unit* createWorkshop(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_WORKSHOP;
		state->units[u].team = team;
		state->units[u].health = 80;
		state->units[u].health_stat = 80;
		state->units[u].attack_range = 0;
		state->units[u].attack_damage = 0;
		state->units[u].mp_stat = 0;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 1;
		state->units[u].rotation = 0;
}

unit* createGolem(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_GOLEM;
		state->units[u].team = team;
		state->units[u].health = 30;
		state->units[u].health_stat = 30;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 10;
		state->units[u].mp_stat = 1;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 2;
		if(team == 0)
			state->units[u].rotation = 1;
		else if(team == 1)
			state->units[u].rotation = 4;
}

unit* createWisp(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_WISP;
		state->units[u].team = team;
		state->units[u].health = 10;
		state->units[u].health_stat = 10;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 5;
		state->units[u].mp_stat = 3;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 3;
		state->units[u].rotation = 0;
}

unit* createUnboundElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_UNBOUND_ELEMENTAL;
		state->units[u].team = team;
		state->units[u].health = 20;
		state->units[u].health_stat = 20;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 10;
		state->units[u].mp_stat = 2;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 3;
		state->units[u].rotation = 0;
}

unit* createFireElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_FIRE_ELEMENTAL;
		state->units[u].team = team;
		state->units[u].health = 40;
		state->units[u].health_stat = 40;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 20;
		state->units[u].mp_stat = 2;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 3;
		state->units[u].rotation = 0;
}

unit* createWaterElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_WATER_ELEMENTAL;
		state->units[u].team = team;
		state->units[u].health = 40;
		state->units[u].health_stat = 40;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 20;
		state->units[u].mp_stat = 2;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 3;
		state->units[u].rotation = 0;
}

unit* createIceElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_ICE_ELEMENTAL;
		state->units[u].team = team;
		state->units[u].health = 40;
		state->units[u].health_stat = 40;
		state->units[u].attack_range = 2;
		state->units[u].attack_damage = 20;
		state->units[u].mp_stat = 2;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 3;
		state->units[u].rotation = 0;
}

unit* createArcaneElemental(int pos_x, int pos_y, int team, struct game_state *state)
{
		int u = createUnit(pos_x, pos_y, state);
		state->units[u].type = UNIT_ARCANE_ELEMENTAL;
		state->units[u].team = team;
		state->units[u].health = 150;
		state->units[u].health_stat = 150;
		state->units[u].attack_range = 3;
		state->units[u].attack_damage = 80;
		state->units[u].mp_stat = 4;
		state->units[u].mp_current = 0;
		state->units[u].vision_range = 6;
		state->units[u].rotation = 0;
}
