.text
PITEST:		.asciz	"%d\n"
DATASAVE:	.asciz	"data.save"
WORKSHOP:	.asciz 	"Workshop"
GOLEM:		.asciz	"Golem"
WISP:		.asciz	"Wisp"
UELEMENTAL:	.asciz	"Unbound Elemental"
FELEMENTAL:	.asciz	"Fire Elemental"
WELEMENTAL:	.asciz	"Water Elemental"
IELEMENTAL:	.asciz	"Ice Elemental"
AELEMENTAL:	.asciz	"Arcane Elemental"
FTWO:		.float	2.0
FTHREE:		.float	3.0
NZERO: 		.float 	-0.0
NFIVE: 		.float 	-5.0
POF:   		.float 	0.05
FIFTH: 		.float 	0.2
TENTH:		.float 	0.1
FFOUR:		.float	4.0
PERC_S:		.asciz 	"%s"
FBOUND:		.asciz	"Your Elemental has been bound to fire!"
WBOUND:		.asciz	"Your Elemental has been bound to water!"
IBOUND:		.asciz	"Your Elemental has been bound to ice!"
NEESSENCE:	.asciz	"NOT ENOUGH ESSENCE!"
AYUDESTROY:	.asciz	"ALL YOUR UNITS WERE DESTROYED!"
EWAP:		.asciz	"ENEMY IS WINDING UP AN ARCANE PULSE!"
CMT:		.asciz	"Can't move there!"
NEMP:		.asciz	"Not enough MP!"
GAMEOVER:	.asciz	"Game Over! Hold ESCAPE to close the game."
F100000:	.float	100000.0
SAVE:		.asciz	"Saving game..."
LOAD:		.asciz	"Loaded game!"
FP0022:		.double	0.0022
DZERO:		.double	0.0
STO:		.asciz	"Your spawn tile is occupied!!!"
FPOONE:		.float	0.01
# Save State
# Params:
# RDI: game_state *state
.global saveState
saveState:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	movq	%rdi, %rsi
	movq	$11873, %rdx
	movq	$DATASAVE, %rdi
	call 	writeFile
	
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Load State
# Params:
# RDI: game_state *state
.global loadState
loadState:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	movq	$DATASAVE, %rdi
	call 	loadFile
	movq	%rax, %rsi
	popq	%rdi
	movq	$11872, %rdx
	call	memcpy

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Initialize Game State
# Params:
# RDI: game_state *state
.global initializeGameState
initializeGameState:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$2, 11796(%rdi)
	movl	$-1, 11800(%rdi)
	movl	$0, 11828(%rdi)
	movl	$1, 11804(%rdi)
	movl	$0, 11836(%rdi)
	movl	$0, 11808(%rdi)
	movl	$-1, 11844(%rdi)
	movl	$-1, 11812(%rdi)
	movl	$-1, 11816(%rdi)
	movl	NZERO, %eax
	movl	%eax, 11760(%rdi)
	movl	NZERO, %eax
	movl	%eax,  11764(%rdi)
	movl	NFIVE, %eax
	movl	%eax, 11768(%rdi)
	movl	NTWO, %eax
	movl	%eax, 11772(%rdi)
	movl	ZERO, %eax
	movl	%eax, 11776(%rdi)
	movl	NZERO, %eax
	movl	%eax, 11780(%rdi)
	movl	POF, %eax
	movl	%eax, 11788(%rdi)
	movl	FIFTH, %eax
	movl	%eax, 11792(%rdi)
	movl	TENTH, %eax
	movl	%eax, 11784(%rdi)
	movl	$-1, 10008(%rdi)
	movl	$-1, 10032(%rdi)
	addq	$11592, %rdi
	pushq	%rdi
	movq	$WORKSHOP, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$20, %rdi
	movq	$GOLEM, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	movq	$WISP, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$60, %rdi
	movq	$UELEMENTAL, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$80, %rdi
	movq	$FELEMENTAL, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$100, %rdi
	movq	$WELEMENTAL, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$120, %rdi
	movq	$IELEMENTAL, %rsi
	call 	strcpy
	movq	-8(%rbp), %rdi
	addq	$140, %rdi
	movq	$AELEMENTAL, %rsi
	call 	strcpy

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Essence Generation
# Params:
# RDI: int team
# RSI: game_state *state
.global updateEssenceGeneration
updateEssenceGeneration:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rsi
	imul	$24, %rdi
	addq	%rdi, %rsi
	addq	$10004, %rsi
	movl	$0, (%rsi)
	shrq	$4, %rdi
	movq	-8(%rbp), %rsi
	addq	$11808, %rsi
	movq	$0, %r10
	movl	(%rsi), %r10d
	imul	$12, %r10
	popq	%rsi
	addq	$10192, %rsi
	addq	%rsi, %r10
	subq	$12, %rsi
	addq	$5, %rsi
UEGLOOP:
	addq	$12, %rsi
	cmpq	%r10, %rsi
	jg		UEGEND	
	cmpb	(%rsi), %dil
	jne		UEGLOOP
	movq	$0, %r11
	movb	-3(%rsi), %r11b
	imul	$100, %r11
	movq	$0, %r12
	movb	-2(%rsi), %r12b
	addq	%r12, %r11
	movq	-8(%rbp), %r12
	addq	%r11, %r12
	cmpb	$1, -1(%rsi)
	jne		UEGLOOP
	cmpb	$2, (%r12)
	jne		UEGLOOP
	movq	-8(%rbp), %r11
	addq	$10004, %r11
	imul	$24, %rdi
	addq	%rdi, %r11
	shrq	$4, %rdi
	addl	$20, (%r11)
	jmp		UEGLOOP

UEGEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Essence Total
# Params:
# RDI: int team
# RSI: game_state *state
.global updateEssenceTotal
updateEssenceTotal:

# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	addq	$10000, %rsi
	imul	$24, %rdi
	addq	%rdi, %rsi
	movl	4(%rsi), %edi
	addl	%edi, (%rsi)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Alert Message
# Params:
# RDI: char *message
# XMM0: float time
# RSI: game_state *state
.global alertMessage
alertMessage:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	movss	%xmm0, 11844(%rsi)
	movss	%xmm0, 11848(%rsi)
	
	movq	%rdi, %rcx
	leaq	11392(%rsi), %rdi
	movq	$0, %rax
	movq	$100, %rsi
	movq	$PERC_S, %rdx
	call	snprintf	

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Altars
# Params:
# RDI: int team
# RSI: game_state *state
.global updateAltars
updateAltars:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	subq	$16, %rsp
# you can copy paste this to extract units[unit_count] into r10
	movq	$0, -32(%rbp)
	movl	11808(%rsi), %eax
	movl	%eax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	$12, %rax
	movq	%rax, -32(%rbp)
	addq	%rsi, -32(%rbp)
	addq	$10192, -32(%rbp)
	movq	%rsi, %r11
	addq	$10192, %r11
	subq	$12, %r11
	movq	$-1, -24(%rbp)
UALOOP:
	incq	-24(%rbp)
	addq	$12, %r11
	movq	-32(%rbp), %rax
	cmpq	%rax, %r11
	jge		UAEND
	cmpb	$3, 4(%r11)
	jne		UALOOP
	movq	$0, %rax
	movb	2(%r11), %al
	movq	$0, %r8
	movb	3(%r11), %r8b
	imul	$100, %r8
	addq	%r8, %rax
	addq	%rsi, %rax
	cmpb	$4, (%rax)
	je		UAFT
	cmpb	$5, (%rax)
	je		UAWT
	cmpb	$6, (%rax)
	je		UAIT
	jmp		UALOOP
UAFT:
	pushq	%rdi
	pushq	%rsi
	movq	$0, %rdi
	movq	$9, %rsi
	movb	2(%r11), %dil
	movb	3(%r11), %sil
	pushq	%rdi
	pushq	%rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	pushq	%r11
	call	removeUnit
	popq	%r11
	popq	%rsi
	popq	%rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	pushq	%r11
	call	createFireElemental
	popq	%r11
	movq	$FBOUND, %rdi
	movss	FTWO, %xmm0
	movq	-16(%rbp), %rsi
	pushq	%r11
	call 	alertMessage
	popq	%r11
	subq	$12, %r11
	decq	-24(%rbp)
	popq	%rsi
	popq	%rdi
	jmp		UALOOP
UAWT:
	pushq	%rdi
	pushq	%rsi
	movq	$0, %rdi
	movq	$9, %rsi
	movb	2(%r11), %dil
	movb	3(%r11), %sil
	pushq	%rdi
	pushq	%rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	pushq	%r11
	call	removeUnit
	popq	%r11
	popq	%rsi
	popq	%rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	pushq	%r11
	call	createWaterElemental
	popq	%r11
	movq	$WBOUND, %rdi
	movss	FTWO, %xmm0
	movq	-16(%rbp), %rsi
	pushq	%r11
	call 	alertMessage
	popq	%r11
	subq	$12, %r11
	decq	-24(%rbp)
	popq	%rsi
	popq	%rdi
	jmp		UALOOP
UAIT:
	pushq	%rdi
	pushq	%rsi
	movq	$0, %rdi
	movq	$9, %rsi
	movb	2(%r11), %dil
	movb	3(%r11), %sil
	pushq	%rdi
	pushq	%rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	pushq	%r11
	call	removeUnit
	popq	%r11
	popq	%rsi
	popq	%rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	pushq	%r11
	call	createIceElemental
	popq	%r11
	movq	$IBOUND, %rdi
	movss	FTWO, %xmm0
	movq	-16(%rbp), %rsi
	pushq	%r11
	call 	alertMessage
	popq	%r11
	subq	$12, %r11
	decq	-24(%rbp)
	popq	%rsi
	popq	%rdi
	jmp		UALOOP
UAEND:
# Epilogue
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Start Arcane Pulse
# Params:
# RDI: game_state *state
.global startArcanePulse
startArcanePulse:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	movq	$0, %r10
	movl	11800(%rdi), %r10d
	imul	$24, %r10
	addq	$10000, %rdi
	addq	%r10, %rdi
	cmpl	$600, (%rdi)
	jl		APNEE
	subl	$600, (%rdi)
	movl	$6, 8(%rdi)
	jmp		APEND
APNEE:
	popq	%rdi
	movq	%rdi, %rsi	
	movq	$NEESSENCE, %rdi
	movss	FTWO, %xmm0
	call	alertMessage
APEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Kill All Enemies
# Params:
# RDI: int team
# RSI: game_state *state
.global killAllEnemies
killAllEnemies:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx	

	# you can copy paste this to extract units[unit_count] into r10
	movq	$0, %r10
	movl	11808(%rsi), %r10d
	imul	$12, %r10
	addq	%rsi, %r10
	addq	$10192, %r10
	movq	$-1, %rcx
	movq	%rsi, %rbx
	addq	$10180, %rbx
KAELOOP:
	addq	$12, %rbx
	incq	%rcx
	cmpq	%r10, %rbx
	jge		KAEEND
	cmpb	%dil, 5(%rbx)
	je		KAELOOP
	cmpb	$0, 4(%rbx)
	je		KAELOOP
	pushq	%rdi
	pushq	%rsi
	pushq	%rcx
	pushq	%rbx
	pushq	%r10
	movq	%rcx, %rdi
	call	removeUnit
	popq	%r10
	popq	%rbx
	popq	%rcx
	popq	%rsi
	popq	%rdi
	subq	$12, %r10
	subq	$12, %rbx
	decq	%rcx
	jmp		KAELOOP
