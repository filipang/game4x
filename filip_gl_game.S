.data
BCLRR: .float 0.07
BCLRG: .float 0.13
BCLRB: .float 0.17
.text

// PARAMS
// %rdi - -8(%rbp) - int i
// %rsi	- -16(%rbp) - GLfloat **iter_v1
// %rdx	- -24(%rbp) - GLfloat **iter_v2
// %rcx - -32(%rbp) - game_state *state
// %r8 - -40(%rbp) - gl_game_state *gl_state
.global updateUnitGL
updateUnitGL:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$256, %rsp

	movq 	%rdi, -8(%rbp)
	movq 	%rsi, -16(%rbp)
	movq 	%rdx, -24(%rbp)
	movq 	%rcx, -32(%rbp)
	movq 	%r8, -40(%rbp)

	//	unit* iter = &state->units[i]; //-48(%rbp)
	movq	-8(%rbp), %rax
	imul	$12, %rax
	movq	-32(%rbp), %rdx
	addq	$10192, %rdx
	addq	%rax, %rdx		
	movq	%rdx, -48(%rbp)

	movq	-48(%rbp), %rax
	movq	$0, %rdi 
	movb	2(%rax), %dil

	movq	-48(%rbp), %rax 
	movq	$0, %rsi
	movb	3(%rax), %sil

	movq	-32(%rbp), %rax
	movss	11760(%rax), %xmm0
	 	
	movq	-32(%rbp), %rax
	movss	11764(%rax), %xmm1

	movq	-32(%rbp), %rax
	movss	11784(%rax), %xmm2

	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx	

	call	hexGridToViewport

	movq	-48(%rbp), %rax
	movq	$0, %rdx
	movb	5(%rax), %dil

	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi	
	
	call	getUnitTeamColor
	imul	$12, %rax
	movq	%rax, -72(%rbp)

	movq	-40(%rbp), %rdx
	addq	88(%rdx), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp) 

	movss	4(%rax), %xmm0
	movss	%xmm0, -80(%rbp) 

	movss   8(%rax), %xmm0
	movss	%xmm0, -84(%rbp)

	movss	FONE, %xmm0
	movss	%xmm0, -88(%rbp) 
		
	movq	-48(%rbp), %rax

	movq	$0, %rdi
	movb	4(%rax), %dil
	call	getUnitTexture
	movq	%rax, %rdi	
	call	loadSubtextureBounds
	movq	%rax, -96(%rbp)

	movq	-24(%rbp), %rax
	movq	(%rax), %rsi

	movq	-48(%rbp), %rax
	movq	$0, %rdi
	movb	11(%rax), %dil

	movq	-32(%rbp), %rax
	movss	11784(%rax), %xmm0
	mulss	F09, %xmm0

	subq	$8, %rsp
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)	

	subq	$8, %rsp
	movss	F00, %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movss	F00, %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movss	F00, %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movss	F00, %xmm0
	movss	%xmm0, (%rsp)
	
	movss	F00, %xmm7
	
	movss	-88(%rbp), %xmm6
	movss	-84(%rbp), %xmm5
	movss	-80(%rbp), %xmm4
	movss	-76(%rbp), %xmm3
	movss	F02, %xmm2
	movss	-64(%rbp), %xmm1
	movss	-56(%rbp), %xmm0

	call	buildHexagonVertices
	addq	$48, %rsp
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
 	
	movss	FONE, %xmm0
	movss	%xmm0, -88(%rbp)


	//*iter_v1 =

	movq	-16(%rbp), %rax
	movq	(%rax), %rsi

	movq	-48(%rbp), %rax
	movq	$0, %rdi
	movb	11(%rax), %dil

	movq	-32(%rbp), %rax
	movss	11784(%rax), %xmm0
	mulss	F08, %xmm0

	subq	$8, %rsp
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)	

	subq	$8, %rsp
	movq	-96(%rbp), %rax	
	movss	12(%rax), %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movq	-96(%rbp), %rax	
	movss	8(%rax), %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movss	FONE, %xmm0
	movss	%xmm0, (%rsp)

	subq	$8, %rsp
	movq	-96(%rbp), %rax	
	movss	4(%rax), %xmm0
	movss	%xmm0, (%rsp)

	movq	-96(%rbp), %rax	
	movss	(%rax), %xmm7
	
	movss	-88(%rbp), %xmm6
	movss	-84(%rbp), %xmm5
	movss	-80(%rbp), %xmm4
	movss	-76(%rbp), %xmm3
	movss	F02, %xmm2
	movss	-64(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)

	movq	-96(%rbp), %rdi
	call	free

	movq	%rbp, %rsp
	popq	%rbp
	ret

		
