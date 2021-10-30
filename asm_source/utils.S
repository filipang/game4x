#define M_PROLOGUE\
	pushq	%rbp;\
	movq	%rsp, %rbp;\

#define M_EPILOGUE\
	movq	%rbp, %rsp;\
	popq	%rbp;\
	ret		;\

.data
WSTR:	.asciz "w"
RSTR:	.asciz "r"
ERF:	.asciz "Error reading file!\n"
ZERO: 	.float 0.0
THREE:	.float 3.0
TWO:	.float 2.0
NTWO:	.float -2.0
HALF:	.float 0.5
NHALF:	.float -0.5
V1_5:	.float 1.5
V900:	.float 900.0
SQRT3:  .float 1.73205080757
.text

#define FALSE
#ifdef FALSE
# Params:
# rdi - file_name
# Params end;
# rsi - dest
# rdx - fp
# rcx - bufsize
# r8  - newLen
.global loadFile
loadFile:
	M_PROLOGUE

	#char *dest = NULL
	movq $0, %rsi

	#FILE *fp = fopen(file_name, "r");
	pushq	%rdi
	pushq	%rsi

	movq	$RSTR, %rsi	
	call	fopen
	movq	%rax, %rdx

	popq	%rsi
	popq	%rdi

	# mif(fp != NULL) {
	cmpq	$0, %rdx
	je		IFNULL
	pushq	%rdi	
	pushq	%rsi	
	pushq	%rdx
	subq	$8, %rsp

	movq	%rdx, %rdi
	movq	$0, %rsi
	movq	$SEEK_END, %rdx
	call	fseek

	addq	$8, %rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	cmpq	$0, %rax 
	jne		IFNOTNULL
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	subq	$8, %rsp
	movq	%rdx, %rdi
	call	ftell
	addq	$8, %rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	
	movq	%rax, %rcx	

	// dest = malloc(sizeof(char) * (bufsize + 1))	
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx

	movq	%rcx, %rdi


	call	malloc	

	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %rsi

	#fseek(fp)	
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%rdx, %rdi
	movq	$0, %rsi
	movq	$SEEK_SET, %rdx
	call	fseek
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	//if
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%rsi, %rdi
	movq	$1, %rsi
	xchgq	%rcx, %rdx
	call	fread
	movq	%rax, %r8

	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi

	#call ferror(fp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	subq	$8, %rsp

	movq	%rdx, %rdi
	call	ferror

	addq	$8, %rsp
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	cmpq	$0, %rax
	je		ELSEERROR
IFERROR:
	
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	subq	$8, %rsp
	movq	$ERF, %rdi
	movq	$2, %rsi
 	call	fputs
	addq	$8, %rsp
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	jmp ENDIF
ELSEERROR:
	movq	%r8, %r9
	addq	%rsi, %r9
	movb	$0, (%r9)
	incq	%r8	

ENDIF:
IFNOTNULL:
	movq	%rdx, %rdi
	pushq	%rsi
	pushq	%rdi
	call	fclose
	popq	%rdi
	popq	%rsi	

IFNULL:
	movq %rsi, %rax
	M_EPILOGUE	
#endif

# params:
# RDI: file_name
# RSI: data
# RDX: data_size
# RCX: fp
# R8:  newLen
.global writeFile
writeFile:
	pushq    %rbp
	movq    %rsp, %rbp

	pushq    %rdi
	pushq    %rsi
	pushq    %rdx
	movq    $WSTR, %rsi
	call     fopen
	movq    %rax, %rcx
	popq    %rdx
	popq    %rsi
	popq    %rdi

	cmpq    $0, %rcx
	je		END_WRITE_FILE

	pushq    %rdi
	pushq    %rsi
	pushq    %rdx
	pushq    %rcx
	movq    %rsi, %rdi
	movq    $1, %rsi
	call     fwrite
	movq    %rax, %r8
	popq    %rcx
	popq    %rdx
	popq	%rsi
	popq    %rdi

	pushq    %rdi
	pushq    %rsi
	pushq    %rdx
	pushq    %rcx
	pushq    %r8
	movq    %rcx, %rdi
	call    ferror
	movq    %rax, %r9
	popq    %r8
	popq    %rcx
	popq    %rdx
	popq    %rsi
	popq    %rdi
	cmpq    $0, %r9
	je    CLOSE

	pushq    %rcx
	movq    $ERF, %rdi
	movq    $2, %rsi
	call     fputs
	popq    %rcx
CLOSE:
	movq    %rcx, %rdi
	call    fclose
END_WRITE_FILE:
	movq    %rbp, %rsp
	popq    %rbp
	ret
# params: 
# RDI: n
# RAX: result
.global nextPowerOf2
nextPowerOf2:
	pushq    %rbp
	movq    %rsp, %rbp

	movq    $1, %rax
LOOP:
    shlq    $1, %rax
    cmpq	%rax, %rdi
    jg		LOOP

	movq    %rbp, %rsp
	popq    %rbp
	ret
# Params:
# RDI: grid_x
# RSI: grid_y
# XMM0: offset_x
# XMM1: offset_y
# XMM2: hex_size
# XMM3: (float) grid_y
# XMM4: (float) grid_x
# RDX: *viewport_x
# RCX: *viewport_y
.global hexGridToViewport
hexGridToViewport:
	pushq    %rbp
	movq    %rsp, %rbp

cvtsi2ssq    %rsi, %xmm3
cvtsi2ssq    %rdi, %xmm4
    divss    TWO, %xmm3
    addss    %xmm3, %xmm4
    mulss    %xmm2, %xmm4
    mulss    THREE, %xmm3
    mulss    %xmm2, %xmm3
    addss    %xmm3, %xmm1
    movss    THREE, %xmm3
    sqrtss    %xmm3, %xmm3
    mulss    %xmm3, %xmm4
    addss    %xmm4, %xmm0
    movss    %xmm0, (%RDX)
    movss    %xmm1, (%RCX)

	movq    %rbp, %rsp
	popq    %rbp
	ret


# Params:
# xmm0 - viewport_x
# xmm1 - viewport_y
# xmm2 - offset_x
# xmm3 - offset_y
# xmm4 - hex_size

# %rdi - grid_x
# %rsi - grid_y
.global viewportToHexGrid
viewportToHexGrid:
	pushq	%rbp
	movq	%rsp, %rbp

	#xmm1 = viewport_y - offset_y
	subss	%xmm3, %xmm1
	#xmm2 = viewport_x - offset_x
	subss	%xmm2, %xmm0
	#xmm8 = viewport_x - offset_x
	movss	%xmm0, %xmm8

	#xmm5 = hex_size	
	movss	%xmm4, %xmm5
	#xmm5 = hex_size * 1.5
	mulss	V1_5, %xmm5
	#xmm1 = (viewport_y - offset_y) / (hex_size * 1.5)
	divss	%xmm5, %xmm1
	#xmm0 = xmm1
	movss	%xmm1, %xmm0
	pushq	%rdi
	pushq	%rsi
	call 	roundf
	popq	%rsi
	popq	%rdi
cvtss2siq	%xmm0, %rax
	movq	%rax, (%rsi)

	movss	%xmm0, %xmm6
	mulss	SQRT3, %xmm4
	mulss	HALF, %xmm6
	divss	%xmm4, %xmm8 	
	subss	%xmm6, %xmm8
	movss	%xmm8, %xmm0
	pushq 	%rdi
	pushq	%rsi
	call	roundf
	popq	%rsi
	popq	%rdi
cvtss2siq	%xmm0, %rax
	movq	%rax, (%rdi)

	movq	%rbp, %rsp
	popq	%rbp
	ret
# Params:

# xmm0 - mouse_x
# xmm1 - mouse_y
# %rdi - viewport_x
# %rsi - viewport_y 

.global mouseCoordsToViewport
mouseCoordsToViewport:
	pushq	%rbp
	movq	%rsp, %rbp
	
cvtsd2ss	%xmm0, %xmm0
cvtsd2ss	%xmm1, %xmm1
	divss	V900, %xmm0
	divss	V900, %xmm1
	subss	HALF, %xmm0
	subss	HALF, %xmm1
	mulss	TWO, %xmm0
	mulss	NTWO, %xmm1
	movss	%xmm0, (%rdi)
	movss	%xmm1, (%rsi)

	movq	%rbp, %rsp
	popq	%rbp
	ret
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
