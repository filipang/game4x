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


void renderText(const char *text, 
				 float x, float y, 
				 float sx, float sy,
				 FT_Library *library, FT_Face *face, 
				 gl_object** object, game_state *state) 
{
  const char *p;
  if(object==NULL)
  {
	  createGLObject(object, strlen(text));
	  for(p = text; *p; p++) {
		if(FT_Load_Char(*face, *p, FT_LOAD_RENDER))
			continue;

		glTexImage2D(
		  GL_TEXTURE_2D,
		  0,
		  GL_RED,
		  face->glyph->bitmap.width,
		  g->bitmap.rows,
		  0,
		  GL_RED,
		  GL_UNSIGNED_BYTE,
		  face->glyph->bitmap.buffer
		);

		float x2 = x + g->bitmap_left * sx;
		float y2 = -y - g->bitmap_top * sy;
		float w = face->glyph->bitmap.width * sx;
		float h = face->glyph->bitmap.rows * sy;

		GLfloat text_box[16] = {x2,     -y2    , 0, 0,
								x2 + w, -y2    , 1, 0,
								x2,     -y2 - h, 0, 1,
								x2 + w, -y2 - h, 1, 1};

		memcpy(text_box, object->vertices + p * 16 * sizeof(GLfloat), 16 * sizeof(GLfloat));
		//glBufferData(GL_ARRAY_BUFFER, sizeof box, box, GL_DYNAMIC_DRAW);
		//glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

		x += (g->advance.x/64) * sx;
		y += (g->advance.y/64) * sy;
	  }
	  add_object(&state->gl_objects, *object);
	  (*object)->modified = 1;
  }
  else
  {
	  for(p = text; *p; p++) {
		if(FT_Load_Char(face, *p, FT_LOAD_RENDER))
			continue;

		glTexImage2D(
		  GL_TEXTURE_2D,
		  0,
		  GL_RED,
		  g->bitmap.width,
		  g->bitmap.rows,
		  0,
		  GL_RED,
		  GL_UNSIGNED_BYTE,
		  g->bitmap.buffer
		);

		float x2 = x + g->bitmap_left * sx;
		float y2 = -y - g->bitmap_top * sy;
		float w = g->bitmap.width * sx;
		float h = g->bitmap.rows * sy;

		GLfloat text_box[16] = {x2,     -y2    , 0, 0,
								x2 + w, -y2    , 1, 0,
								x2,     -y2 - h, 0, 1,
								x2 + w, -y2 - h, 1, 1};

		memcpy(text_box, object->vertices + p * 16 * sizeof(GLfloat), 16 * sizeof(GLfloat));
		x += (g->advance.x/64) * sx;
		y += (g->advance.y/64) * sy;
	  }
	  (*object)->modified = 1;
  }
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

	if(face->glyph->format == FT_GLYPH_FORMAT_BITMAP)
		printf("E BITMAP FRATE\n");
	else
		printf("NU-I BITMAP COAIE\n");
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
	error = FT_New_Face( library,
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
}
