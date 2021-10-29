.text
FZERO:		.float 0.0
FTWELVE:	.float 12.0


# Load Texture
# Params:
# RDI: *texture_location
.global loadTexture
loadTexture:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	movq	$1, %rdi
	call	stbi_set_flip_vertically_on_load
	popq	%rdi
	subq	$24, %rsp
	leaq	(%rsp), %rsi
	leaq	8(%rsp), %rdx
	leaq	16(%rsp), %rcx
	movq	$0, %r8
	call	stbi_load

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Load Subtexture Bounds
# Params:
# RDI: int texture_index
.global	loadSubtextureBounds
loadSubtextureBounds:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	movq	$16, %rdi
	call	malloc
	popq	%rdi
cvtsi2ssq	%rdi, %xmm0
	movss	FONE, %xmm1
	movss	FTWELVE, %xmm2
	divss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movss	FZERO, %xmm1
	movss	%xmm1, 4(%rax)
	movss	FONE, %xmm0
	movss	FTWELVE, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	movss	FONE, %xmm0
	movss	%xmm0, 12(%rax)
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret
