.global createGLObject
createGLObject:
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	subq	$16, %rsp
	//*o = malloc(sizeof(gl_object))
	movq	$48, %rdi			
	call	malloc
	movq	%rax, -24(%rbp)
	//obj->vertices_size = vertices_size
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)

	//obj->vertices = malloc(vertices_size*sizeof(GLfloat))
	
	movq	$4, %rax
	mulq	-16(%rbp)
	movq	%rax, %rdi
	call	malloc
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)

	//obj->enabled = 1;
	movq	-24(%rbp), %rcx
	movq	$1 , 24(%rcx)		

	//obj->drawing_mode = GL_TRIANGLE_FAN
	movq	-24(%rbp), %rcx
	movq	$GL_TRIANGLE_FAN , 44(%rcx)		
	
	//obj->text = NULL
	movq	-24(%rbp), %rcx
	movq	$0 , 32(%rcx)		

	//obj->next = NULL
	movq	-24(%rbp), %rcx
	movq	$0 , 16(%rcx)		
	

	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, (%rdi)

	addq	$16, %rsp	
	popq	%rsi
	popq	%rdi

	movq	%rbp, %rsp
	popq	%rbp
	ret	

.global createGLObjectEmpty
createGLObjectEmpty:
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	subq	$16, %rsp
	//*o = malloc(sizeof(gl_object))
	movq	$48, %rdi			
	call	malloc
	movq	%rax, -24(%rbp)
	//obj->vertices_size = vertices_size
	movq	$0, 8(%rax)

	//obj->enabled = 1;
	movq	-24(%rbp), %rcx
	movq	$1 , 24(%rcx)		

	//obj->drawing_mode = GL_TRIANGLE_FAN
	movq	-24(%rbp), %rcx
	movq	$GL_TRIANGLE_FAN , 44(%rcx)		
	
	//obj->text = NULL
	movq	-24(%rbp), %rcx
	movq	$0 , 32(%rcx)		

	//obj->next = NULL
	movq	-24(%rbp), %rcx
	movq	$0 , 16(%rcx)		
	

	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, (%rdi)

	addq	$16, %rsp	
	popq	%rsi
	popq	%rdi

	movq	%rbp, %rsp
	popq	%rbp
	ret	

.global addGLObject
addGLObject:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$16, %rsp	

	movq	(%rsi), %rax	// RAX = *dst
	movq	%rax, -8(%rbp)	// -8RBP = RAX
	
	cmpq	$0, %rax
	jne		ELSEGO1
IFGO1:
	movq	%rdi, (%rsi)
	jmp		ENDGO1

ELSEGO1:
	movq	16(%rax), %rcx
	//if((*dst)->next == NULL)
	cmpq	$0, %rcx
	//(*dst)->next = src
	jne		ELSEGO2
	IFGO2:
		movq %rdi, 16(%rax)
		jmp ENDGO2		
	ELSEGO2:
		leaq	16(%rax), %rsi
		call	addGLObject
	ENDGO2:	 

ENDGO1: 

	addq	$16, %rsp

	movq	%rbp, %rsp
	popq	%rbp
	ret


// -8(rbp) = base
// -16(rbp) = target
// -24(rbp) = iter
.global removeGLObject
removeGLObject:
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	pushq	%rsi
	subq	$16, %rsp

	//if base == NULL return			
	cmpq	$0, %rdi
	je		ENDRGO
	//if target == NULL return
	cmpq	$0, %rsi
	je		ENDRGO			

	//gl_object *iter = *base;	
	movq	-8(%rbp), %rax
	movq	(%rax), %rax // rax = *base
	movq	%rax, -24(%rbp)	//-24 = *base
	
	//if(iter == target)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rdx, %rax				
	jne		ELSERGO1
	IFRGO1:	
	
		//if(target->next != NULL)	
		movq	-16(%rbp), %rdx
		cmpq	$0, 16(%rdx)
		je		AFTERIFRGO2
		IFRGO2:
			//free(target->text)
			movq	32(%rdx), %rdi
			call	free
		AFTERIFRGO2:
		//*base = target->next
		movq	-16(%rbp), %rax
		movq	16(%rax), %rax //RAX = target->next
		movq	-8(%rbp), %rdx // RDX = base
		movq	%rax, (%rdx) // *base = target->next
	
		//free(target)
		movq	-16(%rbp), %rdi
		call	free

		jmp ENDRGO
						
	ELSERGO1:
	WHILERGO1:
		//while(iter != NULL)
		movq	-24(%rbp), %rax // RAX = iter
		cmpq	$0, %rax // if 0 != iter
		je		ENDRGO
	
		//if(iter->next == target)
		movq	-16(%rbp), %rdx //target
		movq	-24(%rbp), %rax // RAX = iter
		cmpq	16(%rax), %rdx	
		jne		AFTERIFRGO3
		
		IFRGO3:
			//iter->next = target->next
			movq	-24(%rbp), %rax
			addq	$16, %rax //RAX = &iter->next
			movq	-16(%rbp), %rdx //RDX = target
			movq	16(%rdx), %rdx // RDX = target->next
			movq	%rdx, (%rax) //iter->next = target->next
		
			//if(target->text != NULL)
			movq	-16(%rbp), %rdx
			cmpq	$0, 32(%rdx)
			je		AFTERIFRGO4
			IFRGO4:
				movq	32(%rdx), %rdi
				call	free
			AFTERIFRGO4:
			movq	-16(%rbp), %rdi
			call	free
		
		AFTERIFRGO3:
		
		//iter = iter->next		
		movq	-24(%rbp), %rax
		movq	16(%rax), %rcx
		movq	%rcx, -24(%rbp)
		jmp		WHILERGO1

ENDRGO:
	movq	%rbp, %rsp
	popq	%rbp
	ret

