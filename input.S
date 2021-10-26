.data
KEYCODE_TAB: .long 258
KEYCODE_ENTER: .long 257
KEYCODE_ESCAPE: .long 256
MESSAGE: .asciz "key: %d button: %d key_enum: %d\n"
.text

# params
# %rdi - window 
# %xmm0 - xoffset
# %xmm1 - yoffset


.global scrollCallback
scrollCallback:
	pushq	%rbp
	movq	%rsp, %rbp

	movsd	%xmm1, %xmm15
	call	glfwGetWindowUserPointer
	
	movsd	%xmm15, 80(%rax)

	movq	%rbp, %rsp
	popq	%rbp
	ret

updateButton:
	pushq %rbp
	movq %rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx	
	pushq 	%r12
	pushq	%r13

	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

	movq	-32(%rbp), %rdx
	movq	%rdx, %r12 //key_pressed_
	addq	$21, %rdx
	movq	%rdx, %r13 //button_
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	glfwGetKey
	cmpq	$GLFW_PRESS, %rax
	jne		ELSE1UB		
	IF1UB:
		cmpq	$0,	(%r12)
		jne		ELSE2UB
		IF2UB:
			movq	$1, (%r13)	
			jmp		END2UB
		ELSE2UB:
			movq	$0, (%r13)	
		END2UB:
		incq	(%r12)
		jmp		END1UB
	ELSE1UB:
		movq	$0, (%r13)
		movq	$0, (%r12)
	
	END1UB:	
	movq	$0, %rax
	movq	$MESSAGE, %rdi
	movq	(%r12), %rsi
	movq	(%r13), %rdx
	movq	-24(%rbp), %rcx
	call	printf

	popq	%r13
	popq	%r12
	popq	%r9
	popq	%r9
	popq	%r9
	popq	%r9

	movq	%rbp, %rsp
	popq	%rbp
	ret	

.global updateInput
updateInput:
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	subq	$16, %rsp
	movq	%rsi, -24(%rbp);

	#define PROCESS_BUTTON_INPUT(button) \
										 \
	movq	-8(%rbp), %rdi;				 \
	movq	-16(%rbp), %rsi;			 \
	movq	$GLFW_KEY_##button, %rdx;	 \
	movq	-24(%rbp), %rcx;			 \
\
	call	updateButton;				 \
\
	incq	-24(%rbp);					 \

	#define PROCESS_BUTTON_INPUT_LARGE(button) \
										 \
	movq	-8(%rbp), %rdi;				 \
	movq	-16(%rbp), %rsi;			 \
	movq	$0, %rdx;					 \
	movl	KEYCODE_##button, %edx;	 \
	movq	-24(%rbp), %rcx;			 \
\
	call	updateButton;				 \
\
	incq	-24(%rbp);					 \

	PROCESS_BUTTON_INPUT(W);
	PROCESS_BUTTON_INPUT(A);
	PROCESS_BUTTON_INPUT(S);
	PROCESS_BUTTON_INPUT(D);
/*	PROCESS_BUTTON_INPUT_LARGE(TAB);
	PROCESS_BUTTON_INPUT_LARGE(ENTER);
	PROCESS_BUTTON_INPUT(SPACE);/*
	PROCESS_BUTTON_INPUT_LARGE(ESCAPE);
	PROCESS_BUTTON_INPUT(T);
	PROCESS_BUTTON_INPUT(M);
	PROCESS_BUTTON_INPUT(V);
	PROCESS_BUTTON_INPUT(B);
	PROCESS_BUTTON_INPUT(1);
	PROCESS_BUTTON_INPUT(2);
	PROCESS_BUTTON_INPUT(3);
	PROCESS_BUTTON_INPUT(4);
	PROCESS_BUTTON_INPUT(L);
	PROCESS_BUTTON_INPUT(LEFT_CONTROL);
	PROCESS_BUTTON_INPUT(H);*/
	#undef PROCESS_BUTTON_INPUT
	#undef PROCESS_BUTTON_INPUT_LARGE
	addq	$32, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	ret

