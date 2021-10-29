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

	//object->vertices[2] = alpha 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, 8(%rax)

	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
MSG_UTYPE: .asciz "Unit type: %s"
MSG_HPLEFT: .asciz "HP: %d/%d"
MSG_MOVE: .asciz "Move Points: %d/%d"
MSG_DMG: .asciz "Damage: %d"
MSG_UINFO: .asciz "Options: TAB-CycleUnits, V-Move, T-Attack"
MSG_BINFO: .asciz "Options: TAB-CycleUnits, B-Build, ESC-ExitBuild"
MSG_BOPT: .asciz "1-Wisp(50 E), 2-Golem(100 E), 3-Unbound Elemental(100 E), 4-Arcane Pulse(600 E)" 
FN96: .float -0.96
FN75: .float -0.75
FN80: .float -0.80
FN85: .float -0.85
FN90: .float -0.90
FN95: .float -0.95
.text
.global renderUnitText
renderUnitText:
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$272, %rsp
	movq	%rdi, -8(%rbp) //displayed unit
	movq	%rsi, -16(%rbp) //state
	movq	%rdx, -24(%rbp) //gl_state 		
	movq	-16(%rbp), %rax //RAX = state
	leaq	10192(%rax), %rdx //units
	movq	%rdx, -32(%rbp) // -32 = &state->units[0]	

	//DISPLAY NAME
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax	
	movq	$0, %rdx
	movb	8(%rax), %dl
	movq	$0, -40(%rbp)
	movb	%dl, -40(%rbp)
	movb	4(%rax), %dl
	movq	-16(%rbp), %rax //RAX = state
	leaq	11592(%rax), %rax //RAX = state->unit_names
	
	imul	$20, %rdx
	addq	%rdx, %rax
	leaq	(%rax), %rcx 
	movq	$0, %rax	
	movq	$MSG_UTYPE, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN75, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	// DISPLAY HEALTH
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	
	movq	$0, %rdx
	movb	0(%rax), %dl
	movq	%rdx, %rcx	

	movq	$0, %rdx
	movb	1(%rax), %dl
	movq	%rdx, %r8	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_HPLEFT, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN80, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	cmpb	$0, -40(%rbp)
	je		IFW	
	// MOVEMENT DISPLAY
IFNOTW:
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	
	movq	$0, %rdx
	movb	8(%rax), %dl
	movq	%rdx, %rcx	

	movq	$0, %rdx
	movb	9(%rax), %dl
	movq	%rdx, %r8	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_MOVE, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN85, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//DAMAGE
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	movq	$0, %rdx
	movb	7(%rax), %dl
	movq	%rdx, %rcx	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_DMG, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN90, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//OPTIONS
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_UINFO, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN95, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
	jmp		ENDWW
IFW:
	//BUILD INFO	
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_BINFO, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN85, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
	//BUILD OPTIONS
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_BOPT, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN90, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
	
ENDWW:
	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
MSG_H1: .asciz "Help menu"
MSG_H2: .asciz "General:"
MSG_H3: .asciz "H - Help menu, ESC(hold) - Exit game, CTRL+S - Save, CTRL+L - Load"
MSG_H4: .asciz "Normal mode (no unit selected):"
MSG_H5: .asciz "WASD/LeftClick - Move camera, TAB - Select next unit, ENTER - End your turn"
MSG_H6: .asciz "Normal mode (unit selected):"
MSG_H7: .asciz "T - Attack mode, V - Move mode"
MSG_H8: .asciz "Move mode:"
MSG_H9: .asciz "WASD/Mouse - move cursor, Click/Space - confirm movement"
MSG_H10: .asciz "Attack mode:"
MSG_H11: .asciz "WASD/Mouse - move attack cursor, Click/Space - confirm attack"
MSG_H12: .asciz "Build mode (workshop selected):"
MSG_H13: .asciz "1 - Wisp, 2 - Golem, 3 - Unbound Elemental, 4 - Arcane Pulse"
FN07: .float -0.7
FF1: .float 0.7
FF2: .float 0.5
FF3: .float 0.45
FF4: .float 0.35
FF5: .float 0.30
FF6: .float 0.20
FF7: .float 0.15
FF8: .float 0.05
FF9: .float 0.00
FF10: .float -0.1
FF11: .float -0.15
FF12: .float -0.25
FF13: .float -0.30

.text
.global renderHelpText
renderHelpText:
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$272, %rsp
	movq	$0, -8(%rbp)
	movq	%rdi, -16(%rbp) //state
	movq	%rsi, -24(%rbp) //gl_state 		
	movq	-16(%rbp), %rax //RAX = state
	leaq	10192(%rax), %rdx //units
	movq	%rdx, -32(%rbp) // -32 = &state->units[0]	


	//H1
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H1, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF1, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H2
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H2, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF2, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H3
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H3, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF3, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H4
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H4, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF4, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H5
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H5, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF5, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H6
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H6, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF6, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H7
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H7, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF7, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H8
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H8, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF8, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H9
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H9, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF9, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H10
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H10, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF10, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H11
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H11, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF11, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H12
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H12, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF12, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//H13
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_H13, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN07, %xmm0
	movss	FF13, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
MSG_FPS: .asciz "%d FPS"
MSG_PLAYER: .asciz "Player: %d"
MSG_TURN: .asciz "Turn: %d"
MSG_ESSENCE: .asciz "Essence: %d (+%d)"
MSG_HELP: .asciz "Press H to see controls"
FN79: .float -0.79
FN83: .float -0.83
FN87: .float -0.87
FN65: .float -0.65
FONE: .float 1.0
.text
.global renderPersistentTexts
renderPersistentTexts:

	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$272, %rsp
	movq	%rdi, -16(%rbp) //state
	movq	%rsi, -24(%rbp) //gl_state 		
	movq	-16(%rbp), %rax //RAX = state

	movq	$100, %rsi		// RSI = 100

	movsd	11856(%rax), %xmm0
cvtsd2ss	%xmm0, %xmm0
	movss	FONE, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, %xmm0
cvtss2siq	%xmm0, %rcx
	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_FPS, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN75, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//PLAYER TURN
	movq	$100, %rsi		// RSI = 100

	movq	-16(%rbp), %rax //RAX = state
	movq	$0, %rcx
	movl	11800(%rax), %ecx
	movq	%rcx, -32(%rbp)
	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_PLAYER, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN79, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//TURN COUNT
	movq	$100, %rsi		// RSI = 100

	movq	-16(%rbp), %rax //RAX = state
	movq	$0, %rcx
	movl	11804(%rax), %ecx
	shrq	$1, %rcx
	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_TURN, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN83, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	movq	-16(%rbp), %rax //RAX = state
	cmpl	$4, 11836(%rax)
	je		SKIPP	
	//TURN COUNT
	movq	$100, %rsi		// RSI = 100

	movq	-16(%rbp), %rax //RAX = state	
	movq	-32(%rbp), %rdx
	imul	$24, %rdx
	addq	%rdx, %rax
	addq	$10000, %rax
	movq	(%rax), %rcx
	movq	4(%rax), %r8
	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_ESSENCE, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN87, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
	
SKIPP:
	//HELP TEXT
	movq	$100, %rsi		// RSI = 100

	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_HELP, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN96, %xmm0
	movss	FN65, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
	movq	%rbp, %rsp
	popq	%rbp
	ret


.text
MSG_EPND: .asciz "Enemy Pulse: inactive"
MSG_EP:	.asciz "Enemy Pulse: %d turns"
MSG_YPND: .asciz "Your Pulse: inactive"
MSG_YP:	.asciz "Your Pulse: %d turns"
MSG_PENTER:	.asciz "Press ENTER to start your turn"
TESTPRINT: .asciz "%d. x: %d\n"
PS: .asciz "%s"
FN91: .float -0.91
F06: .float 0.6
FN03: .float -0.3
FN02: .float -0.2
TESTMSG: .asciz "DEBUG: %f %f %f\n"
PRINTFLOATS: .asciz "%d. ax:%.2f, ay:%.2f, bw:%.2f, bh:%.2f, bl:%.2f, bt:%.2f tx:%.2f\n" 
.global updateTexts
updateTexts:

	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$272, %rsp

	movq	%rdi, -16(%rbp) //state 		
	movq	%rsi, -24(%rbp) //gl_state 		
	movq	-16(%rbp), %rax //RAX = state

	//while(gl_state->text_objects != NULL)
