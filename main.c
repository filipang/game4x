#include <stdio.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <math.h>
#include <stdlib.h>

#define PI 3.14159265359

// NOTE(filip): Remove this on release
#define DEBUG

// NOTE(filip): Everything has to be simplified to be re-written in ASM
// TODO(filip): Save shaders in files and read them

// Vertex Shader source code
const char* vertexShaderSource = "#version 330 core\n"
"layout (location = 0) in vec3 aPos;\n"
"layout (location = 1) in vec3 aCol;\n"
"out vec3 ourColor;\n"
"void main()\n"
"{\n"
"   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
"   ourColor = vec3(aCol.x, aCol.y, aCol.z);\n"
"}\0";
//Fragment Shader sou7ce code
const char* fragmentShaderSource = "#version 330 core\n"
"out vec4 FragColor;\n"
"in vec3 ourColor;\n"
"void main()\n"
"{\n"
"   FragColor = vec4(ourColor, 1.0f);\n"
"}\n\0";


// NOTE(filip): Maybe move these structs in header file?

// NOTE(filip): Mabe make data unsigned char* instead of unsigned char** for ASM
typedef struct game_map {
	unsigned char **data;
	int size_x;
	int size_y;
} game_map;

typedef struct ui_state {
    unsigned char **ui_map;
} ui_state;

typedef struct game_state {
	game_map *map;
	ui_state *ui;
	int player_number;
	int started;
	int started_move;
	int cursor_x;
	int cursor_y;
	int move_cursor_x;
	int move_cursor_y;
	int turn;
	unsigned char current_unit_code;
	unsigned char selected_code;
	int move_attack_state;
} game_state;

