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

#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>
#include <stdio.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <ft2build.h>
#include FT_FREETYPE_H

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

// NOTE(filip): Consider moving these defines in include files that use them

#include "utils.c"
#include "input.c"
#include "game.c"
#include "gl_game.c"

// FIXME(filip): !!!!!! SOLVE MEMORY LEAKS FROM MALLOC !!!!!!!! 
int main()
{
	// SETUP -------------------------------------------------------------------
	input_pressed input 	= {0};
	game_state state		= {0};
	gl_game_state gl_state	= {0};

	GLFWwindow* window;

	initializeGameState(&state);
	initializeGraphics(&window, &state, &gl_state);

	
	// Load test map and start the turn of player 0
	generateTestMap(&state);
	turn(&state);
	// Main while loop
	double lastTime = glfwGetTime(), timer = lastTime;	
	double deltaTime = 0, nowTime = 0;
    int frames = 0 , updates = 0;
	// MAIN LOOP  --------------------------------------------------------------
	while (!glfwWindowShouldClose(window))
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
		processInput(&input, &state);

		// GRAPHICS LAYER ------------------------------------------------------
		// Update map gl
		updateMapGL(&state, &gl_state);		
		// Update units gl
		updateUnitListGL(&state, &gl_state);
		// Update UI gl
		updateUIGL(&state, &gl_state);
		// Write all updates to the VBO and draw elements to the back buffer
		updateGL(&state, &gl_state);
		gl_state.vertices_size = 0; // Resets vertices_size to 0

		updateTexts(&state, &gl_state);
		drawTexts(&state, &gl_state);
		// ---------------------------------------------------------------------

		glfwSwapBuffers(window);
		// NOTE(filip): This can be swapped with glfwWaitEvents to save 
		// 				processing power
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	freeMap(state.size_x, state.size_y, state.terrain_map);
	// Free allocated memory
	finalizeGraphics(window, &gl_state);
	return 0;
}
