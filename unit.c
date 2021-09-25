// NOTE(filip): Everything has to be simplified to be re-written in ASM
typedef struct unit
{
	float health; 			// from 0.0 to 1.0
	int position_x;			// map position
	int position_y;
	int type; 			// 1, 2 or 3
	int team; 			// from 0 to number of players
	int attack_range;		// attack range
    float attack_damage;		// attack damage from 0.0 to 1.0
	int mp_current;			// points left this turn
	int mp_stat;			// total mp

	struct gl_object *object; // unit gl_object

	struct unit *next;		// next unit
} unit;

void createUnit(unit **u, int position_x, int position_y, int type, int team, int attack_range, float attack_damage, int mp_stat){
	*u = malloc(sizeof(unit));
	(*u)->health = 1.0;
	(*u)->position_x = position_x;
	(*u)->position_y = position_y;
	(*u)->type = type;
	(*u)->team = team;
	(*u)->attack_range = attack_range;
	(*u)->attack_damage = attack_damage;
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
	unit *iter = (*base);
	if((*base) == target)
	{
		unit *u = (*base)->next;
		free(*base);
		(*base) = u;
	}
	if(iter  != NULL)
		while(iter->next != NULL)
		{
			if(iter->next == target)
			{
				iter->next = target->next;
				free(target);
			}
			if(iter->next != NULL)
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