WHILEWWW:	
	movq	-24(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je		ENDWWW

	leaq	16(%rdx), %rdi
	movq	16(%rdx), %rsi	
	call	removeGLObject

	jmp		WHILEWWW
ENDWWW:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	renderPersistentTexts

	//if(state->players[(state->turn+1)%2].turns_to_pulse == -1)
	movq	-16(%rbp), %rdx
	movq	$0, %rax
	movl	11800(%rdx), %eax
	xorq	$1, %rax
	imul	$24, %rax
	movq	-16(%rbp), %rdx
	addq	$10000, %rdx
	addq	%rdx, %rax
	cmpl	$-1, 8(%rax)
	jne		ELSETT
IFTT:
	movq	$100, %rsi		// RSI = 100

	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_EPND, %rdx // RDX = umsg
	call	snprintf	


	jmp ENDTT
ELSETT:
	movq	$100, %rsi		// RSI = 100

	leaq	-256(%rbp), %rdi	
	movq	$0, %rcx
	movl	8(%rax), %ecx	
	movq	$0, %rax
	movq	$MSG_EP, %rdx // RDX = umsg
	call	snprintf	
ENDTT:	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN91, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	//if(state->players[state->turn].turns_to_pulse == -1)
	movq	-16(%rbp), %rdx
	movq	$0, %rax
	movl	11800(%rdx), %eax
	imul	$24, %rax
	movq	-16(%rbp), %rdx
	addq	$10000, %rdx
	addq	%rdx, %rax
	cmpl	$-1, 8(%rax)
	jne		ELSETT2
IFTT2:
	movq	$100, %rsi		// RSI = 100

	leaq	-256(%rbp), %rdi	
	movq	$0, %rax	
	movq	$MSG_YPND, %rdx // RDX = umsg
	call	snprintf	


	jmp ENDTT2
ELSETT2:
	movq	$100, %rsi		// RSI = 100

	leaq	-256(%rbp), %rdi	
	movq	$0, %rcx
	movl	8(%rax), %ecx	
	movq	$0, %rax
	movq	$MSG_YP, %rdx // RDX = umsg
	call	snprintf	
ENDTT2:	

	leaq	-256(%rbp), %rdi	
	movss	F55, %xmm0
	movss	FN95, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText

	movq	$-1, -32(%rbp) // displayed unit
	movq	-16(%rbp), %rax
	cmpl	$-1, 11812(%rax)
	je		ELSESU
	movq	$0, %rdx
	movl	11812(%rax), %edx
	movq	%rdx, -32(%rbp)

ELSESU:
	cmpl	$-1, 11816(%rax)
	je		ELSETU
	movq	$0, %rdx
	movl	11816(%rax), %edx
	movq	%rdx, -32(%rbp)

ELSETU:
	
	cmpl	$-1, -32(%rbp)
	je		ELSEDU
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	call	renderUnitText	
ELSEDU:
	movq	-16(%rbp), %rax
	movss	11844(%rax), %xmm0
	movss	F00, %xmm1
	ucomiss	%xmm1, %xmm0
	jb		ELSEAE  
	movq	-16(%rbp), %rdx
	movsd	11856(%rdx), %xmm1
	movss	11844(%rax), %xmm2
cvtsd2ss	%xmm1, %xmm1
	subss	%xmm1, %xmm2
	movss	%xmm2, 11844(%rax)

	leaq	-256(%rbp), %rdi
	movq	$100, %rsi
	movq	$PS, %rdx
	leaq	11392(%rax), %rcx
	call	snprintf
	
	movq	-16(%rbp), %rax
	leaq	-256(%rbp), %rdi	
	movss	FN03, %xmm0
	movss	F06, %xmm1
	movss	11844(%rax), %xmm2 //alert_countdown
	movss	11848(%rax), %xmm3	//alert_coundown_max
	divss	%xmm3, %xmm2
	movq	-24(%rbp), %rsi

	movq	-16(%rbp), %rax
	leaq	-256(%rbp), %rdi	
	movss	FN03, %xmm0
	movss	F06, %xmm1
	movss	11844(%rax), %xmm2 //alert_countdown
	movss	11848(%rax), %xmm3	//alert_coundown_max
	divss	%xmm3, %xmm2
	movq	-24(%rbp), %rsi
	call	updateTextAlpha
			
ELSEAE:
	
	
	movq	-16(%rbp), %rax //RAX = state
	cmpl	$4, 11836(%rax)
	jne		SKIPPP	
	//Something
	leaq	-256(%rbp), %rdi // RDI = message
	movq	$100, %rsi		// RSI = 100
	movq	-32(%rbp), %rax // RAX = &state->units[0]
	movq	-8(%rbp), %rdx
	imul	$12, %rdx
	addq	%rdx, %rax // RAX = &state->units[displayed_unit]	

	imul	$20, %rdx
	addq	%rdx, %rax
	movq	$0, %rax	
	movq	$MSG_PENTER, %rdx // RDX = umsg
	call	snprintf	

	leaq	-256(%rbp), %rdi	
	movss	FN02, %xmm0
	movss	F00, %xmm1
	movq	-24(%rbp), %rsi
	call	updateText
			
SKIPPP:
	
	movq	-16(%rbp), %rax
	cmpl	$1, 11840(%rax)
	jne		ELSEHELP
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	renderHelpText
ELSEHELP:
	
	movq	%rbp, %rsp
	popq	%rbp
	ret

//#define C
#ifdef C
#else
.global initializeFontGL
#endif
initializeFontGL:
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)  //state
	movq	%rsi, -16(%rbp)  //gl_state
	leaq	120(%rsi), %rax
	movq	%rax, -24(%rbp)	//face
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp) //g
	movq	$0, -40(%rbp) //w
	movq	$0, -48(%rbp) //h
	movq	$32, -56(%rbp)