// Generates vertices for a single square + color
// NOTE(filip): Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildSquareVertices(float offset_x, float offset_y, 
						 	 float color_r, float color_b, float color_g, 
						 	 float side_len, GLfloat* dest){
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
GLuint* buildSquareIndices(GLuint offset, GLuint* dest){
	*(dest ++) = offset;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 3;

	*(dest ++) = offset;
	*(dest ++) = offset + 2;
	*(dest ++) = offset + 3;

	return dest;
}

// Generates vertices for a single hexagon + color
// NOTE(filip): Vertex in memory: (pos_x, pos_y, pos_z, col_x, col_y, col_z)
GLfloat* buildHexagonVertices(float offset_x, float offset_y, 
						 	 float color_r, float color_b, float color_g, 
						 	 float side_len, GLfloat* dest){
	*(dest++) = offset_x;
	*(dest++) = offset_y + side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x + sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x;
	*(dest++) = offset_y - side_len;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;

	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y - side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	*(dest++) = offset_x - sqrt(3)/2*side_len;
	*(dest++) = offset_y + side_len/2;
	*(dest++) = 0.0f;
	*(dest++) = color_r;
	*(dest++) = color_b;
	*(dest++) = color_g;
	
	return dest;
}

GLuint* buildHexagonIndices(GLuint offset, GLuint* dest){
	*(dest ++) = offset;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 5;

	*(dest ++) = offset + 5;
	*(dest ++) = offset + 1;
	*(dest ++) = offset + 4;

	*(dest ++) = offset + 1;
	*(dest ++) = offset + 2;
	*(dest ++) = offset + 4;

	*(dest ++) = offset + 2;
	*(dest ++) = offset + 3;
	*(dest ++) = offset + 4;

	return dest;
}

// This generates vertices and indices for map
void buildSquareMapGL(int size_x, int size_y, 
				float side_len, 
				float offset_x, float offset_y, 
				GLfloat** vertices, GLuint** indices){
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

// This generates vertices and indices for map
void buildHexagonMapGL(int size_x, int size_y, 
				float side_len, 
				float offset_x, float offset_y, 
				GLfloat** vertices, GLuint** indices){
	int i, j;
	*vertices = (GLfloat *) malloc(6 * 6 * size_x * size_y * sizeof (GLfloat));
	*indices = (GLuint *) malloc(4 * 3 * size_x * size_y * sizeof (GLuint));
	GLfloat *iter_v = *vertices;
	GLuint *iter_i = *indices;
	uint index_cnt = 0;
	for(i = 0; i < size_y; i++){
		for(j = 0; j < size_x; j++){
			iter_v = buildHexagonVertices(offset_x + (j + i*0.5) * sqrt(3) * side_len, 
										  offset_y + i * (sqrt(3)/2) * sqrt(3) *  side_len, 
									      0.0f, 0.0f, 0.0f,
									      side_len, iter_v);
			
			iter_i = buildHexagonIndices(index_cnt, iter_i);
			index_cnt += 6;	
			#ifdef DEBUG
			printf("(%.2f,%.2f) ", (float)j*0.08f, (float)i*0.08f);
			#endif
		}
		#ifdef DEBUG
		printf("\n");
		#endif
	}
}

int getSquareMapVertexBufferSize(game_map *map){
	return map->size_x*map->size_y*4*6*sizeof(GLfloat);
}

int getSquareMapIndexBufferSize(game_map *map){
	return map->size_x*map->size_y*6*sizeof(GLuint);
}

int getHexagonMapVertexBufferSize(game_map *map){
	return map->size_x*map->size_y*6*6*sizeof(GLfloat);
}

int getHexagonMapIndexBufferSize(game_map *map){
	return map->size_x*map->size_y*4*3*sizeof(GLuint);
}

void freeMapVertices(GLfloat* vertices){
	free(vertices);
}


void freeMapIndices(GLuint* indices){
	free(indices);
}

void initializeUIState(int size_x, int size_y, unsigned char ***uiMapPtr){
	int i, j;
	*uiMapPtr = (unsigned char **) malloc(sizeof(unsigned char *) * size_y);
	for(i = 0; i < size_y; i++){
		*(*uiMapPtr + i) = 
			(unsigned char *) malloc(sizeof(unsigned char) * size_x);
		for(j = 0; j < size_x; j++) {
			*(*(*uiMapPtr + i) + j) = 0;
		}
	}
}

void initializeMap(int size_x, int size_y, unsigned char ***mapBufferPtr){
	int i, j;
	*mapBufferPtr = (unsigned char **) malloc(sizeof(unsigned char *) * size_y);
	for(i = 0; i < size_y; i++){
		*(*mapBufferPtr + i) = 
			(unsigned char *) malloc(sizeof(unsigned char) * size_x);
		for(j = 0; j < size_x; j++) {
			*(*(*mapBufferPtr + i) + j) = 0;
		}
	}
}

void printMap(int size_x, int size_y, 
			  unsigned char **map, unsigned char **ui_map){
	int i, j;
	printf("Map data:\n");
	for(i = 0; i < size_y; i++){
		for(j = 0; j < size_x; j++){
			printf("%d", *(*(map + i) + j));
		}
		printf("\n");
	}

	printf("UI data:\n");
	for(i = 0; i < size_y; i++){
		for(j = 0; j < size_x; j++){
			printf("%d", *(*(ui_map + i) + j));
		}
		printf("\n");
	}
}

void step(game_state* state);
// Starts first turn on next turn
void turn(game_state* state){
	//state-> turn is -1 when the game starts
	state->turn = (state->turn + 1)%state->player_number;
	// NOTE(filip): Hardcoded turns for 2 players
	// TODO(filip): Dynamic turns for variable number of players
	if(state->turn == 0){
		state-> current_unit_code = 3;
	}
	if(state->turn == 1){
		state-> current_unit_code = 5;
	}

	step(state);
}

void setMoveCursor(int new_move_x, int new_move_y, int range, game_state *state);

// Jump to the next unit (or first if state->started == 0)
void step(game_state* state){
	if(state->started == 1){
		(state->ui)->ui_map[state->cursor_y][(state->cursor_x)++] = 0;
	}
	else{
		state->started = 1;
	}
	for(;state->cursor_y < (state->map)->size_y;state->cursor_y++)
	{
		for(;state->cursor_x < (state->map)->size_x;state->cursor_x++)
		{
			printf("Comparing %d and %d\n", 
				   (state->map)->data[state->cursor_y][state->cursor_x], 
				    state->current_unit_code);

			if((state->map)->data[state->cursor_y][state->cursor_x] == 
				state->current_unit_code)
			{
				(state->ui)->ui_map[state->cursor_y][state->cursor_x] =
				   	state->selected_code; 
				state->started_move = 0;
				setMoveCursor(state->cursor_x, state->cursor_y, 4, state);
				return;
			}
		}
		state->cursor_x = 0;
	}
	state->cursor_y = 0;
	state->started = 0;
	turn(state);
}

void setMoveCursor(int new_move_x, int new_move_y, int range, game_state *state){
	int cost = 0, i, j;
	if(state->started_move && (state->move_cursor_x != state->cursor_x || state->move_cursor_y != state->cursor_y))
		state->ui->ui_map[state->move_cursor_y][state->move_cursor_x] = 0;
	else 
		state->started_move = 1;


	state->move_cursor_x = new_move_x;
	state->move_cursor_y = new_move_y;

	// NOTE(filip): Clarify this
	cost = abs(state->cursor_x - state->move_cursor_x) + 
		   abs(state->cursor_y - state->move_cursor_y);
	
	if(new_move_x != state->cursor_x || new_move_y != state->cursor_y){	
		if(cost > range){
			state->ui->ui_map[new_move_y][new_move_x] = 9;
		}
		if(cost == range){
			state->ui->ui_map[new_move_y][new_move_x] = 8;
		}
		if(cost < range){
			state->ui->ui_map[new_move_y][new_move_x] = 7;
		}
	}


}

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

// Generates a hard coded hexagonal test map
void generateHexagonalTestMap(game_map *map, ui_state *ui)
{
	int i, j;
	map->size_x = 15;
   	map->size_y = 20;	
	initializeMap(map->size_x, map->size_y, &map->data);
	initializeUIState(map->size_x, map->size_y, &ui->ui_map);
	for(i = 0; i < map->size_y;i++)
	{
		for(j = 0; j < map->size_x; j++)
		{
			map->data[i][j] = 1;
		}
	}
	
	map->data[0][0] = 2;
	map->data[2][1] = 3;
	map->data[1][2] = 3;
	map->data[6][6] = 3;	
	map->data[3][5] = 3;

	map->data[19][14] = 4;
	map->data[13][10] = 5;
	map->data[13][6] = 5;	
	map->data[13][10] = 5;	
	map->data[10][6] = 5;	
	map->data[7][12] = 5;	
	map->data[9][7] = 5;	
}

void updateSquareMapGL(game_map* map,
	   			 ui_state* ui,	
				 float *colors, 
				 GLfloat *mapVertices, 
				 GLuint VBO){
	int i, j, k;
	glBindBuffer(GL_ARRAY_BUFFER, VBO); // Binds GL_ARRAY_BUFFER to our VBO

	GLfloat *iter = mapVertices;
	for(i = 0; i < map->size_y; i++){
		for(j = 0; j < map->size_x; j++){
			for (k = 0; k < 4; k++){
				iter=iter+3;
				*(iter++) = *(colors + 3 * map->data[i][j]    ); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 1); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 2); 			
			}
		}
	}
	iter = mapVertices;
	for(i = 0; i < map->size_y; i++){
		for(j = 0; j < map->size_x; j++){
			for (k = 0; k < 4; k++){
				if(ui->ui_map[i][j] != 0){

					iter=iter+3;
					*(iter++) = *(colors + 3*ui->ui_map[i][j]    ); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 1); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 2); 			
				}
			}
		}
	}
	glBufferSubData(GL_ARRAY_BUFFER, 0, // Writes new data to GL_ARRAY_BUFFER
					getSquareMapVertexBufferSize(map), // Size of new data 
					mapVertices); // New data to render
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);	
}

