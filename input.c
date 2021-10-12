/*******************************************************************************
* 
* FILENAME : input.c
*
* DESCRIPTION :
*       This is a short game development project which
*       will eventually be re-written in Assembly to be handed in as college
*       homework. 
*
* AUTHORS : filipang, ciobanuradu           
* 
* START DATE :    2/10/2021
*
*******************************************************************************/

typedef struct input_pressed
{
	unsigned char key_pressed_W;
	unsigned char key_pressed_A;
	unsigned char key_pressed_S;
	unsigned char key_pressed_D;
	unsigned char key_pressed_TAB;
	unsigned char key_pressed_ENTER;
	unsigned char key_pressed_SPACE;
	unsigned char key_pressed_ESCAPE;
	unsigned char key_pressed_T;
	unsigned char key_pressed_M;
	unsigned char key_pressed_V;
	unsigned char key_pressed_B;
	unsigned char key_pressed_1;
	unsigned char key_pressed_2;
	unsigned char key_pressed_3;
	unsigned char key_pressed_4;

	unsigned char button_W;
	unsigned char button_A;
	unsigned char button_S;
	unsigned char button_D;
	unsigned char button_TAB;
	unsigned char button_ENTER;
	unsigned char button_SPACE;
	unsigned char button_ESCAPE;
	unsigned char button_T;
	unsigned char button_M;
	unsigned char button_V;
	unsigned char button_B;
	unsigned char button_1;
	unsigned char button_2;
	unsigned char button_3;
	unsigned char button_4;

} input_pressed;

// NOTE(filip): This needs to be called every frame to work
void updateInput(struct GLFWwindow *window, input_pressed *input)
{
	#define PROCESS_BUTTON_INPUT(button) 							\
	if(glfwGetKey(window, GLFW_KEY_##button) == GLFW_PRESS)			\
	{																\
		if(input->key_pressed_##button == 0)  						\
			input->button_##button = 1;								\
		else														\
			input->button_##button = 0;								\
		input->key_pressed_##button = 1;							\
	}else 															\
	{input->button_##button = 0;input->key_pressed_##button = 0;}

	PROCESS_BUTTON_INPUT(W);
	PROCESS_BUTTON_INPUT(A);
	PROCESS_BUTTON_INPUT(S);
	PROCESS_BUTTON_INPUT(D);
	PROCESS_BUTTON_INPUT(TAB);
	PROCESS_BUTTON_INPUT(SPACE);
	PROCESS_BUTTON_INPUT(ESCAPE);
	PROCESS_BUTTON_INPUT(ENTER);
	PROCESS_BUTTON_INPUT(T);
	PROCESS_BUTTON_INPUT(M);
	PROCESS_BUTTON_INPUT(V);
	PROCESS_BUTTON_INPUT(B);
	PROCESS_BUTTON_INPUT(1);
	PROCESS_BUTTON_INPUT(2);
	PROCESS_BUTTON_INPUT(3);
	PROCESS_BUTTON_INPUT(4);
}