FORFGL:
	cmpq	$128, -56(%rbp)
	jge		ENDFORFGL
	
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	$FT_LOAD_RENDER, %rdx
	call	FT_Load_Char

	movq	-32(%rbp), %rax
	movq	156(%rax), %rax
	addq	%rax, -40(%rbp)

	movq	-32(%rbp), %rax
	movl	152(%rax), %eax

	cmpl	%eax, -48(%rbp)
	jge		ELSEBR
	movl	 %eax, -48(%rbp)
	 
ELSEBR:	
		
	incq	-56(%rbp)
	jmp		FORFGL
ENDFORFGL:

	//gl_state->atlas_w = w; //104
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)

	//gl_state->atlas_h = h; //108
	movq	-16(%rbp), %rax
	leaq	108(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)

	//glTexImage2D(GL_TEXTURE_2D, 0, 1, w, h, 0, GL_RED, GL_UNSIGNED_BYTE, 0);
	subq	$8, %rsp
	pushq	$0
	pushq	$5121
	pushq	$6403
	movl	$0, %r9d
	movl	-48(%rbp), %r8d
	movl	-40(%rbp), %ecx
	movl	$1, %edx
	movl	$0, %esi
	movl	$3553, %edi
	call	glTexImage2D
	addq	$32, %rsp

	movl	$9729, %edx
	movl	$10241, %esi
	movl	$3553, %edi
	call	glTexParameteri	

	movl	$9729, %edx
	movl	$10240, %esi
	movl	$3553, %edi
	call	glTexParameteri	

	movl	$1, %esi
	movl	$3317, %edi
	call	glPixelStorei

	movq	$0, -64(%rbp)
	movq	$32, -56(%rbp)