void updateHexagonMapGL(game_map* map,
	   			 ui_state* ui,	
				 float *colors, 
				 GLfloat *mapVertices, 
				 GLuint VBO){
	int i, j, k;
	glBindBuffer(GL_ARRAY_BUFFER, VBO); // Binds GL_ARRAY_BUFFER to our VBO

	GLfloat *iter = mapVertices;
	for(i = 0; i < map->size_y; i++){
		for(j = 0; j < map->size_x; j++){
			for (k = 0; k < 6; k++){
				iter=iter+3;
				*(iter++) = *(colors + 3 * map->data[i][j]    ); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 1); 			
				*(iter++) = *(colors + 3 * map->data[i][j] + 2); 			
			}
		}
	}
	iter = mapVertices;
	for(i = 0; i < map->size_y; i++){
		for(j = 0; j < map->size_x; j++){
			for (k = 0; k < 6; k++){
				if(ui->ui_map[i][j] != 0){
					iter+=3;
					*(iter++) = *(colors + 3*ui->ui_map[i][j]    ); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 1); 			
					*(iter++) = *(colors + 3*ui->ui_map[i][j] + 2); 			
				}
				else{
					iter+=6;
				}
			}
		}
	}
	glBufferSubData(GL_ARRAY_BUFFER, 0, // Writes new data to GL_ARRAY_BUFFER
					getHexagonMapVertexBufferSize(map), // Size of new data 
					mapVertices); // New data to render
	
	glBindBuffer(GL_ARRAY_BUFFER, 0);	
}

