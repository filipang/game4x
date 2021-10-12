/*******************************************************************************
* 
* FILENAME : text.c
*
* DESCRIPTION :
*       This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    25/09/2021
*
*******************************************************************************/

void updateText(char message[], float x, float y, struct gl_game_state *gl_state)
{
	gl_object *object;
	int string_length = strlen(message);

	createGLObject(&object, string_length*4*VERTEX_CHANNELS);
	object->vertices_offset = gl_state->vertices_size;
	gl_state->vertices_size += object->vertices_size;
	object->text = malloc(string_length+1);
	strcpy(object->text, message);
	
	addGLObject(object, &gl_state->text_objects);
	object->vertices[0] = x;
	object->vertices[1] = y;
}

void updateStoreSizeGL(gl_game_state *gl_state);

void updateTexts(game_state *state, gl_game_state *gl_state)
{
	while(gl_state->text_objects != NULL)
	{
		gl_state->vertices_size -= gl_state->text_objects->vertices_size;
		removeGLObject(&gl_state->text_objects, gl_state->text_objects);	
	}
	char message[200];
	sprintf(message, "%.1f MS, %.0f FPS", 
			state->delta_time*1000, 
			1/state->delta_time);
	updateText(message, 0.55, -0.75, gl_state);

	sprintf(message, "Player turn: %d", gl_state->state->turn);
	updateText(message, 0.55, -0.80, gl_state);

	sprintf(message, "Turn count: %d", state->turn_count/state->player_number);
	updateText(message, 0.55, -0.85, gl_state);

	sprintf(message, "Your essence: %d (+%d)", 
			state->players[state->turn].essence_total, 
			state->players[state->turn].essence_generation);
	updateText(message, 0.55, -0.90, gl_state);

	if(state->selected_unit != NULL)
	{
		sprintf(message, "Selected unit: %s", 
				gl_state->state->unit_names[state->selected_unit->type]);
		updateText(message, -0.96, -0.75, gl_state);

		sprintf(message, 
				"Health points left: %d", 
				state->selected_unit->health);
		updateText(message, -0.96, -0.80, gl_state);


		if(state->selected_unit->type != UNIT_WORKSHOP) 
		{
			sprintf(message, 
					"Movement points left: %d", 
					state->selected_unit->mp_current); 
			updateText(message, -0.96, -0.85, gl_state);

			sprintf(message, 
					"Attack damage: %d", 
					state->selected_unit->attack_damage); 
			updateText(message, -0.96, -0.90, gl_state);

			sprintf(message, "Options: TAB-CycleUnits, V-Move, T-Attack");
			updateText(message, -0.96, -0.95, gl_state);
		}
		else
		{
			sprintf(message, "Options: TAB-CycleUnits, B-Build, ESC-ExitBuild");
			updateText(message, -0.96, -0.85, gl_state);
			sprintf(message, "1-Wisp(50 E), 2-Golem(100 E), 3-Unbound Elemental(100 E), 4-Arcane Pulse(600 E)");
			updateText(message, -0.96, -0.90, gl_state);
		}
	}
}

void drawTexts(game_state *state, gl_game_state *gl_state) 
{
	FT_Face *face = &gl_state->face;
	FT_Library *library = &gl_state->library;
	glBindVertexArray(gl_state->VAO);
	glBindBuffer(GL_ARRAY_BUFFER, gl_state->VBO);
	glUniform1i(glGetUniformLocation(gl_state->shader_program, "isText"), 1);
	updateStoreSizeGL(gl_state);
	for(gl_object *iter = gl_state->text_objects; iter !=NULL; iter = iter->next)
	{
		float x = iter->vertices[0], y = iter->vertices[1];
		float sx = 0.00085, sy = 0.00085;

  		char *p;
		int string_length = strlen(iter->text);
		for(p = iter->text; *p; p++)
		{
			if(FT_Load_Char(*face, *p, FT_LOAD_RENDER))
			{
				printf("CHAR %x NOT FOUND ERROR\n", *p);
				//return;
			}		
			int error = FT_Render_Glyph( (*face)->glyph,   /* glyph slot  */
								 FT_RENDER_MODE_NORMAL ); /* render mode */

			glTexImage2D(GL_TEXTURE_2D, 0, GL_RED,
		  				 (*face)->glyph->bitmap.width,
		  				 (*face)->glyph->bitmap.rows, 0, GL_RED,
		  				 GL_UNSIGNED_BYTE,
		  				 (*face)->glyph->bitmap.buffer);

		    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
			glPixelStorei(GL_UNPACK_ALIGNMENT, 1); 

			float x2 = x + (*face)->glyph->bitmap_left * sx;
			float y2 = -y - (*face)->glyph->bitmap_top * sy;
			float w = (*face)->glyph->bitmap.width * sx;
			float h = (*face)->glyph->bitmap.rows * sy;
			
			GLfloat text_box[40] = {x2,     -y2    , 0, 1, 1, 1, 1, 0, 0, 1,
									x2 + w, -y2    , 0, 1, 1, 1, 1, 1, 0, 1,
									x2,     -y2 - h, 0, 1, 1, 1, 1, 0, 1, 1,
									x2 + w, -y2 - h, 0, 1, 1, 1, 1, 1, 1, 1};
			memcpy(iter->vertices, text_box, 40 * sizeof(GLfloat));
		    
			glBufferSubData(GL_ARRAY_BUFFER, 
							iter->vertices_offset * sizeof(GLfloat), 
							4 * VERTEX_CHANNELS * sizeof(GLfloat), 
							iter->vertices);
		    glDrawArrays(GL_TRIANGLE_STRIP, iter->vertices_offset/VERTEX_CHANNELS, 4);
			
			x += ((*face)->glyph->advance.x/64) * sx;
			y += ((*face)->glyph->advance.y/64) * sy;
		}
	}	
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);	
}

void initFreetype(FT_Library *library, FT_Face *face)
{
	int error;

	error = FT_Init_FreeType(library);
	if (error)
	{
		printf("Freetype failed to initialize\n");
	}
	error = FT_New_Face( *library,
                     "/usr/share/fonts/truetype/freefont/FreeSans.ttf",
                     0,
                     face);
	if ( error == FT_Err_Unknown_File_Format )
	{
		printf("Format unsupported");
	}
	else if ( error )
	{
		printf("Fontfile could not be opened\n");
	}
	printf("%d",(*face)->num_glyphs);
	printf("\n");
	error = FT_Set_Char_Size(
          *face,    /* handle to face object           */
          0,       /* char_width in 1/64th of points  */
          4*64,   /* char_height in 1/64th of points */
          800,     /* horizontal device resolution    */
          800 );   /* vertical device resolution      */
}