FORFGL2:
	cmpq	$128, -56(%rbp)
	jge		ENDFORFGL2

	movq	$FT_LOAD_RENDER, %rdx
	movq	-56(%rbp), %rsi			
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	call	FT_Load_Char

	cmpq	$0, %rax
	jne		CONTIN

	subq	$8, %rsp
	movq	-32(%rbp), %rax
	pushq	168(%rax)	
	pushq	$5121
	pushq	$6403
	movl	152(%rax), %r9d

	movl	156(%rax), %r8d
	movl	$0, %ecx
	movl	-64(%rbp), %edx
	movl	$0, %esi
	movl	$3553, %edi
	call	glTexSubImage2D
	addq	$32, %rsp

	//gl_state->gl_glyphs[i].ax = g->advance.x >> 6;
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	shrq	$6, %rax //RAX = g->advance.x >> 6

	
	cvtsi2ssq	%rax, %xmm0
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx

	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$152, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm2

	//gl_state->gl_glyphs[i].ay = g->advance.y >> 6;
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	shrq	$6, %rax //RAX - g->advance.x >> 6

	cvtsi2ssq	%rax, %xmm0
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$156, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm3

	//gl_state->gl_glyphs[i].bw = g->bitmap.width;
	movq	-32(%rbp), %rax
	movl	156(%rax), %eax // RAX = g->bitmap.width

	cvtsi2ssl	%eax, %xmm0 //XMM0 = g->bitmap.width/2

	movq	-16(%rbp), %rcx	//
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$160, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm4

	//gl_state->gl_glyphs[i].bh = g->bitmap.rows;
	movq	-32(%rbp), %rax
	movl	152(%rax), %eax // RAX = g->bitmap.width

	cvtsi2ssl	%eax, %xmm0 //XMM0 = g->bitmap.width/2

	movq	-16(%rbp), %rcx	//
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$164, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm5

	//gl_state->gl_glyphs[i].ay = g->bitmap_left;
	movq	-32(%rbp), %rax
	movl	192(%rax), %eax

	cvtsi2ssl	%eax, %xmm0
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$168, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm6

	//gl_state->gl_glyphs[i].ay = g->bitmap_top;
	movq	-32(%rbp), %rax
	movl	196(%rax), %eax

	cvtsi2ssl	%eax, %xmm0
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$172, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm7
	
	cvtsi2ssl	-64(%rbp), %xmm0	
	cvtsi2ssl	-40(%rbp), %xmm1
	divss		%xmm1, %xmm0
	
	movq	-16(%rbp), %rcx	//
	movq	-56(%rbp), %rax
	
	shlq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$176, %rax
	movss	%xmm0, (%rax)
	movss	%xmm0, %xmm8
	
	movq	-32(%rbp), %rax
	movl	156(%rax), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)			
	
	movq	$7, %rax
	movq	$PRINTFLOATS, %rdi
	movl	-56(%rbp), %esi
	movss	%xmm2, %xmm0
	movss	%xmm3, %xmm1
	movss	%xmm4, %xmm2
	movss	%xmm5, %xmm3
	movss	%xmm6, %xmm4
	movss	%xmm7, %xmm5
	movss	%xmm8, %xmm6

	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm4
	cvtss2sd	%xmm5, %xmm5
	cvtss2sd	%xmm6, %xmm6
	call	printf	
CONTIN:
	incq	-56(%rbp)
	jmp		FORFGL2
ENDFORFGL2:

	movq	$TESTMSG, %rdi
	call	_glCheckErrors
	movq	%rbp,	%rsp
	popq	%rbp
	ret