void moveSelectedUnit(game_state *state){
	state->map->data[state->cursor_y][state->cursor_x] 
		= 1;
	state->map->data[state->move_cursor_y][state->move_cursor_x] 
		= state->current_unit_code;

	state->ui->ui_map[state->move_cursor_y][state->move_cursor_x] = 0;
	step(state);
}

void setSquare(unsigned char c,int x, int y, unsigned char **mapBuffer){
	*(*(mapBuffer+y)+x) = c;
}

void key_callback(GLFWwindow* window, 
				  int key, 
				  int scancode, 
				  int action, 
				  int mods)
{
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GLFW_TRUE);
}

int main()
{
	// GENERAL START SETUP -----------------------------------------------------
	// Initialize GLFW
	glfwInit();

	// Tell GLFW what version of OpenGL we are using
	// In this case we are using OpenGL 3.3
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	// Tell GLFW we are using the CORE profile
	// So that means we only have the modern functions
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Create a GLFWwindow object
	GLFWwindow* window = glfwCreateWindow(800, 800, "Game4X", NULL, NULL);
	// Error check if the window fails to create
	if (window == NULL)
	{
		printf("Failed to create GLFW window");
		glfwTerminate();
		return -1;
	}
	// Introduce the window into the current context
	glfwMakeContextCurrent(window);

	//Load GLAD so it configures OpenGL
	gladLoadGL();
	// Specify the viewport of OpenGL in the Window
	// In this case the viewport goes from x = 0, y = 0, to x = 800, y = 800
	glViewport(0, 0, 800, 800);



	// Create Vertex Shader Object and get its reference
	GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
	// Attach Vertex Shader source to the Vertex Shader Object
	glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(vertexShader);

	// Create Fragment Shader Object and get its reference
	GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	// Attach Fragment Shader source to the Fragment Shader Object
	glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
	// Compile the Vertex Shader into machine code
	glCompileShader(fragmentShader);

	// Create Shader Program Object and get its reference
	GLuint shaderProgram = glCreateProgram();
	// Attach the Vertex and Fragment Shaders to the Shader Program
	glAttachShader(shaderProgram, vertexShader);
	glAttachShader(shaderProgram, fragmentShader);
	// Wrap-up/Link all the shaders together into the Shader Program
	glLinkProgram(shaderProgram);

	// Delete the now useless Vertex and Fragment Shader objects
	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);



	// Vertices coordinates
	GLfloat *vertices;

	// Indices for vertices order
	GLuint *indices;

	// SPECIFIC START SETUP ----------------------------------------------------

	game_map test_map;
	ui_state ui;
	game_state state;

	generateHexagonalTestMap(&test_map, &ui);

	state.map = &test_map;
	state.ui = &ui;
	state.player_number = 2;
	state.turn = 0;
	state.cursor_x = 0;
	state.cursor_y = 0;	
	state.started = 0;
	state.selected_code = 6;
	state.turn = -1;
	state.move_attack_state = 1;

	turn(&state);

	// TODO(filip): Add way to render things other than the map
	// Build vertices and indices for the map
	buildHexagonMapGL(test_map.size_x, test_map.size_y, 
			   0.04f, 
			   -0.8f, -0.5f, 
			   &vertices, &indices);

	// Create reference containers for the Vartex Array Object, 
	// the Vertex Buffer Object, and the Element Buffer Object
	GLuint VAO, VBO, EBO;

	// Generate the VAO, VBO, and EBO with only 1 object each
	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);
	glGenBuffers(1, &EBO);

	// Make the VAO the current Vertex Array Object by binding it
	glBindVertexArray(VAO);

	// Bind the VBO specifying it's a GL_ARRAY_BUFFER
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	// Introduce the vertices into the VBO
	glBufferData(GL_ARRAY_BUFFER, getHexagonMapVertexBufferSize(&test_map), 
				 vertices, GL_DYNAMIC_DRAW);


	// Bind the EBO specifying it's a GL_ELEMENT_ARRAY_BUFFER
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
	// Introduce the indices into the EBO
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, 
				 getHexagonMapIndexBufferSize(&test_map), 
				 indices, GL_DYNAMIC_DRAW);

	// Configure the Vertex Attributes so that OpenGL knows how to read the VBO
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 
						  6 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 
						  6 * sizeof(float), (void*)(3 * sizeof(float)));
	glEnableVertexAttribArray(1);
	
	// Bind both the VBO and VAO to 0 so that we don't accidentally 
	// modify the VAO and VBO we created
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);

	// NOTE(filip):
	// Bind the EBO to 0 so that we don't accidentally modify it

	// MAKE SURE TO UNBIND IT AFTER UNBINDING THE VAO, as the EBO is linked 
	// in the VAO

	// This does not apply to the VBO because the VBO is already linked to the 
	// VAO during glVertexAttribPointer
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	

	// Input
	glfwSetKeyCallback(window, key_callback);

	// GAME --------------------------------------------------------------------

	// List of colors  
	GLfloat colors[] = {0.15f, 0.15f, 0.15f, //0. Dark grey
						0.8f, 0.8f, 0.7f,	 //1. Light yellow: map tiles
						0.1f, 0.1f, 0.5f,    //2. Dark blue: Blue ase
						0.1f, 0.1f, 0.8f,	 //3. Blue: Blue unit
						0.5f, 0.1f, 0.1f,    //4. Dark red: Red base
						0.8f, 0.1f, 0.1f,	 //5. Red: Red unit
						0.9f, 0.9f, 0.0f,    //6. Yellow: Selected
						0.1f, 0.7f, 0.1f,	 //7. Green
						0.6f, 0.6f, 0.0f,	 //8. Dark Yellow
						0.7f, 0.4f, 0.0f};	 //9. Dark Orange
	// Main while loop
	int a = 0;
	int prev_p = 0, prev_a = 0, prev_b = 0, prev_c=0, prev_d=0, prev_e=0;
	while (!glfwWindowShouldClose(window))
	{
		// TODO(filip): Find better way for getting only first frame of button
		//              press
		if(glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS)
		{
			if(prev_p == 0){
				step(&state);
				printMap(test_map.size_x, test_map.size_y, 
						 test_map.data, ui.ui_map);	
			}
			prev_p = 1;
		}
		else{
			prev_p = 0;
		}

		if(state.move_attack_state){
			// NOTE(filip): moves cursor up
			// TODO(filip): highlight path from unit to move cursor
			if(glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
			{
				if(prev_a == 0){
					setMoveCursor(state.move_cursor_x, state.move_cursor_y + 1, 4, &state);
				}
				prev_a = 1;
			}
			else{
				prev_a = 0;
			}
			
			// NOTE(filip): moves cursor up
			if(glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
			{
				if(prev_b == 0){
					setMoveCursor(state.move_cursor_x, state.move_cursor_y - 1, 4, &state);
				}
				prev_b = 1;
			}
			else{
				prev_b = 0;
			}

			// NOTE(filip): moves cursor left
			if(glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
			{
				if(prev_c == 0){
					setMoveCursor(state.move_cursor_x - 1, state.move_cursor_y, 4, &state);
				}
				prev_c = 1;
			}
			else{
				prev_c = 0;
			}

			// NOTE(filip): moves cursor right
			if(glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
			{
				if(prev_d == 0){
					setMoveCursor(state.move_cursor_x + 1, state.move_cursor_y, 4, &state);
				}
				prev_d = 1;
			}
			else{
				prev_d = 0;
			}

			// NOTE(filip): move
			if(glfwGetKey(window, GLFW_KEY_ENTER) == GLFW_PRESS)
			{
				if(prev_e == 0){
					moveSelectedUnit(&state);
				}
				prev_e = 1;
			}
			else{
				prev_e = 0;
			}
		}

		// Specify the color of the background
		glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
		// Clean the back buffer and assign the new color to it
		glClear(GL_COLOR_BUFFER_BIT);
	

		// Bind the VAO so OpenGL knows to use it
		glBindVertexArray(VAO);
		// Render map
		updateHexagonMapGL(&test_map, &ui, colors, vertices, VBO);		

		// Tell OpenGL which Shader Program we want to use
		glUseProgram(shaderProgram);
		
		// Draw primitives
		glDrawElements(GL_TRIANGLES, test_map.size_x * test_map.size_y * 4 * 3, 
					   GL_UNSIGNED_INT, 0);

		glBindVertexArray(0);

		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		// Take care of all GLFW events
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	// Free allocated memory
	freeMapIndices(indices);
	freeMapVertices(vertices);
	// Delete all the objects we've created
	glDeleteVertexArrays(1, &VAO);
	glDeleteBuffers(1, &VBO);
	glDeleteBuffers(1, &EBO);
	glDeleteProgram(shaderProgram);
	// Delete window before ending the program
	glfwDestroyWindow(window);
	// Terminate GLFW before ending the program
	glfwTerminate();
	return 0;
}
