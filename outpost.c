/*******************************************************************************
* 
* FILENAME : outpost.c
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

typedef struct outpost
{
	float health;
	int position_x;
	int position_y;
	int type;
	int team;
	
	struct gl_object *object; // unit gl_object

	struct outpost *next;
} outpost;

void createOutpost(outpost **u, int position_x, int position_y, int type, int team){
	*u = malloc(sizeof(outpost));
	(*u)->health = 1.0;
	(*u)->position_x = position_x;
	(*u)->position_y = position_y;
	(*u)->type = type;
	(*u)->team = team;
	(*u)->next = NULL;
}

void addOutpost(outpost *src, outpost **dst){
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
		addOutpost(src, &(*dst)->next);
	}
}

// TODO(filip): Free unit list function
void removeOutpost(outpost **base, outpost *target){
	outpost *iter = (*base);
	if((*base) == target)
	{
		outpost *u = (*base)->next;
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

outpost* findOutpost(outpost *iter, int position_x, int position_y){
	if(iter == NULL){	
		return NULL;
	}
	else if(iter->position_x == position_x && iter->position_y == position_y)
	{
		return iter;
	}
	else
	{
		return findOutpost(iter->next, position_x, position_y);
	}
}
