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

	createGLObject(&object, string_length * 4 * VERTEX_CHANNELS);
	object->vertex_step = 4;
	object->text = malloc(string_length + 1);
	strcpy(object->text, message);

	addGLObject(object, &gl_state->text_objects);
	object->vertices[0] = x;
	object->vertices[1] = y;
	object->vertices[2] = 1.0; 
}

void updateTextAlpha(char message[], float x, float y, float alpha, struct gl_game_state *gl_state)
{
	gl_object *object;
	int string_length = strlen(message);

	createGLObject(&object, string_length*4*VERTEX_CHANNELS);
	object->vertex_step = 4;
	object->text = malloc(string_length+1);
	strcpy(object->text, message);
	
	addGLObject(object, &gl_state->text_objects);
	object->vertices[0] = x;
	object->vertices[1] = y;
	object->vertices[2] = alpha; 
}

const char* glGetErrorString(GLenum error)
{
    switch (error)
    {
    case GL_NO_ERROR:          return "No Error";
    case GL_INVALID_ENUM:      return "Invalid Enum";
    case GL_INVALID_VALUE:     return "Invalid Value";
    case GL_INVALID_OPERATION: return "Invalid Operation";
    case GL_INVALID_FRAMEBUFFER_OPERATION: return "Invalid Framebuffer Operation";
    case GL_OUT_OF_MEMORY:     return "Out of Memory";
    case GL_STACK_UNDERFLOW:   return "Stack Underflow";
    case GL_STACK_OVERFLOW:    return "Stack Overflow";
    case GL_CONTEXT_LOST:      return "Context Lost";
    default:                   return "Unknown Error";
    }
}

void _glCheckErrors(const char *filename, int line)
{
    GLenum err;
    while ((err = glGetError()) != GL_NO_ERROR)
        printf("OpenGL Error: %s (%d) [%u] %s\n", filename, line, err, glGetErrorString(err));
}

#define glCheckErrors() _glCheckErrors(__FILE__, __LINE__)

void updateStoreSizeGL(int vertices_size, gl_game_state *gl_state);

void updateTexts(game_state *state, gl_game_state *gl_state)
{
	while(gl_state->text_objects != NULL)
	{
		removeGLObject(&gl_state->text_objects, gl_state->text_objects);	
	}
	char message[200];
	snprintf(message, 100, "%.1f MS, %.0f FPS", 
			state->delta_time*1000, 
			1/state->delta_time);
	updateText(message, 0.55, -0.75, gl_state);

	snprintf(message, 100, "Player turn: %d", gl_state->state->turn);
	updateText(message, 0.55, -0.79, gl_state);

	snprintf(message, 100, "Turn count: %d", state->turn_count/state->player_number);
	updateText(message, 0.55, -0.83, gl_state);

	snprintf(message, 100, "Your essence: %d (+%d)", 
			state->players[state->turn].essence_total, 
			state->players[state->turn].essence_generation);
	updateText(message, 0.55, -0.87, gl_state);

	if(state->players[(state->turn+1)%2].turns_to_pulse == -1)
		snprintf(message, 100, "Enemy Pulse: not detected");
	else 
		snprintf(message, 100, "Enemy Pulse: %d turns left", state->players[(state->turn+1)%2].turns_to_pulse);
	updateText(message, 0.55, -0.91, gl_state);

	if(state->players[state->turn].turns_to_pulse == -1)
		snprintf(message, 100, "Your Pulse: not detected");
	else 
		snprintf(message, 100, "Your Pulse: %d turns left", state->players[state->turn].turns_to_pulse);
	updateText(message, 0.55, -0.95, gl_state);

	int displayed_unit = -1;
	if(state->selected_unit != -1) 
		displayed_unit = state->selected_unit;
	if(state->target_unit != -1)
		displayed_unit = state->target_unit;

	if(displayed_unit != -1)
	{
		snprintf(message, 100, "Unit type: %s", 
				gl_state->state->unit_names[state->units[displayed_unit].type]);
		updateText(message, -0.96, -0.75, gl_state);

		snprintf(message, 100, 
				"Health points left: %d/%d", 
				state->units[displayed_unit].health,
				state->units[displayed_unit].health_stat);
		updateText(message, -0.96, -0.80, gl_state);


		if(state->units[displayed_unit].type != UNIT_WORKSHOP) 
		{
			snprintf(message, 100, 
					"Movement points: %d/%d", 
					state->units[displayed_unit].mp_current,
					state->units[displayed_unit].mp_stat); 
			updateText(message, -0.96, -0.85, gl_state);

			snprintf(message, 100, 
					"Attack damage: %d", 
					state->units[displayed_unit].attack_damage);
			updateText(message, -0.96, -0.90, gl_state);

			snprintf(message, 100, "Options: TAB-CycleUnits, V-Move, T-Attack");
			updateText(message, -0.96, -0.95, gl_state);
		}
		else
		{
			snprintf(message, 100, "Options: TAB-CycleUnits, B-Build, ESC-ExitBuild");
			updateText(message, -0.96, -0.85, gl_state);

			snprintf(message, 100, 
					"1-Wisp(50 E), 2-Golem(100 E), 3-Unbound Elemental(100 E), 4-Arcane Pulse(600 E)");
			updateText(message, -0.96, -0.90, gl_state);
		}
	}

	if(state->alert_countdown >= 0)
	{
		state->alert_countdown -= state->delta_time;
		snprintf(message, 100, 
				"%s", state->alert_message);
		updateTextAlpha(message, -0.3, 0.6, 
						state->alert_countdown/state->alert_countdown_max, 
						gl_state);
	}

	if(state->mode == MODE_TRANSITION)
	{	
		snprintf(message, 100, 
				 "Press ENTER to start your turn");
			updateText(message, -0.2, 0, gl_state);
	}

	snprintf(message, 100, "Press H to see key bindings.."); 
	updateText(message, -0.96, -0.65, gl_state);

	if(state->help == 1)
	{

		snprintf(message, 100, "Help menu");
		updateText(message, -0.7, 0.70, gl_state);

		snprintf(message, 100, "General:");
		updateText(message, -0.7, 0.50, gl_state);

		snprintf(message, 100, "H - Help menu, ESC(hold) - Exit game, CTRL+S - Save, CTRL+L - Load");
		updateText(message, -0.7, 0.45, gl_state);

		snprintf(message, 100, "Normal mode (no unit selected):");
		updateText(message, -0.7, 0.35, gl_state);

		snprintf(message, 100, "WASD/LeftClick - Move camera, TAB - Select next unit, ENTER - End your turn");
		updateText(message, -0.7, 0.30, gl_state);

		snprintf(message, 100, "Normal mode (unit selected):");
		updateText(message, -0.7, 0.20, gl_state);

		snprintf(message, 100, "T - Attack mode, V - Move mode");
		updateText(message, -0.7, 0.15, gl_state);

		snprintf(message, 100, "Move mode:");
		updateText(message, -0.7, 0.05, gl_state);

		snprintf(message, 100, "WASD/Mouse - move cursor, Click/Space - confirm movement");
		updateText(message, -0.7, 0.0, gl_state);

		snprintf(message, 100, "Attack mode:");
		updateText(message, -0.7, -0.1, gl_state);

		snprintf(message, 100, "WASD/Mouse - move attack cursor, Click/Space - confirm attack");
		updateText(message, -0.7, -0.15, gl_state);

		snprintf(message, 100, "Build mode (workshop selected):");
		updateText(message, -0.7, -0.25, gl_state);

		snprintf(message, 100, "1 - Wisp, 2 - Golem, 3 - Unbound Elemental, 4 - Arcane Pulse");
		updateText(message, -0.7, -0.30, gl_state);
	}
}

void drawTexts(game_state *state, gl_game_state *gl_state) 
{
	FT_Face *face = &gl_state->face;
	FT_Library *library = &gl_state->library;
	glBindVertexArray(gl_state->VAO);
	glBindBuffer(GL_ARRAY_BUFFER, gl_state->VBO);
	glUniform1i(glGetUniformLocation(gl_state->shader_program, "isText"), 1);
	glCheckErrors(); 
  if(gl_state->initFonts == 0)
  {
    unsigned char p = 1;
    for(p = 0; p<=128; p++)
    {
      if(FT_Load_Char(*face, p, FT_LOAD_RENDER))
      {
        printf("CHAR %x NOT FOUND ERROR\n", p);
        //return;
      }		
      int error = FT_Render_Glyph( (*face)->glyph,   /* glyph slot  */
                 FT_RENDER_MODE_NORMAL ); /* render mode */
		  unsigned int texture;
      glGenTextures(1, &texture);
      glBindTexture(GL_TEXTURE_2D, texture);
      glTexImage2D(GL_TEXTURE_2D, 0, 1,
		  				 (*face)->glyph->bitmap.width,
		  				 (*face)->glyph->bitmap.rows, 0, GL_RED,
		  				 GL_UNSIGNED_BYTE,
		  				 (*face)->glyph->bitmap.buffer);

		  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
			glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
			glPixelStorei(GL_UNPACK_ALIGNMENT, 1); 
		  
      gl_state->gl_glyphs[p].texture = texture;
		  gl_state->gl_glyphs[p].width = (*face)->glyph->bitmap.width;
		  gl_state->gl_glyphs[p].rows = (*face)->glyph->bitmap.rows;
		  gl_state->gl_glyphs[p].left = (*face)->glyph->bitmap_left;
		  gl_state->gl_glyphs[p].top = (*face)->glyph->bitmap_top;
		  gl_state->gl_glyphs[p].advance_x = (*face)->glyph->advance.x;
		  gl_state->gl_glyphs[p].advance_y = (*face)->glyph->advance.y;
    }
    gl_state->initFonts = 1;
  }
	for(gl_object *iter = gl_state->text_objects; iter !=NULL; iter = iter->next)
	{
		float x = iter->vertices[0], y = iter->vertices[1];
		float alpha = iter->vertices[2];
		float sx = 0.00085, sy = 0.00085;

		char *p;
		int string_length = strlen(iter->text);
		for(p = iter->text; *p != '\0'; p++)
		{
      /*
			if(FT_Load_Char(*face, *p, FT_LOAD_RENDER))
			{
				printf("CHAR %x NOT FOUND ERROR\n", *p);
				//return;
			}		
			int error = FT_Render_Glyph( (*face)->glyph,    glyph slot  
								 FT_RENDER_MODE_NORMAL ); render mode */
			float x2 = x + gl_state->gl_glyphs[*p].left * sx;
			float y2 = -y - gl_state->gl_glyphs[*p].top * sy;
			float w = gl_state->gl_glyphs[*p].width * sx;
			float h = gl_state->gl_glyphs[*p].rows * sy;
			
			GLfloat text_box[40] = {x2,     -y2    , 0, 1, 1, 1, alpha, 0, 0, 1,
									x2 + w, -y2    , 0, 1, 1, 1, alpha, 1, 0, 1,
									x2,     -y2 - h, 0, 1, 1, 1, alpha, 0, 1, 1,
									x2 + w, -y2 - h, 0, 1, 1, 1, alpha, 1, 1, 1};
			//memcpy(iter->vertices, text_box, 40 * sizeof(GLfloat));
		   
		  updateStoreSizeGL(4 * VERTEX_CHANNELS, gl_state);	
		  glBindTexture(GL_TEXTURE_2D, gl_state->gl_glyphs[*p].texture);
		  glBufferSubData(GL_ARRAY_BUFFER, 
							0, 
							4 * VERTEX_CHANNELS * sizeof(GLfloat), 
							text_box);
		   glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
			
			x += (gl_state->gl_glyphs[*p].advance_x/64) * sx;
			y += (gl_state->gl_glyphs[*p].advance_y/64) * sy;
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
