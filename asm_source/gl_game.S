.data

.text
FP2:	.FLOAT  0.2
FP15:	.FLOAT 0.15
FPNINE:	.float	0.9
TEX: 	.asciz	"tex.bmp"
NAME:	.asciz	"Bonus Assignment #8: Assembly Game"
FTCW:	.asciz	"Failed to create GLFW window"
SVERT:	.asciz	"shader.vert"
SFRAG:	.asciz	"shader.frag"
APOS:	.asciz	"aPos"
ACOL:	.asciz	"aCol"
ATC:	.asciz	"aTexCoord"
F3:		.float 3.0
F2:		.float	2.0
F001:	.float 1.0
F0:		.float	0.0
FP6:	.float	0.6
FP55:	.float	0.55
FP4:	.float	0.4
# initialize Graphics
# Params:
# RDI GLFWwindow **windwo
# RSI game_state *state
# RDX gl_game_state *gl_state
.global	initializeGraphics
initializeGraphics:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	subq	$8, %rsp
	movq	$TEX, %rdi
	call	loadTexture
	addq	$8, %rsp
	pushq	%rax

	movq	$GLFW_CONTEXT_VERSION_MAJOR, %rdi
	movq	$2, %rsi
	call	glfwWindowHint

	movq	$GLFW_CONTEXT_VERSION_MINOR, %rdi
	movq	$2, %rsi
	call	glfwWindowHint

	call	glfwInit

	movq	$GLFW_OPENGL_PROFILE, %rdi
	movq	$GLFW_OPENGL_ANY_PROFILE, %rsi
	call	glfwWindowHint

	movq	$900, %rdi
	movq	$900, %rsi
	movq	$NAME, %rdx
	movq	$0, %rcx
	movq	$0, %r8
	call	glfwCreateWindow

	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, %rax
	jne		IGELSE

	movq	$FTCW, %rdi
	movq	$0, %rax
	call	printf

	call	glfwTerminate