KAEEND:
	popq	%rbx
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret


# Update Arcane Pulse
# Params:
# RDI: game_state *state
.global updateArcanePulse
updateArcanePulse:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	movq	$0, %r9
	movl	11800(%rdi), %r9d
	imul	$24, %r9
	addq	$10008, %rdi
	addq	%r9, %rdi
	cmpl	$-1, (%rdi)
	je		UAPEND
	decl	(%rdi)
	cmpl	$0, (%rdi)
	jne		UAPEND
	shrq	$4, %r9
	movq	-8(%rbp), %rsi
	pushq	%rdi
	movq	%r9, %rdi
	call	killAllEnemies
	popq	%rdi
	movl	$-1, (%rdi)
	popq	%rsi
	movq	$AYUDESTROY, %rdi
	movss	FFOUR, %xmm0
	call 	alertMessage
UAPEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Unit Distance
# Params:
# RDI: int u1
# RSI: int u2
# RDX: game_state *state
#.global unitDistance
unitDistance:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rax
	imul	$12, %rax
	addq	%rdx, %rax
	addq	$10192, %rax
	movq	$0, %rdi
	movq	$0, %rsi
	movb	2(%rax), %dil
	movb	3(%rax), %sil
	movq	-16(%rbp), %rax
	imul	$12, %rax
	addq	-24(%rbp), %rax
	addq	$10192, %rax
	movq	$0, %rdx
	movq	$0, %rcx
	movb	2(%rax), %dl
	movb	3(%rax), %cl
	call hexDistance
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Arcane Elemental
# Params:
# RDI: game_state *state
.global updateArcaneElemental
updateArcaneElemental:
# Prologue
	pushq	%rbp	
	movq	%rsp, %rbp
	pushq	%rdi
	#You can copy paste this to extract units[unit_count] into r10
	movq	$0, %rax
	movl	11808(%rdi), %eax
	imul	$12, %rax
	addq	%rdi, %rax
	addq	$10192, %rax
	pushq	%rax
	movq	-8(%rbp), %rdx
	addq	$10180, %rdx
	pushq	$-1
UAEFLOOP:
	incq	-24(%rbp)
	addq	$12, %rdx
	cmpq	%rax, %rdx
	jge		UAEFLEND
	cmpb	$4, 4(%rdx)
	jne		UAEFLOOP
	pushq	%rdx
	movq	-8(%rbp), %rdx
	addq	$10180, %rdx
	pushq	$-1
UAEWLOOP:
	incq	-40(%rbp)
	addq	$12, %rdx
	cmpq	%rax, %rdx
	JGE		UAEWLEND
	cmpb	$5, 4(%rdx)
	jne		UAEWLOOP
	pushq	%rdx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	call	unitDistance
	popq	%rdx
	cmpq	$1, %rax
	movq	-16(%rbp), %rax
	jne		UAEWLOOP
	pushq	%rdx
	movq	-8(%rbp), %rdx
	addq	$10180, %rdx
	pushq	$-1	
UAEILOOP:
	incq	-56(%rbp)
	addq	$12, %rdx
	cmpq	%rax, %rdx
	jge		UAEILEND
	cmpb	$6, 4(%rdx)
	jne		UAEILOOP
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	pushq	%rdx
	movq	-8(%rbp), %rdx
	call	unitDistance
	popq	%rdx
	cmpq	$1, %rax
	movq	-16(%rbp), %rax
	jne		UAEILOOP
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	pushq	%rdx
	movq	-8(%rbp), %rdx
	call 	unitDistance
	popq	%rdx
	cmpq	$1, %rax
	movq	-16(%rbp), %rax
	jne		UAEILOOP
	movq	$0, %rdi
	movb	2(%rdx), %dil
	movq	$0, %rsi
	movb	3(%rdx), %sil
	pushq	%rdx
	pushq	%rsi
	pushq	%rdi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	call	removeUnit
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	call	removeUnit	
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	call	removeUnit
	popq	%rdi
	popq	%rsi
	popq	%rdx
	decq	-24(%rbp)
	decq	-40(%rbp)
	decq	-56(%rbp)
	subq	$12, %rdx
	subq	$12, -32(%rbp)
	subq	$12, -48(%rbp)
	pushq	%rdx
	movq	-8(%rbp), %r11
	movq	11800(%r11), %rdx
	movq	%r11, %rcx
	call 	createArcaneElemental
	popq	%rdx
	jmp		UAEILOOP

UAEILEND:
	popq	%rdx
	popq	%rdx
	jmp		UAEWLOOP
UAEWLEND:
	popq	%rdx
	popq	%rdx
	jmp		UAEFLOOP
UAEFLEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# is Unit in Vision Range
# Params:
# RDI: int target
# RSI: game_state *state
.global isUnitInVisionRange
isUnitInVisionRange:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	movq	%rdi, %rdx
	imul	$12, %rdx
	addq	%rsi, %rdx
	addq	$10192, %rdx
	pushq	%rdx
# You can copy paste this to extract units[unit_count] into rax
	movq	$0, %rax
	movl	11808(%rsi), %eax
	imulq	$12, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	pushq	%rax
	pushq	$-1
	movq	-8(%rbp), %rax
	addq	$10180, %rax
IUIVRLOOP:
	addq	$12, %rax
	incq	-32(%rbp)
	cmpq	-24(%rbp), %rax
	jge		UINIR
	movq	$0, %rsi
	movq	$0, %rdi
	movq	-16(%rbp), %rdx
	movq	2(%rdx), %rdi
	movq	3(%rdx), %rsi
	movq	2(%rax), %rdx
	movq	3(%rax), %rcx
	pushq	%rax
	call	hexDistance
	movq	%rax, %rdx
	popq	%rax
	movq	$0, %rsi
	movb	10(%rax), %sil
	cmpq	%rsi, %rdx
	jg		IUIVRLOOP
	movq	-8(%rbp), %rcx
	movq	$0, %rsi
	movl	11800(%rcx), %esi
	cmpb	5(%rax), %sil
	jne		IUIVRLOOP
	jmp		UIIR	

