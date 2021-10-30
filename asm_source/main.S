#include "utils.S"
#include "input.S"
#include "unit.S"
#include "colors.S"
#include "gl_object.S"
#include "text.S"
#include "game.S"
#include "texture.S"
#include "gl_game.S"

.data
input:		.skip 88
state:		.skip 11872
gl_state:	.skip 3768
.text
D00:		.double 0.0
.global main
main:
	// PROLOGUE
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$64, %rsp

	// INITIALIZE GAME STATE
	movq	$state, %rdi
	call	initializeGameState

	// INITIALIZE GAME GRAPHICS
	leaq	-8(%rbp), %rdi
	movq	$state, %rsi
	movq	$gl_state, %rdx
	call	initializeGraphics

	// set reference to input layer in window for scroll callback
	movq	-8(%rbp), %rdi
	movq	$input, %rsi
	call	glfwSetWindowUserPointer

	// scroll callback
	movq	-8(%rbp), %rdi
	movq	$scrollCallback, %rsi
	call	glfwSetScrollCallback

	// INITIALIZE GAME WITH THE HARDCODED TEST MAP
	movq	$state, %rdi
	call	generateTestMap
	
	movq	$state, %rdi
	call	turn
	
	// INITIALIZE FRAME TIMER
	call	glfwGetTime
	movsd	%xmm0, -16(%rbp) //lastTime
	movsd	%xmm0, -24(%rbp) //timer = lastTime
	movsd	D00, %xmm0
	movsd	%xmm0, -32(%rbp) //deltaTime = 0
	movsd	D00, %xmm0
	movsd	%xmm0, -40(%rbp) //nowTime = 0

// MAIN GAME LOOP
MAIN_LOOP:
	movq	-8(%rbp), %rdi
	call	glfwWindowShouldClose
	cmpl	$0, %eax
	jne		END_MAIN_LOOP
	movq	$state, %rax
	cmpl	$0, 11868(%rax)
	jne		END_MAIN_LOOP

	// Measure frame time
	call	glfwGetTime
	movsd	%xmm0, -40(%rbp) //nowTime = glfwGetTime
	movsd	%xmm0, %xmm1 //stash last time
	subsd	-16(%rbp), %xmm0 // XMM0 = nowTime - lastTime
	movsd	%xmm1, -16(%rbp) //lastTime = nowTime
	movsd	%xmm0, -32(%rbp) // deltaTime = XMM0
	
	movq	$state, %rax
	movsd	%xmm0, 11856(%rax) //state->delta_time = deltaTime

	// INPUT LAYER ---------------------------------------------------------
	movq	-8(%rbp), %rdi
	movq	$input, %rsi
	call	updateInput

	// GAME LAYER ----------------------------------------------------------
	movq	$input, %rdi
	movq	$state, %rsi
	call	processInput

	// GRAPHICS LAYER ------------------------------------------------------
	movq	$state, %rdi
	movq	$gl_state, %rsi
	call	updateGL

	movq	-8(%rbp), %rdi
	call	glfwSwapBuffers

	call	glfwPollEvents			
	
	jmp		MAIN_LOOP								
END_MAIN_LOOP:

	// Game closing subroutines
	movq	$gl_state, %rdi
	call	freeGL
	movq	-8(%rbp), %rdi
	movq	$gl_state, %rsi
	call	finalizeGraphics
	// EPILOGUE
	movq	%rbp, %rsp
	popq	%rbp
	movq	$0, %rdi
	call	exit
	

