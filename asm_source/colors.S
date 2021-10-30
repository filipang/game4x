#define BLACK		0
#define COLORLESS	0
#define WHITE		1
#define PURPLE		2
#define ORANGE		3
#define	DARK_GREY	4
#define	LIGHT_GREY	5
#define GREEN		6
#define YELLOW		7
#define RED			8
#define PINK		9
#define CYAN		10
#define BLUE		11

.data
F00: .float 0.0
F10: .float 1.0
F55: .float 0.55
F15: .float 0.15
F05: .float 0.5
F08: .float 0.8
F04: .float 0.4
F02: .float 0.2
F35: .float 0.35
F01: .float 0.1
F66: .float 0.66
F09: .float 0.9
F03: .float 0.3
F07: .float 0.7
F95: .float 0.95
.text
.global loadColors
loadColors:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	subq	$8, %rsp
	movq	$216, %rdi
	call malloc
	
	#define MOVFL(ra, rb) movss ra, %xmm0; \
						  movss %xmm0, rb;
	MOVFL(F00, 0(%rax))
	MOVFL(F00, 4(%rax))
	MOVFL(F00, 8(%rax))

	MOVFL(F10, 12(%rax))
	MOVFL(F10, 16(%rax))
	MOVFL(F10, 20(%rax))

	MOVFL(F55, 24(%rax))
	MOVFL(F15, 28(%rax))
	MOVFL(F05, 32(%rax))
	
	MOVFL(F08, 36(%rax))
	MOVFL(F04, 40(%rax))
	MOVFL(F02, 44(%rax))

	MOVFL(F15, 48(%rax))
	MOVFL(F15, 52(%rax))
	MOVFL(F15, 56(%rax))

	MOVFL(F35, 60(%rax))
	MOVFL(F35, 64(%rax))
	MOVFL(F35, 68(%rax))

	MOVFL(F01, 72(%rax))
	MOVFL(F66, 76(%rax))
	MOVFL(F01, 80(%rax))

	MOVFL(F09, 84(%rax))
	MOVFL(F09, 88(%rax))
	MOVFL(F03, 92(%rax))

	MOVFL(F08, 96(%rax))
	MOVFL(F02, 100(%rax))
	MOVFL(F02, 104(%rax))

	MOVFL(F10, 108(%rax))
	MOVFL(F05, 112(%rax))
	MOVFL(F08, 116(%rax))

	MOVFL(F02, 120(%rax))
	MOVFL(F07, 124(%rax))
	MOVFL(F95, 128(%rax))

	MOVFL(F01, 132(%rax))
	MOVFL(F01, 136(%rax))
	MOVFL(F95, 140(%rax))

	addq	$8, %rsp
	popq	%rdi
	movq	%rax, (%rdi)
	movq	%rbp, %rsp
	popq	%rbp
	ret

.global getUnitTeamColor
getUnitTeamColor:
	pushq	%rbp
	movq	%rsp, %rbp

	cmpq	$0, %rdi
	je		CASE0
	cmpq	$1,	%rdi
	je		CASE1
	jne		CASE2
CASE0:	
	movq	$PURPLE, %rax
	jmp		ENDGTC				
CASE1:
	movq	$ORANGE, %rax
	jmp		ENDGTC
CASE2:
	movq	$PINK, %rax
	jmp		ENDGTC

ENDGTC:
	movq	%rbp, %rsp
	popq	%rbp
	ret