UIIR:
	movq	$1, %rax
	jmp		IUIVREND

UINIR:
	movq	$0, %rax
	jmp		IUIVREND

IUIVREND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Turn
# Params:
# RDI: game_state *state
.global turn
turn:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	cmpl	$-1, 11800(%rdi)
	je		TURNN1
	movq	-8(%rbp), %rsi
	movq	$0, %rdi
	movl	11800(%rsi), %edi
	call	updateEssenceTotal
	movq	-8(%rbp), %rsi
	movq	$0, %rdi
	movl	11800(%rsi), %edi
	call	updateAltars
	movq	-8(%rbp), %rdi
	call	updateArcanePulse
	movq	-8(%rbp), %rdi
	call	updateArcaneElemental
	movq	-8(%rbp), %rdi
	movq	$0, %rsi
	movl	11800(%rdi), %esi
	imul	$24, %rsi
	addq	%rdi, %rsi
	addq	$10008, %rsi
	cmpl	$-1, (%rsi)
	je		TTPN1
	movq	$EWAP, %rdi
	movss	FTHREE, %xmm0
	movq	-8(%rbp), %rsi
	call	alertMessage
TTPN1:
	movq	-8(%rbp), %rdi
	movl	$4, 11836(%rdi)
	jmp		TURNCONT
TURNN1:
	movq	-8(%rbp), %rdi
	movl	$1, 11800(%rdi)
TURNCONT:
	movq	-8(%rbp), %rdi
	xorl	$1, 11800(%rdi)
	incl	11804(%rdi)	

# You can copy paste this to extract units[unit_count] into rax
	movq	-8(%rbp), %rdi
	movq	$0, %rax
	movl	11808(%rdi), %eax
	imulq	$12, %rax
	addq	%rdi, %rax
	addq	$10192, %rax
	pushq	%rax
	movq	%rax, %rsi
	addq	$10192, %rdi
TURNLOOP:
	movb	9(%rdi), %al
	movb	%al, 8(%rdi)
	addq	$12, %rdi
	cmpq	%rsi, %rdi
	jl		TURNLOOP
	movq	-8(%rbp), %rdi
	movl	$-1, 11812(%rdi)
	movl	$0, 11828(%rdi)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Is in Map Bounds
# Params:
# RDI: int x
# RSI: int y
# RDX: game_state *state
.global isInMapBounds
isInMapBounds:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	cmpl	11752(%rdx), %edi
	jge		IIMBFALSE
	cmpl	$0, %edi
	jl		IIMBFALSE
	cmpl	11756(%rdx), %esi
	jge		IIMBFALSE
	cmpl	$0, %esi
	jl		IIMBFALSE
	imul	$100, %rsi
	addq	%rdi, %rdx
	addq	%rsi, %rdx
	cmpb	$0, (%rdx)
	je		IIMBFALSE
	jmp		IIMBTRUE
IIMBFALSE:
	movq	$0, %rax
	jmp		IIMBEND
IIMBTRUE:
	movq	$1, %rax
	jmp		IIMBEND
IIMBEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Set Move Cursor
# Params:
# RDI: int new_move_x
# RSI: int new_move_y
# RDX: game_state *state
.global setMoveCursor
setMoveCursor:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	call	isInMapBounds
	cmpl	$0, %eax
	je		SMCEND
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	%edi, 11820(%rdx)
	movl	%esi, 11824(%rdx)
	
	movq	$0, %rcx
	movl	11812(%rdx), %ecx
	imul	$12, %rcx
	addq	$10192, %rcx
	addq	%rdx, %rcx
	pushq	%rcx
	cmpb	%dil, 2(%rcx)
	jne		SMCIF
	cmpb	%sil, 3(%rcx)
	jne		SMCIF
	jmp		SMCELSE
SMCIF:
	movq	$0, %rdi
	movq	$0, %rsi
	movb	2(%rcx), %dil
	movb	3(%rcx), %sil
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	call	calculateRotation
	movq	-32(%rbp), %rdi
	movb	%al, 11(%rdi)
SMCELSE:
	movq	-24(%rbp), %rdi
	movl	$1, 11828(%rdi)
	cmpl	$-1, 11812(%rdi)
	je		SMCELSE2
SMCIF2:
	movq	-32(%rbp), %rdx
	movq	$0, %rsi
	movq	$0, %rdi
	movb	2(%rdx), %dil
	movb	3(%rdx), %sil
	movq	-24(%rbp), %rax
	movq	$0, %rdx
	movq	$0, %rcx
	movl	11820(%rax), %edx
	movl	11824(%rax), %ecx
	call	hexDistance
	movq	-24(%rbp), %rdi
	movl	%eax, 11832(%rdi)
	jmp		SMCI2END
SMCELSE2:
	movq	-24(%rbp), %rdi
	movl	$0, 11832(%rdi)
SMCI2END:
	cmpl	$0, 11832(%rdi)
	jne		SMCSKIP
	movl	$0, 11828(%rdi)
SMCSKIP:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	call 	findUnit
	pushq	%rax
	cmpq	$-1, %rax
	je		SMCSKIP2
	imul	$12, %rax
	addq	-24(%rbp), %rax
	addq	$10192, %rax
	movq	-24(%rbp), %rdi
	movq	$0, %rsi
	movl	11800(%rdi), %esi
	cmpb	%sil, 5(%rax)
	jne		SMCTIF2
	movq	$-1, -40(%rbp)
	jmp		SMCSKIP2
