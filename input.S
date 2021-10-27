.data
KEYCODE_TAB: .long 258
KEYCODE_ENTER: .long 257
KEYCODE_ESCAPE: .long 256
KEYCODE_LEFT_CONTROL: .long 341
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

updateMouseButton:
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
	call	glfwGetMouseButton
	cmpq	$GLFW_PRESS, %rax
	jne		ELSE1UB		
	IF1UMB:
		cmpb	$0,	(%r12)
		jne		ELSE2UB
		IF2UMB:
			movb	$1, (%r13)	
			jmp		END2UB
		ELSE2UMB:
			movb	$0, (%r13)	
		END2UMB:
		incb	(%r12)
		jmp		END1UB
	ELSE1UMB:
		movb	$0, (%r13)
		movb	$0, (%r12)
	
	END1UMB:	

	popq	%r13
	popq	%r12
	popq	%r9
	popq	%r9
	popq	%r9
	popq	%r9

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
		cmpb	$0,	(%r12)
		jne		ELSE2UB
		IF2UB:
			movb	$1, (%r13)	
			jmp		END2UB
		ELSE2UB:
			movb	$0, (%r13)	
		END2UB:
		incb	(%r12)
		jmp		END1UB
	ELSE1UB:
		movb	$0, (%r13)
		movb	$0, (%r12)
	
	END1UB:	

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
	incq	-24(%rbp);					 

	#define PROCESS_BUTTON_INPUT_LARGE(button) \
										 \
	movq	-8(%rbp), %rdi;				 \
	movq	-16(%rbp), %rsi;			 \
	movq	$0, %rdx;					 \
	movl	KEYCODE_##button, %edx;		 \
	movq	-24(%rbp), %rcx;			 \
\
	call	updateButton;				 \
\
	incq	-24(%rbp);					 

	#define PROCESS_MOUSE_BUTTON(button) \
										 \
	movq	-8(%rbp), %rdi;				 \
	movq	-16(%rbp), %rsi;			 \
	movq	$GLFW_##button, %rdx;	 \
	movq	-24(%rbp), %rcx;			 \
\
	call	updateMouseButton;			 \
\
	incq	-24(%rbp);					


	PROCESS_BUTTON_INPUT(W)
	PROCESS_BUTTON_INPUT(A)
	PROCESS_BUTTON_INPUT(S)
	PROCESS_BUTTON_INPUT(D)
	PROCESS_BUTTON_INPUT_LARGE(TAB)
	PROCESS_BUTTON_INPUT_LARGE(ENTER)
	PROCESS_BUTTON_INPUT(SPACE)
	PROCESS_BUTTON_INPUT_LARGE(ESCAPE)
	PROCESS_BUTTON_INPUT(T)
	PROCESS_BUTTON_INPUT(M)
	PROCESS_BUTTON_INPUT(V)
	PROCESS_BUTTON_INPUT(B)
	PROCESS_BUTTON_INPUT(1)
	PROCESS_BUTTON_INPUT(2)
	PROCESS_BUTTON_INPUT(3)
	PROCESS_BUTTON_INPUT(4)
	PROCESS_BUTTON_INPUT(L)
	PROCESS_BUTTON_INPUT_LARGE(LEFT_CONTROL)
	PROCESS_BUTTON_INPUT(H)
	PROCESS_MOUSE_BUTTON(MOUSE_BUTTON_LEFT)
	PROCESS_MOUSE_BUTTON(MOUSE_BUTTON_RIGHT)
	#undef PROCESS_BUTTON_INPUT
	#undef PROCESS_MOUSE_BUTTON
	#undef PROCESS_BUTTON_INPUT_LARGE

	// float old_mouse_x
	// float old_mouse_y
	subq	$16, %rsp	
	//float old_mouse_x = input->mouse_x;
	movq	-16(%rbp), %rax // RAX = &input

	movsd	48(%rax), %xmm0//	XMM0 = mouse_X
cvtsd2ss	%xmm0, %xmm3 // XXM3 = (float)XMM0
	movq	$0, -40(%rbp) 	// old_mouse_x = 0
	movss	%xmm3, -40(%rbp) // old_mouse_x = XMM3

	//float old_mouse_y = input->mouse_y;
	movsd	56(%rax), %xmm0 // XMM0 = mouse_y
cvtsd2ss	%xmm0, %xmm3	// xmm3 = (FLOAT) XMM0
	movq	$0, -48(%rbp)	// old_mouse_y = 0
	movss	%xmm3, -48(%rbp) // ol_mouse_y = XMM3
	
	//glfwGetCursorPos(window, &input->mouse_x, &input->mouse_y)
	movq	-8(%rbp), %rdi // RDI = window
	leaq	48(%rax), %rsi // RSI = (&input) + 48
	leaq	56(%rax), %rdx // RCX = (&input) + 56
	call	glfwGetCursorPos 

	//input->mouse_x - old_mouse_x
	movq	-16(%rbp), %rax // RAX = input
	
	movss	-40(%rbp), %xmm0 // XMM0 = old_mouse_x
	movsd	48(%rax), %xmm1 // XMM1 = *(input+48)
cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1	// XMM1 -= XMM0

	movsd	%xmm1, 64(%rax)	//  

	movss	-48(%rbp), %xmm0 
	movsd	56(%rax), %xmm1
cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1

	movsd	%xmm1, 72(%rax) 

	movq	%rbp, %rsp
	popq	%rbp
	ret

