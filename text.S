.global updateText
updateText:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$48, %rsp
	movq	%rdi, -8(%rbp) // char message[]
	movss	%xmm0, -16(%rbp) // float x
	movss	%xmm1, -24(%rbp) // float y
	movq	%rsi, -32(%rbp) // gl_game_state *gl_state

	//int string_length = strlen(message);
	movq	-8(%rbp), %rdi		
	call	strlen
	movq	$0, -48(%rbp)
	movl	%eax, -48(%rbp) // string_length

	//createGLObject(&object, string_length * 4 * VERTEX_CHANNELS);
	leaq	-40(%rbp), %rdi // object
	movq	$40, %rax
	mulq	-48(%rbp)
	movq	%rax, %rsi
	call	createGLObject

	//object->vertex_step = 4;
	movq	-40(%rbp), %rax
	movq	$4,	40(%rax)

	//object->text = malloc(string_length + 1);
	movq	-48(%rbp), %rax // malloc
	incq	%rax
	movq	%rax, %rdi 
	call	malloc
	//object->text = RAX
	movq	-40(%rbp), %rdx //RDX = OBJECT 
	leaq	32(%rdx), %rdx
	movq	%rax, (%rdx)
	
	//strcpy(object->text, message);
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rsi
	call	strcpy

	//addGLObject(object, &gl_state->text_objects)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rsi	
	call	addGLObject

	//object->vertices[0] = x;
	movq	-40(%rbp), %rax //RAX = object
	movss	-16(%rbp), %xmm0
	movq	(%rax), %rax
	movss	%xmm0, (%rax)	

	//object->vertices[1] = y
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movss	-24(%rbp), %xmm0
	movss	%xmm0, 4(%rax)

	//object->vertices[2] = 1.0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movss	F10, %xmm0
	movss	%xmm0, 8(%rax)

	movq	%rbp, %rsp
	popq	%rbp
	ret

.global updateTextAlpha
updateTextAlpha:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$48, %rsp
	movq	%rdi, -8(%rbp) // char message[]
	movss	%xmm0, -16(%rbp) // float x
	movss	%xmm2, -20(%rbp) // alpha
	movss	%xmm1, -24(%rbp) // float y
	movq	%rsi, -32(%rbp) // gl_game_state *gl_state
	
	//int string_length = strlen(message);
	movq	-8(%rbp), %rdi		
	call	strlen
	movq	$0, -48(%rbp)
	movl	%eax, -48(%rbp) // string_length

	//createGLObject(&object, string_length * 4 * VERTEX_CHANNELS);
	leaq	-40(%rbp), %rdi // object
	movq	$40, %rax
	mulq	-48(%rbp)
	movq	%rax, %rsi
	call	createGLObject

	//object->vertex_step = 4;
	movq	-40(%rbp), %rax
	movq	$4,	40(%rax)

	//object->text = malloc(string_length + 1);
	movq	-48(%rbp), %rax // malloc
	incq	%rax
	movq	%rax, %rdi 
	call	malloc
	//object->text = RAX
	movq	-40(%rbp), %rdx //RDX = OBJECT 
	leaq	32(%rdx), %rdx
	movq	%rax, (%rdx)
	
	//strcpy(object->text, message);
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rsi
	call	strcpy

	//addGLObject(object, &gl_state->text_objects)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rsi	
	call	addGLObject

	//object->vertices[0] = x;
	movq	-40(%rbp), %rax //RAX = object
	movss	-16(%rbp), %xmm0
	movq	(%rax), %rax
	movss	%xmm0, (%rax)	

	//object->vertices[1] = y
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movss	-24(%rbp), %xmm0
	movss	%xmm0, 4(%rax)

	//object->vertices[2] = 1.0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, 8(%rax)

	movq	%rbp, %rsp
	popq	%rbp
	ret
