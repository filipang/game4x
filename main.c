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
#define PI 3.14159265359
#define MAXBUF 1000
#define MAX_PLAYERS 8
#define MODE_NORMAL 0
#define MODE_MOVE 1
#define MODE_ATTACK 2
#define VERTEX_CHANNELS (3+4+3)

#include "texture.c"
#include "colors.c"
#include "utils.c"
#include "input.c"
#include "unit.c"
#include "outpost.c"
#include "gl_object.c"
#include "game.c"
#include "gl_game.c"
#include "text.c"

// FIXME(filip): !!!!!! SOLVE MEMORY LEAKS FROM MALLOC !!!!!!!! 
int main()
{
	FT_Library library;
	FT_Face face;
	initFreetype(&library, &face);
	//FT_Bitmap *testBitmap = testFreetype();
	// SETUP -------------------------------------------------------------------
	GLFWwindow* window;
	GLuint VAO, VBO, shader_program, texture;
	initializeGL(&window, &VAO, &VBO, &shader_program, &texture);

	input_pressed input = {0};
	game_state state;

	// Initialize values for game state
	initializeGameState(&state);
	generateTestMap(&state);

	// TODO(filip): Move this somewhere else
	// List of colors  
	
	// This starts the turn of player 0
	turn(&state);
	// Main while loop
	double lastTime = glfwGetTime(), timer = lastTime;	
	double deltaTime = 0, nowTime = 0;
    int frames = 0 , updates = 0;
	while (!glfwWindowShouldClose(window))
	{
	    // Measure frame 
        nowTime = glfwGetTime();
        deltaTime = nowTime - lastTime;
        lastTime = nowTime;
		
		// Store delta time in game state
		state.delta_time = deltaTime;

		// Update and process input
		updateInput(window, &input);
		processInput(&input, &state);

		// Update map gl
		updateMapGL(&state);		
		// Update units gl
		updateUnitListGL(&state);
		// Update UI gl
		updateUIGL(&state);

		//renderText("Lorem", 0, 0, 0.05, 0.05, &library, &face, &state.test_text, &state);
		// Write all updates to the VBO and draw elements to the back buffer
		updateGL(&state, VAO, VBO, shader_program, texture);

		updateTexts(&state);
		drawTexts(VAO, VBO, shader_program, &face, &state);


		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		
		// NOTE(filip): This can be swapped with glfwWaitEvents to save 
		// 				processing power
		// Take care of all GLFW events
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	freeMap(state.size_x, state.size_y, state.terrain_map);
	// Free allocated memory
	finalizeGL(window, VAO, VBO, shader_program);
	return 0;
}
