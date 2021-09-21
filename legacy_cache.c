// NOTE(filip): LEGACY CODE ----------------------------------------------------
// NOTE(filip): There are 180 lines of legacy code
// TODO(filip): Decide if you should remove this
// Generates vertices for a single square + color
// Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildSquareVertices(float offset_x, float offset_y, 
						 	 float color_r, float color_b, float color_g, 
						 	 float side_len, GLfloat* dest)
{
	*(dest++) = offset_x;
	*(dest++) = offset_y;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x + side_len;
	*(dest++) = offset_y;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x;
	*(dest++) = offset_y + side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x + side_len;
	*(dest++) = offset_y + side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	return dest;
}

// Generates indices (two triangles) for a single square (divided by diagonal)
// Square vertices are in order, so triangles are (0,1,3) and (0,2,3)
GLuint* buildSquareIndices(GLuint offset, GLuint* dest)
{
	*(dest ++) = offset;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 3;

	*(dest ++) = offset;
	*(dest ++) = offset + 2;
	*(dest ++) = offset + 3;

	return dest;
}

// This generates vertices and indices for map
void buildSquareMapGL(int size_x, int size_y, 
				float side_len, 
				float offset_x, float offset_y, 
				GLfloat** vertices, GLuint** indices)
{
	int i, j;
	*vertices = (GLfloat *) malloc(4 * 6 * size_x * size_y * sizeof (GLfloat));
	*indices = (GLuint *) malloc(6 * size_x * size_y * sizeof (GLuint));
	GLfloat *iter_v = *vertices;
	GLuint *iter_i = *indices;
	uint index_cnt = 0;
	for(i = 0; i < size_y; i++){
		for(j = 0; j < size_x; j++){
			iter_v = buildSquareVertices(offset_x + j * side_len, 
										 offset_y + i * side_len, 
									     0.0f, 0.0f, 0.0f,
									     side_len, iter_v);
			
			iter_i = buildSquareIndices(index_cnt, iter_i);
			index_cnt += 4;	
			#ifdef DEBUG
			printf("(%.2f,%.2f) ", (float)j*0.08f, (float)i*0.08f);
			#endif
		}
		#ifdef DEBUG
		printf("\n");
		#endif
	}
}

int getSquareMapVertexBufferSize(game_state *state)
{
	return state->size_x*state->size_y*4*6*sizeof(GLfloat); 
}

int getSquareMapIndexBufferSize(game_map *map)
{
	return map->size_x*map->size_y*6*sizeof(GLuint);
}

void initializeMap(int size_x, int size_y, unsigned char ***map);
void initializeUIState(int size_x, int size_y, unsigned char ***ui);
// Generates hard coded square test map
void generateSquareTestMap(game_map *map, ui_state *ui)
{
	int i, j;
	map->size_x = 20;
   	map->size_y = 15;	
	initializeMap(map->size_x, map->size_y, &map->data);
	initializeUIState(map->size_x, map->size_y, &ui->ui_map);
	for(i = 0; i < map->size_y; i++)
	{
		for(j = 0; j < map->size_x; j++)
		{
			map->data[i][j] = 1;
		}
	}

	map->data[0][3] = 2;
	map->data[2][1] = 3;
	map->data[1][2] = 3;
	map->data[3][5] = 3;
	map->data[6][6] = 3;	

	map->data[14][19] = 4;
	map->data[13][10] = 5;
	map->data[9][18] = 5;
	map->data[11][17] = 5;
	map->data[13][6] = 5;	
}

void updateSquareMapGL(game_map* map,
	   			 ui_state* ui,	
				 float *colors, 
				 GLfloat *mapVertices, 
				 GLuint VBO){
	int i, j, k;
	glBindBuffer(GL_ARRAY_BUFFER, VBO); // Binds GL_ARRAY_BUFFER to our VBO

	// Render game map
	GLfloat *iter = mapVertices;
	for(i = 0; i < map->size_y; i++)
	{
		for(j = 0; j < map->size_x; j++)
		{
			for (k = 0; k < 4; k++)
			{
				iter=iter+3;
				*(iter++) = *(colors + 3 * map->data[i][j]    ); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 1); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 2); 			
			}
		}
	}

	// Render UI mask over game map
	iter = mapVertices;
	for(i = 0; i < map->size_y; i++)
	{
		for(j = 0; j < map->size_x; j++)
		{
			for (k = 0; k < 4; k++)
			{
				if(ui->ui_map[i][j] != 0)
				{
					iter=iter+3;
					*(iter++) = *(colors + 3*ui->ui_map[i][j]    ); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 1); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 2); 			
				}
			}
		}
	}

	// Writes new changes
	glBufferSubData(GL_ARRAY_BUFFER, 0, // Writes new data to GL_ARRAY_BUFFER
					getSquareMapVertexBufferSize(map), // Size of new data 
					mapVertices); // New data to render
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);	
}

// LEGACY CODE ENDS HERE -------------------------------------------------------