.global updateUnitListGL
updateUnitListGL:
	pushq	%rbp
	movq 	%rsp, %rbp
	
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	movq	-8(%rbp), %rax
	movq	$0, %rdx
	movl	11808(%rax), %edx
	imull	$60, %edx
	movq	%rdx, -40(%rbp)

	movq	$24000, %rdi
	movq	$6, %rsi
	movq	-16(%rbp), %rax	
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rcx
	call	updateObjectGL
	
			
	movq	$24000, %rdi
	movq	$6, %rsi
	movq	-16(%rbp), %rax	
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rcx
	call	updateObjectGL

	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	$GL_LINE_LOOP, 44(%rax)

	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	-40(%rbp), %edx	
	movl	%edx, 8(%rax)

	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movl	-40(%rbp), %edx	
	movl	%edx, 8(%rax)

	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
			
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)

	movq	$0, -24(%rbp)
	
FORULLG:
	movq	-8(%rbp), %rax
	movq	11808(%rax), %rax
	cmpl	%eax, -24(%rbp)
	jge		ENDFORULLG
	
	movq	-24(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	call	updateUnitGL

	incq	-24(%rbp)
	jmp		FORULLG	
	
ENDFORULLG:

	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	$0, %rdx
	movl	-40(%rbp), %edx
	movl	%edx, 8(%rax)

	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	$0, %rdx
	movl	-40(%rbp), %edx
	movl	%edx, 8(%rax)
	
	movq	%rbp, %rsp
	popq	%rbp
	ret


.global getUnitTexture
getUnitTexture:
	pushq	%rbp
	movq 	%rsp, %rbp
	
	cmpq	$UNIT_WORKSHOP, %rdi
	je		CUNIT_WORKSHOP
	cmpq	$UNIT_GOLEM, %rdi
	je		CUNIT_GOLEM
	cmpq	$UNIT_WISP, %rdi
	je		CUNIT_WISP
	cmpq	$UNIT_UNBOUND_ELEMENTAL, %rdi
	je		CUNIT_UNBOUND_ELEMENTAL
	cmpq	$UNIT_FIRE_ELEMENTAL, %rdi
	je		CUNIT_FIRE_ELEMENTAL
	cmpq	$UNIT_WATER_ELEMENTAL, %rdi
	je		CUNIT_WATER_ELEMENTAL
	cmpq	$UNIT_ICE_ELEMENTAL, %rdi
	je		CUNIT_ICE_ELEMENTAL
	cmpq	$UNIT_ARCANE_ELEMENTAL, %rdi
	je		CUNIT_ARCANE_ELEMENTAL


CUNIT_WORKSHOP:
	movq	$TEXTURE_WORKSHOP, %rax
	jmp		ENDGUT
CUNIT_GOLEM:
	movq	$TEXTURE_GOLEM, %rax
	jmp		ENDGUT
CUNIT_WISP:
	movq	$TEXTURE_WISP, %rax
	jmp		ENDGUT
CUNIT_UNBOUND_ELEMENTAL:
	movq	$TEXTURE_UNBOUND_ELEMENTAL, %rax
	jmp		ENDGUT
CUNIT_FIRE_ELEMENTAL:
	movq	$TEXTURE_FIRE_ELEMENTAL, %rax
	jmp		ENDGUT
CUNIT_WATER_ELEMENTAL:
	movq	$TEXTURE_WATER_ELEMENTAL, %rax
	jmp		ENDGUT
CUNIT_ICE_ELEMENTAL:
	movq	$TEXTURE_ICE_ELEMENTAL, %rax
	jmp		ENDGUT
CUNIT_ARCANE_ELEMENTAL:
	movq	$TEXTURE_ARCANE_ELEMENTAL, %rax
	


ENDGUT:
	movq	%rbp, %rsp
	popq	%rbp
	ret
	
.global	getCursorColor
getCursorColor:
	pushq	%rbp
	movq	%rsp, %rbp

	movq	$WHITE, %rax

	movq	%rbp, %rsp
	popq	%rbp
	ret

.global	updateStoreSizeGL
updateStoreSizeGL:
	
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	movq	%rdi, %r8
	movq	$0, %rdi
	movl	%r8d, %edi

	movq	$0, %rax
	movl	100(%rsi), %eax
	cmpl	%eax, %edi				
	jl		ENDSSG
	
	leaq	100(%rsi), %rax
	movq	%rax, -24(%rbp)

	movq	$0, %rdi
	movl	-8(%rbp), %edi	
	call	nextPowerOf2
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	
	movq	$GL_ARRAY_BUFFER, %rdi
	shlq	$2, %rax
	movq	%rax, %rsi
	movq	$0, %rdx
	movq	$GL_DYNAMIC_DRAW, %rcx
	call	glBufferData

ENDSSG:
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global updateGLVertices
updateGLVertices:
	
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	call	updateMapGL
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateUnitListGL
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateFogOfWar
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateHighlight
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateForeground
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateHelp

	movq	%rbp, %rsp
	popq	%rbp
	ret

.global updateGL

updateGL:
	
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	call	updateGLVertices

	movq	BCLRR, %xmm0
	movq	BCLRG, %xmm1
	movq	BCLRB, %xmm2
	movq	FONE, %xmm3
	call	glClearColor
	
	movq	$GL_COLOR_BUFFER_BIT, %rdi
	call	glClear
	
	movq	$GL_TEXTURE0, %rdi
	call	glActiveTexture

	movq	$GL_TEXTURE_2D, %rdi
	movq	-16(%rbp), %rsi
	movq	140(%rsi), %rsi
	call	glBindTexture

	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	call	glBindVertexArray

	movq	$GL_ARRAY_BUFFER, %rdi
	movq	-16(%rbp), %rax
	movq	132(%rax), %rsi
	call	glBindBuffer
	 
	movq	-16(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	$ISTEXT, %rsi
	call	glGetUniformLocation	

	movq	%rax, %rdi
	movq	$0, %rsi
	call	glUniform1i

	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
		
WHILEUGL:
	cmpq	$0,	-40(%rbp) 
	je		ENDWHILEUGL	

	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rsi
	call	updateStoreSizeGL
	
	movq	$GL_ARRAY_BUFFER, %rdi
	movq	$0, %rsi
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	shl		$2, %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	call	glBufferSubData

	movq	$0, -48(%rbp)
FORUGL:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, %rdx
	movq	$10, %rcx
	divq	%rcx
	cmpl	%eax, -48(%rbp)
	jge		ENDFORUGL
	
	movq	-40(%rbp), %rax
	movq	44(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	call	glDrawArrays
		
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	addq	%rax, -48(%rbp)
	jmp		FORUGL
ENDFORUGL:
	

	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax,-40(%rbp)
	jmp		WHILEUGL
ENDWHILEUGL:

	movq	$GL_ARRAY_BUFFER, %rdi
	movq	$0, %rsi
	call	glBindBuffer

	movq	$0, %rdi
	call	glBindVertexArray

	movq	$GL_TEXTURE_2D, %rdi
	movq	$0, %rsi
	call	glBindTexture

	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	updateTexts

	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	drawTexts
	

	movq	%rbp, %rsp
	popq	%rbp
	ret


//.global freeGL
freeGL:
	pushq	%rbp
	movq	%rbp, %rsp
	movq	%rsp, %rbp
	popq	%rbp
	ret
