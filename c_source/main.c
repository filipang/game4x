/*******************************************************************************
* 
* FILENAME : main.c
*
* DESCRIPTION :
*       Main file for game4x. This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    19/09/2021
*
*******************************************************************************/

#define GLEW_STATIC 
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#include <freetype2/ft2build.h>
#include FT_FREETYPE_H

// UTILS HEADERS ---------------------------------------------------------------
char* loadFile(const char* file_name);
void writeFile(const char* file_name, unsigned char *data, int data_size);
int nextPowerOf2(int n);
void hexGridToViewport(int grid_x, int grid_y, 
					   float offset_x, float offset_y,
					   float hex_size,
					   float *viewport_x, float *viewport_y);

void viewportToHexGrid(float viewport_x, float viewport_y, 
					   float offset_x, float offset_y,
					   float hex_size,
					   int *grid_x, int *grid_y);
void mouseCoordsToViewport(double mouse_x, double mouse_y,
						   float *viewport_x, float *viewport_y);
int calculateRotation(int position_x, int position_y, int cursor_x, int cursor_y);
int hexDistance(int x1, int y1, int x2, int y2);

// END UTILS HEADERS -----------------------------------------------------------

// INPUT  HEADERS --------------------------------------------------------------
#include "input.c"
void scrollCallback(GLFWwindow* window, double xoffset, double yoffset);
void updateInput(struct GLFWwindow *window, input_pressed *input);

// END INPUT  HEADERS ----------------------------------------------------------

#include "game.c"
#include "gl_game.c"

int main();
/*{
	// SETUP -------------------------------------------------------------------
	input_pressed input 	= {0};
	game_state state		= {0};
	gl_game_state gl_state	= {0};

	GLFWwindow* window;

	// NOTE(check if save exists in memory and load it)
	initializeGameState(&state);
	initializeGraphics(&window, &state, &gl_state);
	glfwSetWindowUserPointer(window, (void *)&input);	
	glfwSetScrollCallback(window, scrollCallback);
	
	// Load test map and start the turn of player 0
	generateTestMap(&state);
	turn(&state);
	// Main while loop
	double lastTime = glfwGetTime(), timer = lastTime;	
	double deltaTime = 0, nowTime = 0;
	// MAIN LOOP  --------------------------------------------------------------
	while (!glfwWindowShouldClose(window) && !state.end)
	{
	    // Measure frame 
        nowTime = glfwGetTime();
        deltaTime = nowTime - lastTime;
        lastTime = nowTime;
		// Store delta time in game state
		state.delta_time = deltaTime;

		// INPUT LAYER ---------------------------------------------------------
		// Update and process input
		updateInput(window, &input);


		// GAME LAYER ----------------------------------------------------------
		// Update the game state by checking the input
		processInput(&input, &state);

		// GRAPHICS LAYER ------------------------------------------------------
		// Update grapchics
		updateGL(&state, &gl_state);
		// ---------------------------------------------------------------------

		glfwSwapBuffers(window);
		// NOTE(filip): This can be swapped with glfwWaitEvents to save 
		// 				processing power
		glfwPollEvents();
	}

	// EXIT SETUP --------------------------------------------------------------
	// Free allocated memory
	freeGL(&gl_state);
	finalizeGraphics(window, &gl_state);
	return 0;
}*/
