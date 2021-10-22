	.file	"utils.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Error reading file"
	.text
	.globl	loadFile
	.type	loadFile, @function
loadFile:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	testl	%eax, %eax
	jne	.L3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	jmp	.L3
.L4:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	loadFile, .-loadFile
	.section	.rodata
.LC2:
	.string	"w"
	.text
	.globl	writeFile
	.type	writeFile, @function
writeFile:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L9
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L8
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	writeFile, .-writeFile
	.globl	nextPowerOf2
	.type	nextPowerOf2, @function
nextPowerOf2:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L11
.L12:
	sall	-4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L12
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	nextPowerOf2, .-nextPowerOf2
	.globl	hexGridToViewport
	.type	hexGridToViewport, @function
hexGridToViewport:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-12(%rbp), %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-8(%rbp), %xmm3
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-20(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	addss	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	hexGridToViewport, .-hexGridToViewport
	.globl	viewportToHexGrid
	.type	viewportToHexGrid, @function
viewportToHexGrid:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm4, -20(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movss	-8(%rbp), %xmm0
	subss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movsd	.LC7(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movss	-4(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	.LC3(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	viewportToHexGrid, .-viewportToHexGrid
	.globl	mouseCoordsToViewport
	.type	mouseCoordsToViewport, @function
mouseCoordsToViewport:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mouseCoordsToViewport, .-mouseCoordsToViewport
	.globl	calculateRotation
	.type	calculateRotation, @function
calculateRotation:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-8(%rbp), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	-4(%rbp), %xmm2
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtss2sd	-4(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jp	.L18
	pxor	%xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jne	.L18
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L59
	movl	$0, %eax
	jmp	.L17
.L59:
	movl	$3, %eax
	jmp	.L17
.L18:
	movss	-12(%rbp), %xmm0
	comiss	.LC11(%rip), %xmm0
	jb	.L23
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L23
	movl	$0, %eax
	jmp	.L17
.L23:
	movss	.LC11(%rip), %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L26
	movss	-12(%rbp), %xmm0
	comiss	.LC12(%rip), %xmm0
	jb	.L26
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L26
	movl	$1, %eax
	jmp	.L17
.L26:
	movss	.LC12(%rip), %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L30
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L30
	movl	$2, %eax
	jmp	.L17
.L30:
	movss	-12(%rbp), %xmm0
	comiss	.LC11(%rip), %xmm0
	jb	.L33
	pxor	%xmm0, %xmm0
	comiss	-4(%rbp), %xmm0
	jb	.L33
	movl	$3, %eax
	jmp	.L17
.L33:
	movss	.LC11(%rip), %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L36
	movss	-12(%rbp), %xmm0
	comiss	.LC12(%rip), %xmm0
	jb	.L36
	pxor	%xmm0, %xmm0
	comiss	-8(%rbp), %xmm0
	jb	.L36
	movl	$4, %eax
	jmp	.L17
.L36:
	movss	.LC12(%rip), %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L40
	pxor	%xmm0, %xmm0
	comiss	-8(%rbp), %xmm0
	jbe	.L40
	movl	$5, %eax
	jmp	.L17
.L40:
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	calculateRotation, .-calculateRotation
	.globl	hexDistance
	.type	hexDistance, @function
hexDistance:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	-8(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	subl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	hexDistance, .-hexDistance
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	-396866390
	.long	1073460858
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	1073217536
	.align 8
.LC8:
	.long	0
	.long	1082925056
	.align 8
.LC9:
	.long	0
	.long	-1073741824
	.align 4
.LC11:
	.long	1056964608
	.align 4
.LC12:
	.long	-1090519040
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
