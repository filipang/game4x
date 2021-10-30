#define UNIT_WORKSHOP			0
#define UNIT_GOLEM				1
#define UNIT_WISP				2
#define UNIT_UNBOUND_ELEMENTAL	3
#define UNIT_FIRE_ELEMENTAL		4
#define UNIT_WATER_ELEMENTAL	5
#define UNIT_ICE_ELEMENTAL		6
#define	UNIT_ARCANE_ELEMENTAL	7
#define UNIT_ARCANE_PULSE		8


 .text
	MESSAGE2: .asciz "unit count: %d; index: %d\n"

.global createUnit 
# Create Unit
# Params:
# RDI: int position_x 
# RSI: int position_y
# RDX: *game_state
#
createUnit:
# prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
# parsing state->units[state->unit_count]
	pushq	%rdx
	addq	$11808, %rdx
	movq	$0, %rax
	movl	(%rdx), %eax
	movq	$12, %r10
	mulq	%r10
	movq	-8(%rbp), %rdx
	addq	$10192, %rdx
	addq	%rax, %rdx
	addq	$2, %rdx
# state->units[state->unit_count].position_x = position_x
	movb	%dil, (%rdx)
	incq	%rdx
# state->units[state->unit_count].position_y = position_y
	movb	%sil, (%rdx)

	popq	%rdx
	addq	$11808, %rdx
	movq	$0, %rax
	movl	(%rdx), %eax
	incl	(%rdx)	
# epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Remove Unit
# Params:
# RDI: int index
# RSI: game_state *state
#
.global removeUnit
removeUnit:
# prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rsi
	addq	$11808, %rsi

	movq	$0, %r10
	decl	(%rsi)
	movl	(%rsi), %r10d

	imul	$12, %r10
	
	movq	-8(%rbp), %rsi
	addq	$10192, %rsi
	addq	%rsi, %r10

	popq	%rsi
	addq	$10192, %rsi

	imul	$12, %rdi

	addq	%rdi, %rsi
	movq	$0, %rax
RULOOP:
	movb	12(%rsi), %al
	movb	%al, (%rsi)

	incq	%rsi
	cmpq	%r10, %rsi
	jl	RULOOP
# epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global findUnit
# Find Unit
# Params:
# RDI: int position x
# RSI: int position y
# RDX: game_state* state
#
findUnit:
# Prologue	
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%r10
	pushq	%rdx
	addq	$11808, %rdx
	movq	$0, %r10
	movl	(%rdx), %r10d
	movq	$0, %rax
	popq	%rdx
	addq	$10194, %rdx
FULOOP:
	cmpb	(%rdx), %dil
	jne		XNE
	incq	%rdx
	cmpb	(%rdx), %sil
	jne		YNE
	jmp		FUEND
XNE:
	incq	%rax
	addq	$12, %rdx
	cmpq	%r10, %rax
	jl		FULOOP
	movq	$-1, %rax
	jmp 	FUEND
YNE:
	incq	%rax
	addq	$11, %rdx
	cmpq	%r10, %rax
	jl		FULOOP
	movq	$-1, %rax
	jmp 	FUEND
FUEND:
	popq	%r10
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createWorkshop
# Create Workshop
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createWorkshop:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$80, (%rcx)
	incq	%rcx
	# hp max
	movb	$80, (%rcx)
	addq	$3, %rcx
	# type
	movb	$0, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$0, (%rcx)
	incq	%rcx
	# damage
	movb	$0, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$0, (%rcx)
	incq	%rcx
	# vision
	movb	$1, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createGolem
# Create Golem
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createGolem:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$30, (%rcx)
	incq	%rcx
	# hp max
	movb	$30, (%rcx)
	addq	$3, %rcx
	# type
	movb	$1, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$2, (%rcx)
	incq	%rcx
	# damage
	movb	$10, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$4, (%rcx)
	incq	%rcx
	# vision
	movb	$2, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createWisp
# Create Wisp
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createWisp:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$10, (%rcx)
	incq	%rcx
	# hp max
	movb	$10, (%rcx)
	addq	$3, %rcx
	# type
	movb	$2, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$2, (%rcx)
	incq	%rcx
	# damage
	movb	$5, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$6, (%rcx)
	incq	%rcx
	# vision
	movb	$3, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createUnboundElemental
# Create Unbound Elemental
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createUnboundElemental:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$20, (%rcx)
	incq	%rcx
	# hp max
	movb	$20, (%rcx)
	addq	$3, %rcx
	# type
	movb	$3, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$2, (%rcx)
	incq	%rcx
	# damage
	movb	$10, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$4, (%rcx)
	incq	%rcx
	# vision
	movb	$3, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createFireElemental
# Create Fire Elemental
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createFireElemental:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$60, (%rcx)
	incq	%rcx
	# hp max
	movb	$60, (%rcx)
	addq	$3, %rcx
	# type
	movb	$4, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$2, (%rcx)
	incq	%rcx
	# damage
	movb	$20, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$3, (%rcx)
	incq	%rcx
	# vision
	movb	$2, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createWaterElemental
# Create Water Elemental
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createWaterElemental:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$20, (%rcx)
	incq	%rcx
	# hp max
	movb	$20, (%rcx)
	addq	$3, %rcx
	# type
	movb	$5, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$3, (%rcx)
	incq	%rcx
	# damage
	movb	$30, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$3, (%rcx)
	incq	%rcx
	# vision
	movb	$3, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createIceElemental
# Create Ice Elemental
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createIceElemental:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$40, (%rcx)
	incq	%rcx
	# hp max
	movb	$40, (%rcx)
	addq	$3, %rcx
	# type
	movb	$6, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$1, (%rcx)
	incq	%rcx
	# damage
	movb	$20, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$6, (%rcx)
	incq	%rcx
	# vision
	movb	$3, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global createArcaneElemental
# Create Arcane Elemental
# Params:
# RDI: INT POS X
# RSI: INT POS Y
# RDX: INT TEAM
# RCX: game_state *state
createArcaneElemental:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdx
	call createUnit
	
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	imul	$12, %rax
	addq	$10192, %rcx
	addq	%rax, %rcx
	# hp
	movb	$150, (%rcx)
	incq	%rcx
	# hp max
	movb	$150, (%rcx)
	addq	$3, %rcx
	# type
	movb	$7, (%rcx)
	incq	%rcx
	# team
	movb	%dl, (%rcx)
	incq	%rcx
	# range
	movb	$3, (%rcx)
	incq	%rcx
	# damage
	movb	$80, (%rcx)
	incq	%rcx
	# mp
	movb	$0, (%rcx)
	incq	%rcx
	# mp max
	movb	$4, (%rcx)
	incq	%rcx
	# vision
	movb	$6, (%rcx)
	incq	%rcx
	# rotation
	movb	$0, (%rcx)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret


