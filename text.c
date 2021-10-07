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

void updateText(char message[], float x, float y, game_state *state)
{
	gl_object *object;
	int string_length = strlen(message);

	createGLObject(&object, string_length*4*VERTEX_CHANNELS);
	object->text = malloc(string_length+1);
	strcpy(object->text, message);
	
	addGLObject(object, &state->text_objects);
	object->vertices[0] = x;
	object->vertices[1] = y;
}

void updateTexts(game_state *state)
{
	while(state->text_objects != NULL)
			removeGLObject(&state->text_objects, state->text_objects);

	char message[100];
	sprintf(message, "%.1f MS, %.0f FPS", state->delta_time*1000, 1/state->delta_time);
	updateText(message, 0.0, 0.85, state);

	sprintf(message, "Player turn: %d", state->turn);
	updateText(message, 0.0, 0.68, state);

	sprintf(message, "Turn count: %d", state->turn_count/state->player_number);
	updateText(message, 0.0, 0.51, state);
}

// FIXME(filip): Call updata datastore before drawing to avoid gl store overflow
void drawTexts(GLuint VAO, GLuint VBO, GLuint shader_program, FT_Face *face, game_state *state)
{
	state->text_objects->vertices_offset = state->vertices_size;
	glBindVertexArray(VAO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glUniform1i(glGetUniformLocation(shader_program, "isText"), 1);
	for(gl_object *iter = state->text_objects; iter !=NULL; iter = iter->next)
	{
		float x = iter->vertices[0], y = iter->vertices[1];
		float sx = 0.002, sy = 0.002;

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
			if(iter->next)
				iter->next->vertices_offset=iter->vertices_offset+iter->vertices_size;

		}
	}	
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
	glBindTexture(GL_TEXTURE_2D, 0);	
}

FT_Bitmap* testFreetype()
{
	FT_Library  library;   /* handle to library     */
	FT_Face     face;      /* handle to face object */

	int glyph_index;
	int error;

	error = FT_Init_FreeType(&library);
	if (error)
	{
		printf("Freetype failed to initialize\n");
		}
	error = FT_New_Face( library,
                     "/usr/share/fonts/truetype/freefont/FreeSans.ttf",
                     0,
                     &face );
	if ( error == FT_Err_Unknown_File_Format )
	{
		printf("Format unsupported");
	}
	else if ( error )
	{
		printf("Fontfile could not be opened\n");
	}
	printf("%d",face->num_glyphs);
	printf("\n");
	error = FT_Set_Char_Size(
          face,    /* handle to face object           */
          0,       /* char_width in 1/64th of points  */
          16*64,   /* char_height in 1/64th of points */
          300,     /* horizontal device resolution    */
          300 );   /* vertical device resolution      */
	printf("%d\n", error);
	glyph_index = FT_Get_Char_Index( face, 0x00410);
	printf("%d\n", glyph_index);

	error = FT_Load_Glyph(
          face,          /* handle to face object */
          glyph_index,   /* glyph index           */
          0 );			 /* load flags, see below */
	
	error = FT_Render_Glyph( face->glyph,   /* glyph slot  */
                         FT_RENDER_MODE_NORMAL ); /* render mode */

	//if(face->glyph->format == FT_GLYPH_FORMAT_BITMAP)
		//printf("E BITMAP FRATE\n");
	//else
		//printf("NU-I BITMAP COAIE\n");
	return &face->glyph->bitmap;
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
          16*64,   /* char_height in 1/64th of points */
          300,     /* horizontal device resolution    */
          300 );   /* vertical device resolution      */
	printf("%d\n", error);
	int glyph_index = FT_Get_Char_Index( *face, 0x00410);
	printf("%d\n", glyph_index);
}
