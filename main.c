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

#include <stdio.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>

// NOTE(filip): Don't define DEBUG when releasing
#define DEBUG

// NOTE(filip): Consider moving these defines in include files that use them
#define PI 3.14159265359
#define MAXBUF 1000
#define MAX_PLAYERS 8
#define MODE_NORMAL 0
#define MODE_MOVE 1
#define MODE_ATTACK 2

#include "utils.c"
#include "input.c"
#include "unit.c"
#include "outpost.c"
#include "gl_object.c"
#include "game.c"
#include "gl_game.c"

int main()
{
	// SETUP -------------------------------------------------------------------
	GLFWwindow* window;
	GLuint VAO, VBO, EBO, shader_program;
	initializeGL(&window, &VAO, &VBO, &EBO, &shader_program);

	input_pressed input = {0};
	game_state state;

	// Initialize values for game state
	initializeGameState(&state);
	generateTestMap(&state);

	// TODO(filip): Move this somewhere else
	// List of colors  
	GLfloat colors[] = {0.65f, 0.65f, 0.55f, //T0.
						0.55f, 0.15f, 0.5f,  //U0.
						0.0f, 0.0f, 0.0f,    //I0. 
						0.55f, 0.4f, 0.05f,	 //T1. 
						0.8f, 0.4f, 0.2f,	 //U1.
						0.9f, 0.9f, 0.9f,	 //I1. 
						0.9f, 0.9f, 0.0f,    //T2.
						0.3f, 0.1f, 0.0f,	 //U2.
						0.55f, 0.55f, 1.0f,	 //I2.
						0.7f, 0.4f, 0.0f,	 //T3.
						0.0f, 0.0f, 0.0f,	 //U3.
						0.9f, 0.9f, 0.3f,	 //I3.
						0.15f, 0.9f, 0.6f,	 //T4.
						0.0f, 0.0f, 0.0f,	 //U4.
						0.8f, 0.2f, 0.2f,	 //I4.
						0.0f, 0.0f, 0.0f,	 //T5,
						0.0f, 0.0f, 0.0f, 	 //U5,
						0.5f, 0.5f, 0.5f, 	 //I5,
						0.0f, 0.0f, 0.0f, 	 //T6,
						0.0f, 0.0f, 0.0f, 	 //U6,
						0.1f, 0.66f, 0.1f 	 //I6,
						};

	state.colors = colors;
	
	// This starts the turn of player 0
	turn(&state);
	// Main while loop
	while (!glfwWindowShouldClose(window))
	{
		//Update and process input
		updateInput(window, &input);
		processInput(&input, &state);

		// Update map gl
		updateMapGL(&state);		
		// Update units gl
		updateUnitListGL(&state);
		// Update UI gl
		updateUIGL(&state);
		// Write all updates to the VBO and draw elements to the back buffer
		updateGL(&state, VAO, VBO, EBO, shader_program);
		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		// Take care of all GLFW events
		glfwPollEvents();
	}


	// EXIT SETUP --------------------------------------------------------------
	freeMap(state.size_x, state.size_y, state.terrain_map);
	freeMap(state.size_x, state.size_y, state.unit_map);
	// Free allocated memory
	finalizeGL(window, VAO, VBO, EBO, shader_program);
	return 0;
}