IGELSE:
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	call	glfwMakeContextCurrent

	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	$GLFW_STICKY_KEYS, %rsi
	movq	$GLFW_TRUE, %rdx
	call	glfwSetInputMode

	call	glewInit

	movq	$0, %rdi
	movq	$0, %rsi	
	movq	$900, %rdx
	movq	$900, %rcx
	call	glViewport
	
	subq	$16, %rsp
	movq	$SVERT, %rdi
	call	loadFile
	movq	%rax, -40(%rbp)

	movq	$SFRAG, %rdi
	call	loadFile
	movq	%rax, -48(%rbp)

	movq	$GL_VERTEX_SHADER, %rdi
	call	glCreateShader
	pushq	%rax
	
	movq	%rax, %rdi
	movq	$1, %rsi
	leaq	-40(%rbp), %rdx
	movq	$0, %rcx
	call	glShaderSource

	movq	-56(%rbp), %rdi
	call	glCompileShader

	movq	$GL_BLEND, %rdi
	call	glEnable

	movq	$GL_FRAGMENT_SHADER, %rdi
	call	glCreateShader

	pushq	%rax

	movq	%rax, %rdi
	movq	$1, %rsi
	leaq	-48(%rbp), %rdx
	movq	$0, %rcx
	call	glShaderSource

	movq	-64(%rbp), %rdi
	call	glCompileShader

	call	glCreateProgram
	movq	-24(%rbp), %rdi
	movl	%eax, 136(%rdi)
	
	movl	136(%rdi), %esi
	movq	$0, %rdi
	movl	%esi, %edi
	movq	-56(%rbp), %rsi
	call	glAttachShader
	
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	-64(%rbp), %rsi
	call	glAttachShader

	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	call	glLinkProgram
	
	movq	-40(%rbp), %rdi
	call	free
	movq	-48(%rbp), %rdi
	call	free
	movq	-56(%rbp), %rdi
	call	glDeleteShader
	movq	-64(%rbp), %rdi
	call	glDeleteShader

	movq	$1, %rdi
	movq	-24(%rbp), %rsi
	leaq	128(%rsi), %rsi
	call	glGenVertexArrays
	
	movq	$1, %rdi
	movq	-24(%rbp), %rsi
	leaq	132(%rsi), %rsi
	call	glGenBuffers

	movq	$1, %rdi
	movq	-24(%rbp), %rsi
	leaq	140(%rsi), %rsi
	call	glGenTextures

	movq	$GL_TEXTURE_2D, %rdi
	movq	-24(%rbp), %rdx
	movq	$0, %rsi
	movl	140(%rdx), %esi
	call	glBindTexture
	
	movq	$GL_TEXTURE_2D, %rdi
	movq	$GL_TEXTURE_WRAP_S, %rsi
	movq	$GL_REPEAT, %rdx
	call	glTexParameteri
	
	movq	$GL_TEXTURE_2D, %rdi
	movq	$GL_TEXTURE_WRAP_T, %rsi
	movq	$GL_REPEAT, %rdx
	call	glTexParameteri
	
	movq	$GL_TEXTURE_2D, %rdi
	movq	$GL_TEXTURE_MIN_FILTER, %rsi
	movq	$GL_LINEAR_MIPMAP_LINEAR, %rdx
	call	glTexParameteri
	
	movq	$GL_TEXTURE_2D, %rdi
	movq	$GL_TEXTURE_MAG_FILTER, %rsi
	movq	$GL_LINEAR, %rdx
	call	glTexParameteri

	movq	$GL_TEXTURE_2D, %rdi
	movq	$0, %rsi
	movq	$GL_RGBA, %rdx
	movq	$768, %rcx
	movq	$64, %r8
	movq	$0, %r9
	subq	$8, %rsp
	pushq	-32(%rbp)
	pushq	$GL_UNSIGNED_BYTE
	pushq	$GL_RGBA
	call	glTexImage2D
	addq	$32, %rsp	

	movq	$GL_TEXTURE_2D, %rdi
	call	glGenerateMipmap

	movq	$0, %rdi
	movq	-24(%rbp), %rsi
	movl	128(%rsi), %edi
	call	glBindVertexArray
	
	movq	$GL_ARRAY_BUFFER, %rdi
	movq	-24(%rbp), %rax
	movq	$0, %rsi
	movl	132(%rax), %esi
	call	glBindBuffer

	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	$APOS, %rsi
	call	glGetAttribLocation

	pushq	%rax

	movq	%rax, %rdi
	movq	$3, %rsi
	movq	$GL_FLOAT, %rdx
	movq	$GL_FALSE, %rcx
	movq	$40, %r8
	movq	$0, %r9
	call	glVertexAttribPointer

	movq	$0, %rdi
	call	glEnableVertexAttribArray

	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	$ACOL, %rsi
	call	glGetAttribLocation
	pushq	%rax

	movq	%rax, %rdi
	movq	$4, %rsi
	movq	$GL_FLOAT, %rdx
	movq	$GL_FALSE, %rcx
	movq	$40, %r8
	movq	$12, %r9
	call	glVertexAttribPointer

	movq	$1, %rdi
	call	glEnableVertexAttribArray

	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	movq	$ATC, %rsi
	call	glGetAttribLocation
	pushq	%rax
	

	movq	%rax, %rdi
	movq	$3, %rsi
	movq	$GL_FLOAT, %rdx
	movq	$GL_FALSE, %rcx
	movq	$40, %r8
	movq	$28, %r9
	call	glVertexAttribPointer
	
	movq	$2, %rdi
	call	glEnableVertexAttribArray

	movq	$GL_SRC_ALPHA, %rdi
	movq	$GL_ONE_MINUS_SRC_ALPHA, %rsi
	call	glBlendFunc

	
	movq	-24(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	call	glUseProgram

	movq	$GL_ARRAY_BUFFER, %rdi
	movq	$0, %rsi
	call	glBindBuffer
	
	movq	$0, %rdi
	call	glBindVertexArray

	movq	$GL_TEXTURE_2D, %rdi
	movq	$0, %rsi
	call	glBindTexture

	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rsi, (%rdi)

	leaq	88(%rdi), %rdi
	call	loadColors

	movq	$GL_LINE_SMOOTH, %rdi
	call	glEnable

		
	movss	F3, %XMM0
	call	glLineWidth

	movq	-24(%rbp), %rax
	leaq	112(%rax), %rdi
	leaq	120(%rax), %rsi
	call	initFreetype

	pushq	$0
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	initializeFontGL

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret
	
	
	
# Finalize Graphics
# Params:
# RDI: GLFWwindow *window
# RSI: gl_game_state *gl_state
.global	finalizeGraphics
finalizeGraphics:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	movq	$1, %rdi
	movq	%rsi, %rax
	leaq	128(%rax), %rsi
	call	glDeleteVertexArrays
	
	movq	$1, %rdi
	movq	-16(%rbp), %rax
	leaq	132(%rax), %rsi
	call	glDeleteBuffers

	movq	-16(%rbp), %rax
	movq	$0, %rdi
	movl	136(%rax), %edi
	call	glDeleteProgram
	
	movq	-8(%rbp), %rdi
	call	glfwDestroyWindow
	call	glfwTerminate

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Build Hexagon Vertices
# Params:
# XMM0: float offset_x
# XMM1: float offset_y
# XMM2: float z_index
# XMM3: float color_r
# XMM4: float color_b
# XMM5: float color_g
# XMM6: float color_a
# XMM7: float tex_x
# Stack 16: float tex_y
# Stack 24: float tex_weight
# Stack 32: float tex_width
# Stack 40: float tex_height
# Stack 48: float side_len
# RDI: rotation
# RSI: GLfloat *dest
.global buildHexagonVertices
buildHexagonVertices:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$512, %rsp
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -24(%rbp)
	movss	%xmm3, -32(%rbp)
	movss	%xmm4, -40(%rbp)
	movss	%xmm5, -48(%rbp)
	movss	%xmm6, -56(%rbp)
	movss	%xmm7, -64(%rbp)
	movq	16(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	24(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	48(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	%rsi, -120(%rbp)

# 	-152 rbp is positions x
#	-184 rbp is positions y
	movss	%xmm0, -152(%rbp)
	movss	%xmm0, -140(%rbp)
	movss	F3, %xmm8
	sqrtss	%xmm8, %xmm8
	divss	F2, %xmm8
	movss	-104(%rbp), %xmm9
	mulss	%xmm9, %xmm8
	addss	%xmm8, %xmm0
	movss	%xmm0, -148(%rbp)
	movss	%xmm0, -144(%rbp)
	subss	%xmm8, %xmm0
	subss	%xmm8, %xmm0
	movss	%xmm0, -136(%rbp)
	movss	%xmm0, -132(%rbp)

	movss	-104(%rbp), %xmm8
	movss	F2, %xmm9
	divss	%xmm9, %xmm8
	subss	%xmm8, %xmm1
	movss	%xmm1, -176(%rbp)
	movss	%xmm1, -168(%rbp)
	subss	%xmm8, %xmm1
	movss	%xmm1, -172(%rbp)
	addss	%xmm8, %xmm1
	addss	%xmm8, %xmm1
	addss	%xmm8, %xmm1
	movss	%xmm1, -180(%rbp)
	movss	%xmm1, -164(%rbp)
	addss	%xmm8, %xmm1
	movss	%xmm1, -184(%rbp)

	movq	%rdi, %rax
	imul	$4, %rax

	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	32(%rbp), %xmm8
	movss	F2, %xmm9
	divss	%xmm9, %xmm8
	addss	%xmm7, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	40(%rbp), %xmm9
	addss	%xmm9, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD1
	subq	$24, %rax
BHVMOD1:


	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	32(%rbp), %xmm8
	addss	%xmm7, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	40(%rbp), %xmm9
	movss	F3, %xmm10
	movss	F2, %xmm11
	sqrtss	%xmm10, %xmm10
	divss	%xmm11, %xmm10
	mulss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD2
	subq	$24, %rax
BHVMOD2:

	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	32(%rbp), %xmm8
	addss	%xmm7, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	40(%rbp), %xmm9
	movss	F3, %xmm10
	movss	F2, %xmm11
	sqrtss	%xmm10, %xmm10
	divss	%xmm11, %xmm10
	movss	F3, %xmm11
	divss	%xmm11, %xmm10
	mulss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD3
	subq	$24, %rax
BHVMOD3:

	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	32(%rbp), %xmm8
	movss	F2, %xmm9
	divss	%xmm9, %xmm8
	addss	%xmm7, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD4
	subq	$24, %rax
BHVMOD4:

	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	%xmm7, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	40(%rbp), %xmm9
	movss	F3, %xmm10
	movss	F2, %xmm11
	sqrtss	%xmm10, %xmm10
	divss	%xmm11, %xmm10
	movss	F3, %xmm11
	divss	%xmm11, %xmm10
	mulss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD5
	subq	$24, %rax
BHVMOD5:

	leaq	-152(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	addq	%rax, %rdx
	addq	%rax, %rcx
	movss	(%rdx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	(%rcx), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	%xmm2, (%rsi)
	addq	$4, %rsi
	movss	%xmm3, (%rsi)
	addq	$4, %rsi
	movss	%xmm4, (%rsi)
	addq	$4, %rsi
	movss	%xmm5, (%rsi)
	addq	$4, %rsi
	movss	%xmm6, (%rsi)
	addq	$4, %rsi
	movss	%xmm7, (%rsi)
	addq	$4, %rsi
	movss	16(%rbp), %xmm8
	movss	40(%rbp), %xmm9
	movss	F3, %xmm10
	movss	F2, %xmm11
	sqrtss	%xmm10, %xmm10
	divss	%xmm11, %xmm10
	mulss	%xmm10, %xmm9
	addss	%xmm9, %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	movss	24(%rbp), %xmm8
	movss	%xmm8, (%rsi)
	addq	$4, %rsi
	addq	$4, %rax
	cmpq	$24, %rax
	jl		BHVMOD6
	subq	$24, %rax
BHVMOD6:

	movq	%rsi, %rax
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Build Rect Vertices
# Params:
# XMM0: float offset_x
# XMM1: float offser_y
# XMM2: float z_index
# XMM3: float size_x
# XMM4: float size_y
# XMM5: float color_r
# XMM6: float color_b
# XMM7: float color_g
# STACK 16: float color_a
# STACK 24: float tex_x
# STACK 32: float tex_y
# STACK 40: float tex_weight
# RDI: GLfloat *dest
.global	buildRectVertices
buildRectVertices:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	movss	16(%rbp), %xmm8
	movss	24(%rbp), %xmm9
	movss	32(%rbp), %xmm10
	movss	40(%rbp), %xmm11
	


	movss	%xmm0, (%rdi)
	addq	$4, %rdi
	movss	%xmm1, (%rdi)
	addq	$4, %rdi
	movss	%xmm2, (%rdi)
	addq	$4, %rdi
	movss	%xmm5, (%rdi)
	addq	$4, %rdi
	movss	%xmm6, (%rdi)
	addq	$4, %rdi
	movss	%xmm7, (%rdi)
	addq	$4, %rdi
	movss	%xmm8, (%rdi)
	addq	$4, %rdi
	movss	F001, %xmm12
	divss	F2, %xmm12
	addss	%xmm9, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	F001, %xmm12
	addss	%xmm10, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm11, (%rdi)
	addq	$4, %rdi

	movss	%xmm0, %xmm12
	addss	%xmm3, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm1, (%rdi)
	addq	$4, %rdi
	movss	%xmm2, (%rdi)
	addq	$4, %rdi
	movss	%xmm5, (%rdi)
	addq	$4, %rdi
	movss	%xmm6, (%rdi)
	addq	$4, %rdi
	movss	%xmm7, (%rdi)
	addq	$4, %rdi
	movss	%xmm8, (%rdi)
	addq	$4, %rdi
	movss	F001, %xmm12
	addss	%xmm9, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	sqrtss	F3, %xmm12
	divss	F2, %xmm12
	addss	%xmm10, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm11, (%rdi)
	addq	$4, %rdi

	movss	%xmm0, %xmm12
	addss	%xmm3, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm1, %xmm12
	addss	%xmm4, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm2, (%rdi)
	addq	$4, %rdi
	movss	%xmm5, (%rdi)
	addq	$4, %rdi
	movss	%xmm6, (%rdi)
	addq	$4, %rdi
	movss	%xmm7, (%rdi)
	addq	$4, %rdi
	movss	%xmm8, (%rdi)
	addq	$4, %rdi
	movss	F001, %xmm12
	addss	%xmm9, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	sqrtss	F3, %xmm12
	divss	F2, %xmm12
	divss	F3, %xmm12
	addss	%xmm10, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm11, (%rdi)
	addq	$4, %rdi

	movss	%xmm0, (%rdi)
	addq	$4, %rdi
	movss	%xmm1, %xmm12
	addss	%xmm4, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm2, (%rdi)
	addq	$4, %rdi
	movss	%xmm5, (%rdi)
	addq	$4, %rdi
	movss	%xmm6, (%rdi)
	addq	$4, %rdi
	movss	%xmm7, (%rdi)
	addq	$4, %rdi
	movss	%xmm8, (%rdi)
	addq	$4, %rdi
	movss	F001, %xmm12
	divss	F2, %xmm12
	addss	%xmm9, %xmm12
	movss	%xmm12, (%rdi)
	addq	$4, %rdi
	movss	%xmm10, (%rdi)
	addq	$4, %rdi
	movss	%xmm11, (%rdi)
	addq	$4, %rdi	

	movq	%rdi, %rax


# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Get Tile Texture
# Params:
# RDI: int tile_type
.global getTileTexture
getTileTexture:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	cmpl	$1, %edi
	je		GTTGRASS
	cmpl	$2, %edi
	je		GTTESS
	jmp		GTTGRASS
GTTGRASS:
	movq	$5, %rax
	jmp 	GTTEND
GTTESS:
	movq	$1, %rax
GTTEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Object GL
# Params:
# RDI: int vertices_size
# RSI: int step
# RDX: gl_object **object
# RCX: gl_game_state *gl_state
.global updateObjectGL
updateObjectGL:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi	
	pushq	%rsi	
	pushq	%rdx	
	pushq	%rcx	

	cmpq	$0, (%rdx)
	jne		UOGLEND
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	call	createGLObject
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movl	%esi, 40(%rax)
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rsi
	call	addGLObject


UOGLEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# update map tile gl
# params:
# RDI: int i
# RSI: int j
# RDX: GLfloat **iter_v       
# RCX: game_state *state
# R8: gl_game_state *gl_state
.global updateMapTileGL
updateMapTileGL:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8

	imul	$100, %rdi
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	$0, %rax
	movb	(%rdi), %al
	pushq	%rax
	cmpb	$0, %al
	je		UMTEND
	pushq	$0
	pushq	$0
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movss	11760(%rcx), %xmm0
	movss	11764(%rcx), %xmm1
	movss	11784(%rcx), %xmm2
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	call	hexGridToViewport
	movq	-48(%rbp), %rax
	cmpb	$2, %al
	je		UMTE
	cmpb	$4, %al	
	je		UMTF
	cmpb	$5, %al
	je		UMTW
	cmpb	$6, %al
	je		UMTI
	movq	$1, %rax
	jmp		UMTCONT
UMTE:
	movq	$10, %rax
	jmp		UMTCONT
UMTF:
	movq	$8, %rax
	jmp		UMTCONT
UMTI:
	movq	$10, %rax
	jmp		UMTCONT
UMTW:
	movq	$11, %rax
UMTCONT:
	imul	$12, %rax
	movq	$88, %r10
	addq	-40(%rbp), %r10
	movq	(%r10), %r10
	addq	%r10, %rax
	movss	(%rax), %xmm0
	movss	4(%rax), %xmm1
	movss	8(%rax), %xmm2
	movss	F001, %xmm3
	movss	F001, %xmm4
	movq	-48(%rbp), %rdi
	cmpb	$1, %dil
	je		UMTTW
	cmpb	$2, %dil
	je		UMTTW
	movss	F0, %xmm4
UMTTW:
	call	getTileTexture
	movq	%rax, %rdi
	movss	%xmm4, %xmm8
	movss	%xmm0, %xmm3
	movss	%xmm1, %xmm4
	movss 	%xmm2, %xmm5
	call	loadSubtextureBounds
	pushq	%rax
	movss	F001, %xmm6
	movss 	-56(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	movss	F0, %xmm2
	movss	(%rax), %xmm7
	movq	-32(%rbp), %rsi
	movss	11784(%rsi), %xmm9
	mulss	FPNINE, %xmm9
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm9, (%rsp)
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	12(%rax), %xmm9
	movss	%xmm9, (%rsp)
	movss	8(%rax), %xmm9
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm9, (%rsp)
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm8, (%rsp)
	movss	4(%rax), %xmm9
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm9, (%rsp)
	movq	$0, %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	call	buildHexagonVertices
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-72(%rbp), %rdi
	call	free
UMTEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret


.global freeMapVertices 
freeMapVertices: call free

# Update Map GL
# Params:
# RDI: game_state *state
# RSI: gl_game_state *gl_state
.global updateMapGL
updateMapGL:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$24000
	movq	-48(%rbp), %rdi
	movq	$6, %rsi
	movq	-16(%rbp), %rdx
	addq	$24, %rdx
	movq	-16(%rbp), %rcx
	call 	updateObjectGL
	pushq	$0
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)
UMGLILOOP:
	movq	$0, -32(%rbp)
UMGLJLOOP:
	movq	-24(%rbp), %rdi	
	movq	-32(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %rcx
	call	updateMapTileGL
	incq	-32(%rbp)
	cmpq	$20, -32(%rbp)
	jl		UMGLJLOOP
	incq	-24(%rbp)
	cmpq	$20, -24(%rbp)
	jl		UMGLILOOP

# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret


# update Highlight
# params:
# RDI: game_state *state
# RSI: gl_game_state *gl_state
.global updateHighlight
updateHighlight:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	cmpl	$-1, 11812(%rdi)
	je		UCELSE
	
	pushq	$0
	pushq	$0
	movq	$0, %rax
	movl	11812(%rdi), %eax
	imul	$12, %rax
	addq	%rdi, %rax
	addq	$10192, %rax
	movq	$0, %rdi
	movq	$0, %rsi
	movb	2(%rax), %dil
	movb	3(%rax), %sil
	movq	-8(%rbp), %rax
	movss	11760(%rax), %xmm0
	movss	11764(%rax), %xmm1
	movss	11784(%rax), %xmm2
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	call	hexGridToViewport
	
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	addq	$84, %rax
	movss	(%rax), %xmm3
	movss	4(%rax), %xmm4
	movss	8(%rax), %xmm5
	movss	F1, %xmm6
	
	movq	$60, %rdi
	MOVQ	$6, %RSI
	MOVQ	-16(%RBP), %RAX
	LEAQ	32(%RAX), %RDX
	MOVQ	-16(%RBP), %RCX
	CALL	updateObjectGL
		
	MOVQ	-16(%RBP), %RAX
	MOVQ	32(%RAX), %RAX
	MOVL	$GL_LINE_LOOP, %EDX
	MOVL	%EDX, 44(%RAX)
	
	MOVQ	$0, %RDI
	MOVQ	(%RAX), %RSI
	
	MOVQ	-8(%RBP), %RAX
	MOVSS	11784(%RAX), %XMM0
	SUBQ	$8, %RSP
	MOVQ	$0, (%RSP)
	MOVSS	%XMM0, (%RSP)
	
	MOVSS	FZERO, %XMM0
	SUBQ	$8, %RSP
	MOVQ	$0, (%RSP)
	MOVSS	%XMM0, (%RSP)

	
	MOVSS	FZERO, %XMM0
	SUBQ	$8, %RSP
	MOVQ	$0, (%RSP)
	MOVSS	%XMM0, (%RSP)

	
	MOVSS	FZERO, %XMM0
	SUBQ	$8, %RSP
	MOVQ	$0, (%RSP)
	MOVSS	%XMM0, (%RSP)

	
	MOVSS	FZERO, %XMM0
	SUBQ	$8, %RSP
	MOVQ	$0, (%RSP)
	MOVSS	%XMM0, (%RSP)
	
	MOVSS	-24(%RBP), %XMM0
	MOVSS	-32(%RBP), %XMM1
	MOVSS	FP2, %XMM2
	MOVSS	FZERO, %XMM7
	CALL	buildHexagonVertices	

	jmp		UCEND
UCELSE:
	cmpq	$0, 32(%rsi)
	je		UCEND
	leaq	8(%rsi), %rdi
	movq	32(%rsi), %rsi
	call 	removeGLObject
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax) 
	

UCEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret 


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

	pushq	%rdi

	movq	$0, %rax
	movl	11820(%rdi), %eax
	movq	%rdi, %rdx
	MOVQ	%RAX, %RDI
	MOVQ	$0, %RAX
	MOVL	11824(%RDX), %EAX
	MOVQ	%RAX, %RSI
	CALL	findUnit
	pushq	%rax
	pushq	$0

	movq	-8(%rbp), %rax
	cmpl	$1, 11836(%rax)
	jne		GCCMOVE
	movq	$0, %rdi
	movq	$0, %rsi
	movl	11832(%rax), %edi
	movl	11812(%rax), %esi
	imul	$12, %rsi
	addq	%rax, %rsi
	addq	$10192, %rsi
	cmpb	8(%rsi), %dil
	jg		GCCMRED
	je		GCCMYELW
	jl		GCCMWHITE

GCCMRED:
	movq	$8, -24(%rbp)
	jmp		GCCMTGT
GCCMYELW:
	movq	$7, -24(%rbp)
	jmp		GCCMTGT
GCCMWHITE:
	movq	$1, -24(%rbp)
	jmp		GCCMTGT
GCCMTGT:
	cmpl	$-1, -16(%rbp)
	je		GCCMOVE
	movq	$8, -24(%rbp)

GCCMOVE:
	movq	-8(%rbp), %rax
	cmpl	$2, 11836(%rax)
	jne		GCCATK

	
	movq	$0, %rdi
	movl	11832(%rax), %edi
	movq	$0, %rsi
	movl	11812(%rax), %esi
	imul	$12, %rsi
	addq	%rax, %rsi
	addq	$10192, %rsi
	cmpl	$-1, -16(%rbp)
	jne		GCCATKELSE
	cmpb	6(%rsi), %dil
	jg		GCCATKELSE
	jmp		GCCLGRY

GCCLGRY:
	movq	$5, -24(%rbp)
	jmp		GCCATK
GCCATKELSE:
	cmpl	$-1, -16(%rbp)
	je		GCCATKRED
	cmpb	6(%rsi), %dil
	jg		GCCATKRED
	movq	-16(%rbp), %rdx
	imul	$12, %rdx
	addq	-8(%rbp), %rdx
	addq	$10192, %rdx
	movb	5(%rdx), %cl
	cmpb	%cl, 5(%rsi)
	je		GCCATKRED
	movq	$6, -24(%rbp)
	jmp		GCCATK
GCCATKRED:
	movq	$8, -24(%rbp)
GCCATK:
	movq	-24(%rbp), %rax

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


.global freeGL
freeGL:
	pushq	%rbp
	movq	%rbp, %rsp
	movq	%rsp, %rbp
	popq	%rbp
	ret

# Update Cursor
# Params:
# RDI: game_state *state
# RSI: gl_game_state *gl_state
.global updateCursor
updateCursor:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi
	movq	$0, %rax
	movl	11828(%rdi), %eax
	cmpq	$0, %rax
	je		GLUCELSE
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	$0, %rdi
	movl	11820(%rax), %edi
	movq	$0, %rsi
	movl	11824(%rax), %esi
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movss	11760(%rax), %xmm0
	movss	11764(%rax), %xmm1
	movss	11784(%rax), %xmm2
	call	hexGridToViewport
	
	movq	-8(%rbp), %rdi
	call	getCursorColor
	imul	$12, %rax
	movq	-16(%rbp), %rdi
	movq	88(%rdi), %rdi
	addq	%rax, %rdi
	movss	(%rdi), %xmm3
	movss	4(%rdi), %xmm4
	movss	8(%rdi), %xmm5
	movss	FP6, %xmm6
	movq	$60, %rdi
	movq	$6, %rsi
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-16(%rbp), %rcx
	call	updateObjectGL
	movq	-8(%rbp), %rax
	movss	11784(%rax), %xmm0
	mulss	FP55, %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	F0, %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	F0, %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	F0, %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	F0, %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	-24(%rbp), %xmm0
	movss	-32(%rbp), %xmm1
	movss	FP4, %xmm2
	movss	F0, %xmm7
	movq	$0, %rdi
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	(%rax), %rsi
	call	buildHexagonVertices

	jmp		GLUCEND
GLUCELSE:
	cmpq	$0, 72(%rsi)
	je		GLUCEND
	leaq	8(%rsi), %rdi
	movq	72(%rsi), %rsi
	call	removeGLObject
	movq	-16(%rbp), %rsi
	movq	$0, 72(%rsi)
GLUCEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Fog Tile GL
# Params:
# RDI: int i
# RSI: int j
# RDX: GLfloat **iter_v
# RCX: game_state *state
# R8: gl_game_state *gl_state
.global updateFogTileGL
updateFogTileGL:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi	//-8	i
	pushq	%rsi	//-16	j
	pushq	%rdx	//-24	iter
	pushq	%rcx	//-32	state
	pushq	%r8		//-40	gl_state
	pushq	$1		//-48 int is_fog = 1
	imul	$100, %rdi
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	$0, %rax
	movb	(%rdi), %al
	pushq	%rax	//-56  int tile = state->terrain_map[i][j]
	pushq	$0		//-64  float x
	pushq	$0		//-72  float y
	
	movq	$0, %rax
	movl	11808(%rcx), %eax
	movq	$0, %r8
	movq	%rax, %r9
UFTGLLOOP:
	movq	%r8, %rcx
	imul	$12, %rcx
	addq	$10192, %rcx
	addq	-32(%rbp), %rcx
	pushq	%rcx
	movq	$0, %rdi
	movq	$0, %rsi
	movb	2(%rcx), %dil
	movb	3(%rcx), %sil
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	call	hexDistance
	popq	%rcx
	cmpb	10(%rcx), %al
	jg		UFTGLFOR
	movq	-32(%rbp), %rdx
	movb	5(%rcx), %dil
	cmpb	%dil, 11800(%rdx)
	jne		UFTGLFOR
	movq	$0, -48(%rbp)
UFTGLFOR:
	incq	%r8
	cmpq	%r9, %r8
	jl		UFTGLLOOP
	movq	-32(%rbp), %rdi
	cmpl	$4, 11836(%rdi)
	jne		UFTGLTRANS
	movq	$1, -48(%rbp)
UFTGLTRANS:
	cmpq	$0, -48(%rbp)
	je		UFTGLEND
	cmpq	$0, -56(%rbp)
	je		UFTGLEND
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movss	11760(%rax), %xmm0
	movss	11764(%rax), %xmm1
	movss	11784(%rax), %xmm2
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	call	hexGridToViewport
	
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	addl	$60, 8(%rax)	

	movq	$3, %rdi
	call	loadSubtextureBounds
	pushq	%rax
	
	movq	-32(%rbp), %rdi
	movss	11784(%rdi), %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movq	8(%rsp), %rsi
	movss	12(%rsi), %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	8(%rsi), %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	F1, %xmm0
	movss	%xmm0, (%rsp)	
	movss	4(%rsi), %xmm0
	subq	$8, %rsp
	movq	$0, (%rsp)
	movss	%xmm0, (%rsp)
	movss	-64(%rbp), %xmm0
	movss	-72(%rbp), %xmm1
	movss	F0, %xmm2
	movss	FP15, %xmm3
	movss	FP15, %xmm4
	movss	FP15, %xmm5
	movss	F1, %xmm6
	movss	(%rsi), %xmm7
	movq	$0, %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	call	buildHexagonVertices
	movq	-24(%rbp), %rdi	
	movq	%rax, (%rdi)
	movq	-80(%rbp), %rdi
	call	free
UFTGLEND:
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

# Update Fog Of War
# Params:
# RDI: game_state *state
# RSI: gl_game_state *gl_state
.global updateFogOfWar
updateFogOfWar:
# Prologue
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi

	movq	$24000, %rdi	
	movq	$6, %rsi
	movq	-16(%rbp), %rcx
	leaq	40(%rcx), %rdx
	call	updateObjectGL
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movl	$0, 8(%rdi)
	movq	(%rdi), %rdi
	pushq	%rdi
	subq	$24, %rsp
	movq	$0, -32(%rbp)
UFOWILOOP:
	movq	$0, -40(%rbp)
UFOWJLOOP:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	call	updateFogTileGL
	incq	-40(%rbp)
	cmpq	$20, -40(%rbp)
	jl		UFOWJLOOP
	incq	-32(%rbp)
	cmpq	$20, -32(%rbp)
	jl		UFOWILOOP
# Epilogue
	movq	%rbp, %rsp
	popq	%rbp
	ret

.data
FNONE: .float -1
SIZEX: .float 2
SIZEY: .float 0.3
COLOR: .float 0.1
FN09: .float -0.9
.text
.global updateForeground
updateForeground:
	pushq	%rbp
	movq	%rsp, %rbp
	
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	movq	$40, %rdi
	movq	$4, %rsi
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rcx
	call	updateObjectGL

	movss	FNONE, %xmm0	
	movss	FNONE, %xmm1	
	movss	FN09, %xmm2
	movss	SIZEX, %xmm3
	movss	SIZEY, %xmm4
	movss	COLOR, %xmm5
	movss	COLOR, %xmm6
	movss	COLOR, %xmm7
	
	subq	$8, %rsp
	movq	-16(%rbp), %rax 
	movq	48(%rax), %rax
	movq	(%rax), %rdi 

	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)

	subq	$8, %rsp
	movss	FONE, %xmm8
	movss	%xmm8, (%rsp)
	call	buildRectVertices	
	
	movq	%rbp, %rsp
	popq	%rbp
	ret


.data
SIZEXY: .float 1.6
FN08: .float -0.8
.text
.global updateHelp
updateHelp:
	pushq	%rbp
	movq	%rsp, %rbp

	pushq	%rdi
	pushq	%rsi

	cmpl	$1, 11840(%rdi)	
	jne		ELSEHP

	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)

	movq	$40, %rdi
	movq	$4, %rsi
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rcx
	call	updateObjectGL

	movss	FN08, %xmm0	
	movss	FN08, %xmm1	
	movss	FN09, %xmm2
	movss	SIZEXY, %xmm3
	movss	SIZEXY, %xmm4
	movss	COLOR, %xmm5
	movss	COLOR, %xmm6
	movss	COLOR, %xmm7
	
	subq	$8, %rsp
	movq	-16(%rbp), %rax 
	movq	80(%rax), %rax
	movq	(%rax), %rdi 

	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)
	
	subq	$8, %rsp
	movss	F00, %xmm8
	movss	%xmm8, (%rsp)

	subq	$8, %rsp
	movss	F06, %xmm8
	movss	%xmm8, (%rsp)
	call	buildRectVertices	
	jmp		ENDHP
ELSEHP:
	cmpq	$0, 80(%rsi)
	je		ENDHP
	leaq	8(%rsi), %rdi
	movq	80(%rsi), %rsi
	call	removeGLObject
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	
ENDHP:
	movq	%rbp, %rsp
	popq	%rbp
	ret

