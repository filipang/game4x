
.data
ZERO: 	.float 0.0
THREE:	.float 3.0
TWO:	.float 2.0
HALF:	.float 0.5
NHALF:	.float -0.5
.text

# Params:
# %rdi - position_x
# %rsi - position_y
# %rdx - cursor_x
# %rcx - cursor_y
# Params end
# xmm0 - result_y
# xmm1 - result_x
# xmm2 - misc and result_ratio
# xmm3 - misc nr 2

.global calculateRotation
calculateRotation:
	pushq	%rbp
	movq	%rsp, %rbp

	subq	%rsi, %rcx # result_y = cursor_y - position_y
	subq	%rdi, %rdx # result_x = cursor_x - position_x
	
	# XMM0 = (float) result_y
cvtsi2ssq	%rcx, %xmm0 

	# XMM1 = (float) result_x
cvtsi2ssq	%rdx, %xmm1 

	# result_y = result_y / 2
	divss	TWO, %xmm0

	# result_x += result_y
	addss	%xmm0, %xmm1

	# result_y *= sqrt(3)
	sqrtss	THREE, %xmm2
	mulss	%xmm2, %xmm0	 

	# xmm2 = result_ratio = result_y / result_x
	movss	%xmm0, %xmm2
	divss	%xmm1, %xmm2
IF1:
	ucomiss	HALF, %xmm2
	jb		IF2
	ucomiss	ZERO, %xmm0
	jb		IF2
	jmp		RET0
IF2:
	ucomiss	HALF, %xmm2
	jae		IF3
	ucomiss	NHALF, %xmm2
	jb		IF3
	ucomiss	ZERO, %xmm1
	jb		IF3
	jmp		RET1
IF3:
	ucomiss	NHALF, %xmm2
	jae		IF4
	ucomiss	ZERO, %xmm1
	jb		IF4
	jmp		RET2
IF4:
	ucomiss HALF, %xmm2
	jb		IF5
	ucomiss	ZERO, %xmm0
	ja		IF5
	jmp		RET3
IF5:
	ucomiss	HALF, %xmm2
	jae		RET5
	ucomiss	NHALF, %xmm2
	jb		RET5
	ucomiss	ZERO, %xmm1
	ja		RET5
	jmp		RET4

RET0:
	movq	$0, %rax
	jmp 	END
RET1:
	movq	$1, %rax
	jmp		END
RET2:
	movq	$2, %rax
	jmp		END
RET3:
	movq	$3, %rax
	jmp		END
RET4:
	movq	$4, %rax
	jmp		END
RET5:
	movq	$5, %rax
	jmp		END

END:
	movq	%rbp, %rsp
	popq	%rbp
	ret
	


# Params:
# %rdi - x1
# %rsi - y1
# %rdx - x2
# %rcx - y2
# Params end
# %r12 - abs(x1-x2)
# %r13 - abs(y1-y2)
# %r14 - abs(x1 + y1 - x2 - y2)
.global hexDistance
hexDistance:
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp, %rbp

	#x1 - x2
	movq	%rdi, %r12
	subq	%rdx, %r12

	#y1 - y2
	movq	%rsi, %r13
	subq	%rcx, %r13

	#x1 + y1 - x2 - y2
	movq	%rdi, %r14
	addq	%rsi, %r14
	subq	%rcx, %r14
	subq	%rdx, %r14

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	
	movq	%r12, %rdi
	call	abs
	movq	%rax, %r12

	movq	%r13, %rdi
	call	abs
	movq	%rax, %r13

	movq	%r14, %rdi
	call	abs
	movq	%rax, %r14
 
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	
	movq	%r12, %rax
	addq	%r13, %rax
	addq	%r14, %rax
	shrq	$1, %rax

	movq	%rbp, %rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	ret
