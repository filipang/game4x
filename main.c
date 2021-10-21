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
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

// NOTE(filip): Consider moving these defines in include files that use them

#include "utils.c"
#include "input.c"
#include "game.c"
#include "gl_game.c"

int main()
{
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
}