.data
SXY: .float 0.00085
FN1: .float -1.0
F1: .float 1.0
PRF: .asciz "%f\n"
.text
.global drawCharacter
drawCharacter:
	pushq	%rbp
	movq	%rsp, %rbp

	//%rdi - p
	//%rsi - *x
	//%rdx - *y
	//%rcx - *coords
	//%r8  - *n
	//%r9  - *state
	//PUSH - *gl_state 16(%rbp)
	//%xmm0- alpha
	subq	$256, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movss	%xmm0, -56(%rbp)

	movq	16(%rbp), %rax
	addq	$152, %rax
	
	movq	%rdi, %rdx
	imulq	$28, %rdx
	
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)

	movl	(%r8), %eax
	movq	$0, %rdx
	movl	%eax, %edx

	imul	$40, %rdx
	addl	%edx, -32(%rbp) 
	addl	$6, %eax
	movl	%eax, (%r8)
	
	//float x2 =  *x + gl_state->gl_glyphs[p].bl * sx;
	movq	-64(%rbp), %rax
	movss	16(%rax), %xmm0
	mulss	SXY, %xmm0
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)

	//float y2 = -*y - gl_state->gl_glyphs[p].bt * sy;
	movq	-64(%rbp), %rax
	movss	20(%rax), %xmm0
	mulss	SXY, %xmm0
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	addss	%xmm1, %xmm0
	mulss	FN1, %xmm0	
	movss	%xmm0, -72(%rbp)

	//float w = gl_state->gl_glyphs[p].bw * sx;
	movq	-64(%rbp), %rax
	movss	8(%rax), %xmm0
	mulss	SXY, %xmm0
	movss	%xmm0, -76(%rbp)

	//float h = gl_state->gl_glyphs[p].bh * sy;
	movq	-64(%rbp), %rax
	movss	12(%rax), %xmm0
	mulss	SXY, %xmm0
	movss	%xmm0, -80(%rbp)