SMCTIF2:
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	isUnitInVisionRange
	cmpl	$1, %eax
	je		SMCSKIP2
	movq	$-1, -40(%rbp)
SMCSKIP2:	
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movl	%eax, 11816(%rdi)
SMCEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Select Unit
# Params:
# RDI: int u
# RSI: game_state *state
.global selectUnit
selectUnit:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	
	cmpl	$-1, %edi
	jne		SUELSE
	movl	$0, 11836(%rsi)
	movl	$-1, 11812(%rsi)
	jmp		SUEND	
SUELSE:
	movl	%edi, 11812(%rsi)
	movl	$0, 11836(%rsi)
	imul	$12, %rdi
	movq	%rdi, %rax
	addq	$10192, %rax
	addq	%rsi, %rax
	movq	%rsi, %rdx
	movq	$0, %rdi
	movq	$0, %rsi
	movb	2(%rax), %dil
	movb	3(%rax), %sil
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	imul	$12, %rdi
	addq	-16(%rbp), %rdi
	addq	$10192, %rdi
	cmpb	$0, 4(%rdi)
	jne		SUEND
	movq	-16(%rbp), %rdi
	movl	$3, 11836(%rdi)

SUEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Step
# Params:
# RDI:game_state *state
.global step
step:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi

	movq	$0, %rax
	movl	11812(%rdi), %eax
	pushq	%rax
	
	cmpl	$-1, 11812(%rdi)
	jne		STEPLOOP
	movq	$0, %rax
	movq	%rax, -16(%rbp)

STEPLOOP:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	$0, %rsi
	movl	11808(%rdi), %esi
	shlq	%rsi
	cmpq	%rsi, %rax
	jg		STEPEND	
	incq	%rax	
	movq	%rax, -16(%rbp)

	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movq	$0, %rax
	movl	11808(%rsi), %eax
	movq	%rax, %rsi
	addq	%rsi, %rdi
STEPMODLOOP:
	subq	%rsi, %rdi
	cmpq	%rsi, %rdi
	jge		STEPMODLOOP
	movq	%rdi, %rax
	
	movq	-8(%rbp), %rdi
	pushq	%rax
	imul	$12, %rax
	addq	%rdi, %rax
	addq	$10192, %rax
	movq	$0, %rsi
	movl	11800(%rdi), %esi
	cmpb	%sil, 5(%rax)
	jne		STEPLOOP
	popq	%rdi
	movq	-8(%rbp), %rsi
	call	selectUnit
	jmp		STEPEND

STEPEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret


# Move Selected Unit
# Params:
# RDI: game_state *state
.global moveSelectedUnit
moveSelectedUnit:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	movq	%rdi, %rdx
	movq	$0, %rdi
	movq	$0, %rsi
	movl	11820(%rdx), %edi
	movl	11824(%rdx), %esi
	call	findUnit
	cmpq	$-1, %rax
	jne		MSUSKIP
	
	movq	-8(%rbp), %rax
	movq	$0, %rdi
	movl	11812(%rax), %edi
	imul	$12, %rdi
	addq	%rax, %rdi
	addq	$10192, %rdi
	movq	$0, %rsi
	movl	11832(%rax), %esi
	cmpb	8(%rdi), %sil
	jg		MSUELSE
	subb	%sil, 8(%rdi)
	movb	11820(%rax), %sil
	movb	%sil, 2(%rdi)
	movb	11824(%rax), %sil
	movb	%sil, 3(%rdi)
	movq	$0, %rsi
	movq	$0, %rdi
	movq	%rax, %rdx
	movl	11820(%rdx), %edi
	movl	11824(%rdx), %esi
	call 	setMoveCursor
	movq	-8(%rbp), %rsi
	movq	$0, %rdi
	movl	11800(%rsi), %edi
	call	updateEssenceGeneration
	jmp		MSUEND
MSUELSE:
	movq	$NEMP, %rdi
	movq	-8(%rbp), %rsi
	movss	FTHREE, %xmm0
	call	alertMessage
	jmp		MSUEND

