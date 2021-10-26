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
# RSI: *game_state
#
#.global removeUnit
removeUnit:
# prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rsi
	addq	$11808, %rsi
	movq	$0, %rax
	movl	(%rsi), %eax
	decq	%rax
	movq	$12, %r10
	mulq	%r10
	addq	%rsi, %rax
	popq	%rsi
RULOOP:



# epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