/*	cvtss2sd %xmm0, %xmm0
	movq	$1, %rax
	movq	$PRF, %rdi
	call	printf
*/	
	// BIG 1
	//1
	movss	-68(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movss	24(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	//%xmm0- alpha	

	// BIG 2
	//1
	movss	-68(%rbp), %xmm0
	movss	-76(%rbp), %xmm1
	addss	%xmm1, %xmm0	
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movq	24(%rax), %xmm0
	
	movq	-64(%rbp), %rax
	movss	8(%rax), %xmm2
	
	movq	16(%rbp), %rax
	movl	104(%rax), %eax 
cvtsi2ssl	%eax, %xmm3
	
	divss	%xmm3, %xmm2
	addss	%xmm2, %xmm0

	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	// BIG 3 
	//1
	movss	-68(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movq	24(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	108(%rdx), %rcx
cvtsi2ssl	%ecx, %xmm1
	movq	-64(%rbp), %rdx
	movss	12(%rdx), %xmm2
	divss	%xmm1, %xmm2
	
	movss	%xmm2, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	// BIG 4
	//1
	movss	-68(%rbp), %xmm0
	movss	-76(%rbp), %xmm1
	addss	%xmm1, %xmm0	
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movq	24(%rax), %xmm0
	
	movq	-64(%rbp), %rax
	movss	8(%rax), %xmm2
	
	movq	16(%rbp), %rax
	movl	104(%rax), %eax 
cvtsi2ssl	%eax, %xmm3
	
	divss	%xmm3, %xmm2
	addss	%xmm2, %xmm0

	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	// BIG 5 
	//1
	movss	-68(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movq	24(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	108(%rdx), %rcx
cvtsi2ssl	%ecx, %xmm1
	movq	-64(%rbp), %rdx
	movss	12(%rdx), %xmm2
	divss	%xmm1, %xmm2
	
	movss	%xmm2, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	// BIG 6
	//1
	movss	-68(%rbp), %xmm0
	movss	-76(%rbp), %xmm1
	addss	%xmm1, %xmm0	
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//2
	movss	-72(%rbp), %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	mulss	FN1, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//3
	movq	-32(%rbp), %rax
	movss	F00, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//4
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//5
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	
	//6
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//7
	movss	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)

	//8
	movq	-32(%rbp), %rdx	
	movq	-64(%rbp), %rax
	movq	24(%rax), %xmm0
	
	movq	-64(%rbp), %rax
	movss	8(%rax), %xmm2
	
	movq	16(%rbp), %rax
	movl	104(%rax), %eax 
cvtsi2ssl	%eax, %xmm3
	
	divss	%xmm3, %xmm2
	addss	%xmm2, %xmm0

	movss	%xmm0, (%rdx)
	addq	$4, -32(%rbp)

	//9
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	108(%rdx), %rcx
cvtsi2ssl	%ecx, %xmm1
	movq	-64(%rbp), %rdx
	movss	12(%rdx), %xmm2
	divss	%xmm1, %xmm2
	
	movss	%xmm2, (%rax)
	addq	$4, -32(%rbp)
	
	//10
	movq	-32(%rbp), %rax
	movss	F1, %xmm0
	movss	%xmm0, (%rax)
	addq	$4, -32(%rbp)
	//%xmm0- alpha	
	//float x2 =  *x + gl_state->gl_glyphs[p].bl * sx;
		
	//float y2 = -*y - gl_state->gl_glyphs[p].bt * sy;

	movq	-64(%rbp), %rax	
	movss	(%rax), %xmm0
	mulss	SXY, %xmm0	
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rax)	

	movq	-64(%rbp), %rax	
	movss	4(%rax), %xmm0
	mulss	SXY, %xmm0	
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rax)	

	movq	%rbp, %rsp
	popq	%rbp
	ret

.global drawText
drawText:
	
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$32000, %rsp	
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)

	movq	(%rdi), %rdi
	movss	(%rdi), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	4(%rdi), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	8(%rdi), %xmm0
	movss	%xmm0, -36(%rbp)

	//int string_length = strlen(strlen(iter->text))	
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	call	strlen
	movq	%rax, -48(%rbp) // string_length


	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp) //char *p
	
	movq	$0, -56(%rbp) // int n = 0
FORDT1:
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je		ENDFORDT1
	movq	$0, %rdi
	movb	(%rax), %dil
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movss	-36(%rbp), %xmm0
	leaq	-32000(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-16(%rbp), %r9
	subq	$8, %rsp
	pushq	-24(%rbp)	
	call	drawCharacter
	addq	$16, %rsp
	 
	incq	-64(%rbp)
	jmp		FORDT1
ENDFORDT1:
	
	movq	-48(%rbp), %rax
	imul	$240, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	updateStoreSizeGL

	movq	$GL_ARRAY_BUFFER, %rdi
	movq	$0, %rsi
	movq	$0, %rdx
	movl	-56(%rbp), %edx	
	imul	$40, %rdx
	leaq	-32000(%rbp), %rcx
	call	glBufferSubData

	movq	$GL_TRIANGLES, %rdi
	movq	$0, %rsi
	movq	-56(%rbp), %rdx
	call	glDrawArrays

	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
ISTEXT: .asciz "isText"
.text
.global drawTexts
drawTexts:

	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)		
	movq	%rsi, -16(%rbp)
	
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	
	movq	-16(%rbp), %rax
	movq	$0, %rdi
	movl	128(%rax), %edi
	call	glBindVertexArray

	movq	$GL_ARRAY_BUFFER, %rdi
	movq	-16(%rbp), %rax
	movq	$0, %rsi
	movl	132(%rax), %esi
	call	glBindBuffer
	
	movq	-16(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	$ISTEXT, %rsi
	call	glGetUniformLocation	

	movq	%rax, %rdi
	movq	$1, %rsi
	call	glUniform1i

	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	
FORDT:
	cmpq	$0, -32(%rbp)
	je		ENDFORDT
	
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	call	drawText

	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp		FORDT
ENDFORDT:

					

	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
FONTPATH: .asciz "/usr/share/fonts/truetype/freefont/FreeSans.ttf"
.text
.global initFreetype
initFreetype:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

		
	call	FT_Init_FreeType

	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	$FONTPATH, %rsi
	movq	$0, %rdx
	movq	-16(%rbp), %rcx
	call	FT_New_Face
	
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	$0, %rsi
	movq	$256, %rdx
	movq	$800, %rcx
	movq	$800, %r8
	call	FT_Set_Char_Size
	
	movq	%rbp, %rsp
	popq	%rbp
	ret