MSUSKIP:
	movq	$CMT, %rdi
	movq	-8(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage

MSUEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Attack Selected Unit
# Params:
# RDI: game_state *state
.global attackSelectedUnit
attackSelectedUnit:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	movq	%rdi, %rdx
	movq	$0, %rdi
	movq	$0, %rsi
	movl	11820(%rdx), %edi
	movl	11824(%rdx), %esi
	call	findUnit
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	$0, %rsi
	movl	11812(%rdi), %esi
	imul	$12, %rsi
	addq	%rdi, %rsi
	addq	$10192, %rsi
	pushq	%rsi
	cmpl	$-1, -16(%rbp)
	je		ASUEND
	movq	-16(%rbp), %rdi
	imul	$12, %rdi
	addq	-8(%rbp), %rdi
	addq	$10192, %rdi
	pushq	%rdi
	movq	-24(%rbp), %rsi
	movb	5(%rdi), %al
	cmpb	%al, 5(%rsi)
	je		ASUEND
	cmpb	$0, 8(%rsi)
	jle		ASUEND
	movb	6(%rsi), %al
	movq	-8(%rbp), %rdx
	cmpb	%al, 11832(%rdx)
	jg		ASUEND
	movq	$1, %rax
ASUDMOD1:
	movq	-24(%rbp), %rdi
	cmpb	$3, 4(%rdi)
	jne		ASUDMOD2
	movq	-32(%rbp), %rdi
	cmpb	$5, 4(%rdi)
	jne		ASUDMODEND
	movq	$2, %rax
	jmp		ASUDMODEND
ASUDMOD2:
	movq	-24(%rbp), %rdi
	cmpb	$4, 4(%rdi)
	jne		ASUDMOD3
	movq	-32(%rbp), %rdi
	cmpb	$3, 4(%rdi)
	jne		ASUDMODEND
	movq	$2, %rax
	jmp		ASUDMODEND
ASUDMOD3:
	movq	-24(%rbp), %rdi
	cmpb	$5, 4(%rdi)
	jne		ASUDMODEND
	movq	-32(%rbp), %rdi
	cmpb	$4, 4(%rdi)
	jne		ASUDMODEND
	movq	$2, %rax
	jmp		ASUDMODEND

ASUDMODEND:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	$0, %rdx
	movb	7(%rsi), %dl
	imul	%rax, %rdx
	subb	%dl, (%rdi)
	cmpb	$0, (%rdi)
	jg		ASUPREEND
	cmpb	$0, 4(%rdi)
	jne		ASUFIF
	movq	-8(%rbp), %rdi
	movl	$1, 11864(%rdi)
	movq	$GAMEOVER, %rdi
	movq	-8(%rbp), %rsi
	movss	F100000, %xmm0	
	call	alertMessage
	movq	-8(%rbp), %rdi
	movl	$0, 11836(%rdi)
	movq	$-1, %rdi
	movq	-8(%rbp), %rsi
	call	selectUnit
	movq	-8(%rbp), %rdi
	movq	$0, 11828(%rdi)

ASUFIF:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	call	removeUnit

ASUPREEND:
	movq	-24(%rbp), %rdi
	movb	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	call	step

ASUEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Clamp Map Offset
# Params:
# RDI: game_state *state
.global clampMapOffset
clampMapOffset:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	movss	11760(%rdi), %xmm0
	movss	11776(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe		CMO1
	movss	%xmm1, 11760(%rdi)
CMO1:
	movss	11768(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jae		CMO2
	movss	%xmm1, 11760(%rdi)
CMO2:
	movss	11764(%rdi), %xmm0
	movss	11780(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe		CMO3
	movss	%xmm1, 11764(%rdi)
CMO3:
	movss	11772(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jae		CMO4
	movss	%xmm1, 11764(%rdi)
CMO4:

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Clamp Hex Size
# Params:
# RDI: game_state *state
.global clampHexSize
clampHexSize:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	movss	11784(%rdi), %xmm0
	movss	11792(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe		CHS1
	movss	%xmm1, 11784(%rdi)
CHS1:
	movss	11788(%rdi), %xmm1
	ucomiss	%xmm1, %xmm0
	jae		CHS2
	movss	%xmm1, 11784(%rdi)
CHS2:

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Process Input 
# Params:
# RDI: input_pressed *input
# RSI: game_state *state
.global processInput
processInput:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	pushq	%rsi

	movq	$0, %rax
	movl	11836(%rsi), %eax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	$PITEST, %rdi
	call	printf
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

	cmpb	$30, 7(%rdi)
	jl		PIESC
	movl	$1, 11868(%rsi)
PIESC:

	cmpl	$1, 11864(%rsi)
	je		PIEND

	cmpb	$0, 18(%rdi)
	je		PIHELSE
	movl	$1, 11840(%rsi)
	jmp		PIH
PIHELSE:
	movl	$0, 11840(%rsi)
PIH:
	cmpb	$0, 2(%rdi)
	je		PISCTRL
	cmpb	$0, 17(%rdi)
	je		PISCTRL
	movb	$0, 2(%rdi)
PISCTRL:

	cmpb	$0, 23(%rdi)
	je		PISAVE
	cmpb	$0, 17(%rdi)
	je		PISAVE
	movq	%rsi, %rdi
	call	saveState
	movq	$SAVE, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
PISAVE:

	cmpb	$0, 16(%rdi)
	je		PILOAD
	cmpb	$0, 17(%rdi)
	je		PILOAD
	movq	%rsi, %rdi
	call	loadState
	movq	$LOAD, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
PILOAD:

	cmpl	$4, 11836(%rsi)
	jne		PIMODETRANS
	cmpb	$0, 26(%rdi)
	je		PIMODEEND
	movl	$0, 11836(%rsi)
	jmp		PIMODEEND
PIMODETRANS:
	cmpl	$0, 11836(%rsi)
	jne		PIMODENORM
	cmpb	$0, 19(%rdi)
	je		PINLMB
	movss	NFIVE, %xmm2
	movsd	FP0022, %xmm0
	movsd	64(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
cvtsd2ss	%xmm1, %xmm1
	movss	11760(%rsi), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, 11760(%rsi)
	movsd	72(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
cvtsd2ss	%xmm1, %xmm1
	movss	11764(%rsi), %xmm2
	subss	%xmm1, %xmm2
	movss	%xmm2, 11764(%rsi)
PINLMB:

	cmpb	$0, (%rdi)
	je		PINW
	movss	11764(%rsi), %xmm0
	movsd	11856(%rsi), %xmm1
cvtsd2ss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 11764(%rsi)
PINW:

	cmpb	$0, 1(%rdi)
	je		PINA
	movss	11760(%rsi), %xmm0
	movsd	11856(%rsi), %xmm1
cvtsd2ss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 11760(%rsi)
PINA:

	cmpb	$0, 2(%rdi)
	je		PINS
	movss	11764(%rsi), %xmm0
	movsd	11856(%rsi), %xmm1
cvtsd2ss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 11764(%rsi)
PINS:

	cmpb	$0, 3(%rdi)
	je		PIND
	movss	11760(%rsi), %xmm0
	movsd	11856(%rsi), %xmm1
cvtsd2ss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 11760(%rsi)
PIND:

	cmpb	$0, 26(%rdi)
	je		PINRET
	movq	-16(%rbp), %rdi
	call	turn
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
PINRET:
	jmp		PIMODEEND
PIMODENORM:
	
	cmpl	$1, 11836(%rsi)
	jne		PIMODEMOVE
	cmpb	$0, 27(%rdi)
	jne		PIMSE
	cmpb	$0, 40(%rdi)
	jne		PIMSE
	jmp		PIMODEEND
PIMSE:
	
	movq	-16(%rbp), %rdi
	call	moveSelectedUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$0, %rax
	movl	11812(%rsi), %eax
	imul	$12, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	cmpb	$0, 8(%rax)
	jne		PIMODEEND
	movq	-16(%rbp), %rdi
	call	step
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	jmp		PIMODEEND
PIMODEMOVE:

	cmpl	$2, 11836(%rsi)
	jne		PIMODEATK
	cmpb	$0, 27(%rdi)
	jne		PIASU
	cmpb	$0, 40(%rdi)
	jne		PIASU
	jmp		PIMODEEND
PIASU:
	movq	-16(%rbp), %rdi
	call	attackSelectedUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$0, %rax
	movl	11812(%rsi), %eax
	imul	$12, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	cmpb	$0, 8(%rax)
	jne		PIMODEEND
	movq	-16(%rbp), %rdi
	call	step
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi	
	jmp		PIMODEEND
PIMODEATK:

	cmpl	$3, 11836(%rsi)
	jne		PIMODEBUILD
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	%rsi, %rax
	movq	$0, %rdi
	movq	$0, %rsi
	movl	12(%rax), %edi
	movl	16(%rax), %esi
	movq	-16(%rbp), %rdx
	call	findUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	
	cmpq	$-1, %rax
	jne		PIBSTO
	
	cmpb	$0, 33(%rdi)
	jne		PIB1
	cmpb	$0, 34(%rdi)
	jne		PIB2
	cmpb	$0, 35(%rdi)
	jne		PIB3
	jmp		PIBAP

PIB1:
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	%rsi, %rax
	cmpl	$50, (%rax)
	jl		PIB1NEE
	movq	$0, %rsi
	movq	$0, %rdi
	movl	12(%rax), %edi
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movq	$0, %rdx
	movl	11800(%rax), %edx
	movq	-16(%rbp), %rcx
	call	createWisp
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	-16(%rbp), %rax
	subl	$50, (%rax)	
	jmp		PIMODEEND

PIB1NEE:
	movq	$NEESSENCE, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	jmp		PIMODEEND

PIB2:
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	%rsi, %rax
	cmpl	$100, (%rax)
	jl		PIB2NEE
	movq	$0, %rsi
	movq	$0, %rdi
	movl	12(%rax), %edi
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movq	$0, %rdx
	movl	11800(%rax), %edx
	movq	-16(%rbp), %rcx
	call	createGolem
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	-16(%rbp), %rax
	subl	$100, (%rax)	
	jmp		PIMODEEND

PIB2NEE:
	movq	$NEESSENCE, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	jmp		PIMODEEND

PIB3:	
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	%rsi, %rax
	cmpl	$100, (%rax)
	jl		PIB3NEE
	movq	$0, %rsi
	movq	$0, %rdi
	movl	12(%rax), %edi
	movl	16(%rax), %esi
	movq	-16(%rbp), %rax
	movq	$0, %rdx
	movl	11800(%rax), %edx
	movq	-16(%rbp), %rcx
	call	createUnboundElemental
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	$0, %rax
	movl	11800(%rsi), %eax
	imul	$24, %rax
	addq	$10000, %rax
	addq	-16(%rbp), %rax
	subl	$100, (%rax)	
	jmp		PIMODEEND

PIB3NEE:
	movq	$NEESSENCE, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	jmp		PIMODEEND
	
PIBSTO:
	cmpb	$0, 33(%rsi)
	jne		PIBSTOM
	cmpb	$0, 34(%rsi)
	jne		PIBSTOM
	cmpb	$0, 35(%rsi)
	jne		PIBSTOM
	jmp		PIBAP
PIBSTOM:
	movq	$STO, %rdi
	movq	-16(%rbp), %rsi
	movss	FTWO, %xmm0
	call	alertMessage
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
PIBAP:
	
	cmpb	$0, 36(%rdi)
	je		PIMODEBUILD
	movq	-16(%rbp), %rdi
	call	startArcanePulse
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PIMODEBUILD:
PIMODEEND:

	cmpl	$2, 11836(%rsi)
	jg		PIMODESWITCH
	cmpl	$-1, 11812(%rsi)
	je		PIMODESWITCH
	cmpb	$0, 31(%rdi)
	je		PIV
	movl	$1, 11836(%rsi)	
PIV:
	cmpb	$0, 29(%rdi)
	je		PIMODESWITCH	
	movl	$2, 11836(%rsi)

PIMODESWITCH:
	cmpl	$4, 11836(%rsi)
	je		PIDESELECT
	cmpb	$0, 28(%rdi)
	je		PIDESELECT
	movq	$-1, %rdi
	movq	-16(%rbp), %rsi
	call	selectUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$0, 11828(%rsi)
PIDESELECT:

	cmpb	$0, 25(%rdi)
	je		PISTEP
	movq	-16(%rbp), %rdi
	call	step
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
PISTEP:
	
	cmpl	$1, 11836(%rsi)
	je		PISMC
	cmpl	$2, 11836(%rsi)
	je		PISMC
	jmp		PIGBS
PISMC:
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movsd	48(%rdi), %xmm0
	movsd	56(%rdi), %xmm1
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	call	mouseCoordsToViewport
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movss	-24(%rbp), %xmm0
	movss	-32(%rbp), %xmm1
	movss	11760(%rsi), %xmm2
	movss	11764(%rsi), %xmm3
	movss	11784(%rsi), %xmm4
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	viewportToHexGrid
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cmpb	$0, 21(%rdi)
	je		PIMCW
	movq	$0, %rax
	movl	11824(%rsi), %eax
	incq	%rax
	movq	%rax, %rsi
	andq	$1, %rax
	movq	-16(%rbp), %rdi
	addq	$11820, %rdi
	movq	$0, %rdx
	movl	(%rdi), %edx
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	-16(%rbp), %rdx
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PIMCW:
	cmpb	$0, 22(%rdi)
	je		PIMCA
	movq	$0, %rax
	movl	11824(%rsi), %eax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	addq	$11820, %rdi
	movq	$0, %rax
	movl	(%rdi), %eax
	movq	%rax, %rdi
	decq	%rdi
	movq	-16(%rbp), %rdx
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PIMCA:
	cmpb	$0, 23(%rdi)
	je		PIMCS
	movq	$0, %rax
	movl	11824(%rsi), %eax
	movq	%rax, %rsi
	decq	%rsi
	andq	$1, %rax
	movq	-16(%rbp), %rdi
	addq	$11820, %rdi
	movq	$0, %rdx
	movl	(%rdi), %edx
	movq	%rdx, %rdi
	addq	%rax, %rdi
	movq	-16(%rbp), %rdx
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PIMCS:
	cmpb	$0, 24(%rdi)
	je		PIMCD
	movq	$0, %rax
	movl	11824(%rsi), %eax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	addq	$11820, %rdi
	movq	$0, %rax
	movl	(%rdi), %eax
	movq	%rax, %rdi
	incq	%rdi
	movq	-16(%rbp), %rdx
	call	setMoveCursor
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PIMCD:
PIGBS:
	cmpl	$1, 11836(%rsi)
	je		PILCLICK
	cmpl	$2, 11836(%rsi)
	je		PILCLICK
	cmpl	$4, 11836(%rsi)
	je		PILCLICK
	cmpb	$0, 40(%rdi)
	je		PILCLICK
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movsd	48(%rdi), %xmm0
	movsd	56(%rdi), %xmm1
cvtsd2ss	%xmm0, %xmm0
cvtsd2ss	%xmm1, %xmm1
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	call	mouseCoordsToViewport
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movss	-24(%rbp), %xmm0
	movss	-32(%rbp), %xmm1
	movss	11760(%rsi), %xmm2
	movss	11764(%rsi), %xmm3
	movss	11784(%rsi), %xmm4
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	viewportToHexGrid
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	call	findUnit
	cmpq	$-1, %rax
	je		PILCLKELSE
	pushq	%rax
	imul	$12, %rax
	addq	$10192, %rax
	addq	-16(%rbp), %rax
	movq	-16(%rbp), %rsi
	movb	5(%rax), %al
	cmpb	%al, 11800(%rsi)
	jne		PILCLKELSE
	popq	%rdi
	movq	-16(%rbp), %rsi
	call	selectUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	jmp 	PILCLICK

PILCLKELSE:
	movq	$-1, %rdi
	movq	-16(%rbp), %rsi
	call	selectUnit
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi

PILCLICK:
	movss	FPOONE, %xmm0
	movsd	80(%rdi), %xmm1
cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	movss	11784(%rsi), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 11784(%rsi)
	movsd	DZERO, %xmm0 
	movsd	%xmm0, 80(%rdi)
	movss	11784(%rsi), %xmm0
	divss	TENTH, %xmm0
	mulss	NFIVE, %xmm0
	movss	%xmm0, 11768(%rsi)
	divss	FTWO, %xmm0
	movss	%xmm0, 11772(%rsi)
	movq	-16(%rbp), %rdi
	call	clampHexSize
	movq	-16(%rbp), %rdi
	call	clampMapOffset

PIEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Generate Test Map
# Params:
# RDI: game_state *state
.global generateTestMap
generateTestMap:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	movl	$20, 11752(%rdi)
	movl	$20, 11756(%rdi)
	movq	$19, %rdx
GTMILOOP:
	movq	%rdx, %rsi
	imul	$100, %rsi
	movq	$19, %rcx
GTMJLOOP:
	addq	%rcx, %rsi
	addq	%rdi, %rsi
	movb	$1, (%rsi)
	subq	%rdi, %rsi
	subq	%rcx, %rsi
	decq	%rcx
	cmpq	$0, %rcx
	jge		GTMJLOOP

	decq	%rdx
	cmpq	$0, %rdx
	jge		GTMILOOP

	movb	$0, (%rdi)
	movb	$0, 1(%rdi)
	movb	$0, 100(%rdi)
	movb	$0, 1919(%rdi)
	movb	$0, 1819(%rdi)
	movb	$0, 1918(%rdi)
	movb	$2, 303(%rdi)
	movb	$2, 108(%rdi)
	movb	$2, 801(%rdi)
	movb	$2,	1616(%rdi)
	movb	$2, 1811(%rdi)
	movb	$2,	1118(%rdi)
	movb	$4, 316(%rdi)
	movb	$5, 514(%rdi)
	movb	$6, 712(%rdi)
	movq	%rdi, %rcx
	movq	$1, %rdi
	movq	$1, %rsi
	movq	$0, %rdx
	call	createWorkshop
	movq	-8(%rbp), %rdi
	movl	$1, 10012(%rdi)
	movl	$2, 10016(%rdi)
	movl	$18, 10036(%rdi)
	movl	$17, 10040(%rdi)
	movq	%rdi, %rcx
	movq	$2, %rdi
	movq	$0, %rsi
	movq	$0, %rdx
	call	createGolem
	movq	$18, %rdi
	movq	$18, %rsi
	movq	$1, %rdx
	movq	-8(%rbp), %rcx
	call	createWorkshop	
	movq	$19, %rdi
	movq	$17, %rsi
	movq	$1, %rdx
	movq	-8(%rbp), %rcx
	call	createGolem

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret
