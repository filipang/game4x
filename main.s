	.file	"main.c"
	.text
.Ltext0:
	.type	stbi__sse2_available, @function
stbi__sse2_available:
.LFB505:
	.file 1 "/usr/include/stb/stb_image.h"
	.loc 1 733 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 737 11
	movl	$1, %eax
	.loc 1 738 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	stbi__sse2_available, .-stbi__sse2_available
	.type	stbi__start_mem, @function
stbi__start_mem:
.LFB506:
	.loc 1 791 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 792 15
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 793 27
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	.loc 1 794 29
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	.loc 1 795 43
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 208(%rax)
	.loc 1 795 21
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	.loc 1 795 18
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 796 71
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 796 51
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	.loc 1 796 25
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	.loc 1 796 22
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	.loc 1 797 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	stbi__start_mem, .-stbi__start_mem
	.type	stbi__start_callbacks, @function
stbi__start_callbacks:
.LFB507:
	.loc 1 801 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 802 10
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rcx)
	.loc 1 803 20
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 1 804 14
	movq	-8(%rbp), %rax
	movl	$128, 52(%rax)
	.loc 1 805 27
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	.loc 1 806 29
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	.loc 1 807 45
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	.loc 1 807 43
	movq	-8(%rbp), %rax
	movq	%rdx, 208(%rax)
	.loc 1 807 21
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	.loc 1 807 18
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 808 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__refill_buffer
	.loc 1 809 34
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 809 31
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	.loc 1 810 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	stbi__start_callbacks, .-stbi__start_callbacks
	.type	stbi__stdio_read, @function
stbi__stdio_read:
.LFB508:
	.loc 1 815 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 816 17
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	.loc 1 817 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	stbi__stdio_read, .-stbi__stdio_read
	.type	stbi__stdio_skip, @function
stbi__stdio_skip:
.LFB509:
	.loc 1 820 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 822 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 823 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, -4(%rbp)
	.loc 1 824 7
	cmpl	$-1, -4(%rbp)
	je	.L9
	.loc 1 825 7
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L9:
	.loc 1 827 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	stbi__stdio_skip, .-stbi__stdio_skip
	.type	stbi__stdio_eof, @function
stbi__stdio_eof:
.LFB510:
	.loc 1 830 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 831 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	.loc 1 831 30
	testl	%eax, %eax
	jne	.L11
	.loc 1 831 33 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	.loc 1 831 30 discriminator 2
	testl	%eax, %eax
	je	.L12
.L11:
	.loc 1 831 30 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L14
.L12:
	.loc 1 831 30 discriminator 4
	movl	$0, %eax
.L14:
	.loc 1 832 1 is_stmt 1 discriminator 7
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	stbi__stdio_eof, .-stbi__stdio_eof
	.section	.data.rel.local,"aw"
	.align 16
	.type	stbi__stdio_callbacks, @object
	.size	stbi__stdio_callbacks, 24
stbi__stdio_callbacks:
	.quad	stbi__stdio_read
	.quad	stbi__stdio_skip
	.quad	stbi__stdio_eof
	.text
	.type	stbi__start_file, @function
stbi__start_file:
.LFB511:
	.loc 1 842 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 843 4
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	stbi__stdio_callbacks(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 844 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	stbi__start_file, .-stbi__start_file
	.type	stbi__rewind, @function
stbi__rewind:
.LFB512:
	.loc 1 851 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 855 21
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	.loc 1 855 18
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 856 25
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	.loc 1 856 22
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	.loc 1 857 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	stbi__rewind, .-stbi__rewind
	.section	.tbss,"awT",@nobits
	.align 8
	.type	stbi__g_failure_reason, @object
	.size	stbi__g_failure_reason, 8
stbi__g_failure_reason:
	.zero	8
	.text
	.globl	stbi_failure_reason
	.type	stbi_failure_reason, @function
stbi_failure_reason:
.LFB513:
	.loc 1 936 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 937 11
	movq	%fs:stbi__g_failure_reason@tpoff, %rax
	.loc 1 938 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	stbi_failure_reason, .-stbi_failure_reason
	.type	stbi__err, @function
stbi__err:
.LFB514:
	.loc 1 942 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 943 27
	movq	-8(%rbp), %rax
	movq	%rax, %fs:stbi__g_failure_reason@tpoff
	.loc 1 944 11
	movl	$0, %eax
	.loc 1 945 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	stbi__err, .-stbi__err
	.type	stbi__malloc, @function
stbi__malloc:
.LFB515:
	.loc 1 949 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 950 12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 951 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	stbi__malloc, .-stbi__malloc
	.type	stbi__addsizes_valid, @function
stbi__addsizes_valid:
.LFB516:
	.loc 1 966 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 967 7
	cmpl	$0, -8(%rbp)
	jns	.L24
	.loc 1 967 22 discriminator 1
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 1 972 24
	movl	$2147483647, %eax
	subl	-8(%rbp), %eax
	.loc 1 972 13
	cmpl	%eax, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
.L25:
	.loc 1 973 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	stbi__addsizes_valid, .-stbi__addsizes_valid
	.type	stbi__mul2sizes_valid, @function
stbi__mul2sizes_valid:
.LFB517:
	.loc 1 978 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 979 7
	cmpl	$0, -4(%rbp)
	js	.L27
	.loc 1 979 14 discriminator 2
	cmpl	$0, -8(%rbp)
	jns	.L28
.L27:
	.loc 1 979 31 discriminator 3
	movl	$0, %eax
	jmp	.L29
.L28:
	.loc 1 980 7
	cmpl	$0, -8(%rbp)
	jne	.L30
	.loc 1 980 23 discriminator 1
	movl	$1, %eax
	jmp	.L29
.L30:
	.loc 1 982 23
	movl	$2147483647, %eax
	cltd
	idivl	-8(%rbp)
	.loc 1 982 13
	cmpl	%eax, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
.L29:
	.loc 1 983 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	stbi__mul2sizes_valid, .-stbi__mul2sizes_valid
	.type	stbi__mad2sizes_valid, @function
stbi__mad2sizes_valid:
.LFB518:
	.loc 1 988 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 989 11
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 989 39
	testl	%eax, %eax
	je	.L32
	.loc 1 989 42 discriminator 1
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	.loc 1 989 39 discriminator 1
	testl	%eax, %eax
	je	.L32
	.loc 1 989 39 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L34
.L32:
	.loc 1 989 39 discriminator 4
	movl	$0, %eax
.L34:
	.loc 1 990 1 is_stmt 1 discriminator 7
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	stbi__mad2sizes_valid, .-stbi__mad2sizes_valid
	.type	stbi__mad3sizes_valid, @function
stbi__mad3sizes_valid:
.LFB519:
	.loc 1 995 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	.loc 1 996 11
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 996 72
	testl	%eax, %eax
	je	.L36
	.loc 1 996 42 discriminator 1
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 996 39 discriminator 1
	testl	%eax, %eax
	je	.L36
	.loc 1 997 29 discriminator 3
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	.loc 1 997 7 discriminator 3
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	.loc 1 996 72 discriminator 3
	testl	%eax, %eax
	je	.L36
	.loc 1 996 72 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L38
.L36:
	.loc 1 996 72 discriminator 6
	movl	$0, %eax
.L38:
	.loc 1 998 1 is_stmt 1 discriminator 9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	stbi__mad3sizes_valid, .-stbi__mad3sizes_valid
	.type	stbi__mad4sizes_valid, @function
stbi__mad4sizes_valid:
.LFB520:
	.loc 1 1003 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	.loc 1 1004 11
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 1005 39
	testl	%eax, %eax
	je	.L40
	.loc 1 1004 42
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 1004 39
	testl	%eax, %eax
	je	.L40
	.loc 1 1005 30 discriminator 1
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	.loc 1 1005 7 discriminator 1
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	.loc 1 1004 72 discriminator 1
	testl	%eax, %eax
	je	.L40
	.loc 1 1005 64 discriminator 3
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	.loc 1 1005 66 discriminator 3
	imull	-12(%rbp), %eax
	.loc 1 1005 42 discriminator 3
	imull	-16(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	.loc 1 1005 39 discriminator 3
	testl	%eax, %eax
	je	.L40
	.loc 1 1005 39 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L42
.L40:
	.loc 1 1005 39 discriminator 1
	movl	$0, %eax
.L42:
	.loc 1 1006 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	stbi__mad4sizes_valid, .-stbi__mad4sizes_valid
	.type	stbi__malloc_mad2, @function
stbi__malloc_mad2:
.LFB521:
	.loc 1 1012 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 1013 9
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__mad2sizes_valid
	.loc 1 1013 7
	testl	%eax, %eax
	jne	.L44
	.loc 1 1013 50 discriminator 1
	movl	$0, %eax
	jmp	.L45
.L44:
	.loc 1 1014 25
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1014 28
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1014 11
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L45:
	.loc 1 1015 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	stbi__malloc_mad2, .-stbi__malloc_mad2
	.type	stbi__malloc_mad3, @function
stbi__malloc_mad3:
.LFB522:
	.loc 1 1019 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	.loc 1 1020 9
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 1020 7
	testl	%eax, %eax
	jne	.L47
	.loc 1 1020 53 discriminator 1
	movl	$0, %eax
	jmp	.L48
.L47:
	.loc 1 1021 25
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	.loc 1 1021 27
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1021 30
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1021 11
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L48:
	.loc 1 1022 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	stbi__malloc_mad3, .-stbi__malloc_mad3
	.type	stbi__malloc_mad4, @function
stbi__malloc_mad4:
.LFB523:
	.loc 1 1026 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	.loc 1 1027 9
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	stbi__mad4sizes_valid
	.loc 1 1027 7
	testl	%eax, %eax
	jne	.L50
	.loc 1 1027 56 discriminator 1
	movl	$0, %eax
	jmp	.L51
.L50:
	.loc 1 1028 25
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	.loc 1 1028 27
	imull	-12(%rbp), %eax
	.loc 1 1028 29
	imull	-16(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1028 32
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1028 11
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L51:
	.loc 1 1029 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	stbi__malloc_mad4, .-stbi__malloc_mad4
	.globl	stbi_image_free
	.type	stbi_image_free, @function
stbi_image_free:
.LFB524:
	.loc 1 1048 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1049 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1050 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	stbi_image_free, .-stbi_image_free
	.local	stbi__vertically_flip_on_load_global
	.comm	stbi__vertically_flip_on_load_global,4,4
	.globl	stbi_set_flip_vertically_on_load
	.type	stbi_set_flip_vertically_on_load, @function
stbi_set_flip_vertically_on_load:
.LFB525:
	.loc 1 1063 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 1064 41
	movl	-4(%rbp), %eax
	movl	%eax, stbi__vertically_flip_on_load_global(%rip)
	.loc 1 1065 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	stbi_set_flip_vertically_on_load, .-stbi_set_flip_vertically_on_load
	.section	.tbss
	.align 4
	.type	stbi__vertically_flip_on_load_local, @object
	.size	stbi__vertically_flip_on_load_local, 4
stbi__vertically_flip_on_load_local:
	.zero	4
	.align 4
	.type	stbi__vertically_flip_on_load_set, @object
	.size	stbi__vertically_flip_on_load_set, 4
stbi__vertically_flip_on_load_set:
	.zero	4
	.text
	.globl	stbi_set_flip_vertically_on_load_thread
	.type	stbi_set_flip_vertically_on_load_thread, @function
stbi_set_flip_vertically_on_load_thread:
.LFB526:
	.loc 1 1073 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 1074 40
	movl	-4(%rbp), %eax
	movl	%eax, %fs:stbi__vertically_flip_on_load_local@tpoff
	.loc 1 1075 38
	movl	$1, %fs:stbi__vertically_flip_on_load_set@tpoff
	.loc 1 1076 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	stbi_set_flip_vertically_on_load_thread, .-stbi_set_flip_vertically_on_load_thread
	.section	.rodata
.LC0:
	.string	"unknown image type"
	.text
	.type	stbi__load_main, @function
stbi__load_main:
.LFB527:
	.loc 1 1084 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 1085 4
	movq	-64(%rbp), %rax
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 1086 25
	movq	-64(%rbp), %rax
	movl	$8, (%rax)
	.loc 1 1087 22
	movq	-64(%rbp), %rax
	movl	$0, 8(%rax)
	.loc 1 1088 21
	movq	-64(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 1 1091 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_test
	.loc 1 1091 7
	testl	%eax, %eax
	je	.L56
	.loc 1 1091 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__jpeg_load
	jmp	.L57
.L56:
	.loc 1 1094 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_test
	.loc 1 1094 7
	testl	%eax, %eax
	je	.L58
	.loc 1 1094 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__png_load
	jmp	.L57
.L58:
	.loc 1 1097 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_test
	.loc 1 1097 7
	testl	%eax, %eax
	je	.L59
	.loc 1 1097 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__bmp_load
	jmp	.L57
.L59:
	.loc 1 1100 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test
	.loc 1 1100 7
	testl	%eax, %eax
	je	.L60
	.loc 1 1100 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__gif_load
	jmp	.L57
.L60:
	.loc 1 1103 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_test
	.loc 1 1103 7
	testl	%eax, %eax
	je	.L61
	.loc 1 1103 35 discriminator 1
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__psd_load
	addq	$16, %rsp
	jmp	.L57
.L61:
	.loc 1 1108 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_test
	.loc 1 1108 7
	testl	%eax, %eax
	je	.L62
	.loc 1 1108 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__pic_load
	jmp	.L57
.L62:
	.loc 1 1111 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_test
	.loc 1 1111 7
	testl	%eax, %eax
	je	.L63
	.loc 1 1111 35 discriminator 1
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__pnm_load
	jmp	.L57
.L63:
	.loc 1 1115 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	.loc 1 1115 7
	testl	%eax, %eax
	je	.L64
.LBB751:
	.loc 1 1116 20
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__hdr_load
	movq	%rax, -8(%rbp)
	.loc 1 1117 14
	cmpl	$0, -52(%rbp)
	jne	.L65
	.loc 1 1117 14 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L66
.L65:
	.loc 1 1117 14 discriminator 2
	movl	-52(%rbp), %eax
.L66:
	.loc 1 1117 14 discriminator 4
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__hdr_to_ldr
	jmp	.L57
.L64:
.LBE751:
	.loc 1 1123 8 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__tga_test
	.loc 1 1123 7
	testl	%eax, %eax
	je	.L67
	.loc 1 1124 14
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__tga_load
	jmp	.L57
.L67:
	.loc 1 1127 11
	leaq	.LC0(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L57:
	.loc 1 1128 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	stbi__load_main, .-stbi__load_main
	.section	.rodata
.LC1:
	.string	"outofmem"
	.text
	.type	stbi__convert_16_to_8, @function
stbi__convert_16_to_8:
.LFB528:
	.loc 1 1131 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	.loc 1 1133 20
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	.loc 1 1133 8
	movl	-36(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 1136 26
	movl	-8(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -16(%rbp)
	.loc 1 1137 7
	cmpq	$0, -16(%rbp)
	jne	.L69
	.loc 1 1137 32 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L70
.L69:
	.loc 1 1139 11
	movl	$0, -4(%rbp)
	.loc 1 1139 4
	jmp	.L71
.L72:
	.loc 1 1140 35 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 1140 20 discriminator 3
	shrw	$8, %ax
	movl	%eax, %ecx
	.loc 1 1140 14 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1140 20 discriminator 3
	movl	%ecx, %edx
	.loc 1 1140 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 1139 29 discriminator 3
	addl	$1, -4(%rbp)
.L71:
	.loc 1 1139 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L72
	.loc 1 1142 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1143 11
	movq	-16(%rbp), %rax
.L70:
	.loc 1 1144 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	stbi__convert_16_to_8, .-stbi__convert_16_to_8
	.type	stbi__convert_8_to_16, @function
stbi__convert_8_to_16:
.LFB529:
	.loc 1 1147 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	.loc 1 1149 20
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	.loc 1 1149 8
	movl	-36(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 1152 52
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	.loc 1 1152 32
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -16(%rbp)
	.loc 1 1153 7
	cmpq	$0, -16(%rbp)
	jne	.L74
	.loc 1 1153 50 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	.loc 1 1153 33 discriminator 1
	movl	$0, %eax
	jmp	.L75
.L74:
	.loc 1 1155 11
	movl	$0, -4(%rbp)
	.loc 1 1155 4
	jmp	.L76
.L77:
	.loc 1 1156 41 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 1156 45 discriminator 3
	sall	$8, %eax
	movl	%eax, %ecx
	.loc 1 1156 57 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 1156 15 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 1156 21 discriminator 3
	addl	%ecx, %edx
	.loc 1 1156 19 discriminator 3
	movw	%dx, (%rax)
	.loc 1 1155 29 discriminator 3
	addl	$1, -4(%rbp)
.L76:
	.loc 1 1155 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L77
	.loc 1 1158 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1159 11
	movq	-16(%rbp), %rax
.L75:
	.loc 1 1160 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	stbi__convert_8_to_16, .-stbi__convert_8_to_16
	.type	stbi__vertical_flip, @function
stbi__vertical_flip:
.LFB530:
	.loc 1 1163 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2144, %rsp
	movq	%rdi, -2120(%rbp)
	movl	%esi, -2124(%rbp)
	movl	%edx, -2128(%rbp)
	movl	%ecx, -2132(%rbp)
	.loc 1 1165 27
	movl	-2124(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 1165 37
	movl	-2132(%rbp), %eax
	cltq
	.loc 1 1165 11
	imulq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 1167 13
	movq	-2120(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 1169 13
	movl	$0, -4(%rbp)
	.loc 1 1169 4
	jmp	.L79
.L82:
.LBB752:
	.loc 1 1170 34
	movl	-4(%rbp), %eax
	cltq
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	.loc 1 1170 16
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 1171 34
	movl	-2128(%rbp), %eax
	subl	-4(%rbp), %eax
	.loc 1 1171 40
	subl	$1, %eax
	cltq
	.loc 1 1171 44
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	.loc 1 1171 16
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 1173 14
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 1174 13
	jmp	.L80
.L81:
.LBB753:
	.loc 1 1175 17
	movl	$2048, %eax
	cmpq	$2048, -32(%rbp)
	cmovbe	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 1176 10
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-2112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 1177 10
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 1178 10
	movq	-56(%rbp), %rdx
	leaq	-2112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 1179 15
	movq	-56(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 1 1180 15
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
	.loc 1 1181 21
	movq	-56(%rbp), %rax
	subq	%rax, -32(%rbp)
.L80:
.LBE753:
	.loc 1 1174 13
	cmpq	$0, -32(%rbp)
	jne	.L81
.LBE752:
	.loc 1 1169 35 discriminator 2
	addl	$1, -4(%rbp)
.L79:
	.loc 1 1169 26 discriminator 1
	movl	-2128(%rbp), %eax
	sarl	%eax
	.loc 1 1169 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L82
	.loc 1 1184 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	stbi__vertical_flip, .-stbi__vertical_flip
	.type	stbi__vertical_flip_slices, @function
stbi__vertical_flip_slices:
.LFB531:
	.loc 1 1188 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	.loc 1 1190 23
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	.loc 1 1190 8
	movl	-56(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 1 1192 13
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 1193 15
	movl	$0, -4(%rbp)
	.loc 1 1193 4
	jmp	.L84
.L85:
	.loc 1 1194 7 discriminator 3
	movl	-56(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
	.loc 1 1195 13 discriminator 3
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	.loc 1 1193 31 discriminator 3
	addl	$1, -4(%rbp)
.L84:
	.loc 1 1193 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L85
	.loc 1 1197 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	stbi__vertical_flip_slices, .-stbi__vertical_flip_slices
	.section	.rodata
.LC2:
	.string	"/usr/include/stb/stb_image.h"
	.align 8
.LC3:
	.string	"ri.bits_per_channel == 8 || ri.bits_per_channel == 16"
	.text
	.type	stbi__load_and_postprocess_8bit, @function
stbi__load_and_postprocess_8bit:
.LFB532:
	.loc 1 1201 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	.loc 1 1203 19
	leaq	-24(%rbp), %r8
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$8
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_main
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	.loc 1 1205 7
	cmpq	$0, -8(%rbp)
	jne	.L87
	.loc 1 1206 14
	movl	$0, %eax
	jmp	.L98
.L87:
	.loc 1 1209 4
	movl	-24(%rbp), %eax
	cmpl	$8, %eax
	je	.L89
	.loc 1 1209 4 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	$16, %eax
	je	.L89
	.loc 1 1209 4 discriminator 2
	leaq	__PRETTY_FUNCTION__.21(%rip), %rcx
	movl	$1209, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L89:
	.loc 1 1211 10 is_stmt 1
	movl	-24(%rbp), %eax
	.loc 1 1211 7
	cmpl	$8, %eax
	je	.L90
	.loc 1 1212 16
	cmpl	$0, -68(%rbp)
	jne	.L91
	.loc 1 1212 16 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L92
.L91:
	.loc 1 1212 16 discriminator 2
	movl	-68(%rbp), %eax
.L92:
	.loc 1 1212 16 discriminator 4
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-48(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__convert_16_to_8
	movq	%rax, -8(%rbp)
	.loc 1 1213 27 is_stmt 1 discriminator 4
	movl	$8, -24(%rbp)
.L90:
	.loc 1 1218 8
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L93
	.loc 1 1218 8 is_stmt 0 discriminator 1
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L94
.L93:
	.loc 1 1218 8 discriminator 2
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L94:
	.loc 1 1218 7 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L95
.LBB754:
	.loc 1 1219 42
	cmpl	$0, -68(%rbp)
	jne	.L96
	.loc 1 1219 42 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L97
.L96:
	.loc 1 1219 42 discriminator 2
	movl	-68(%rbp), %eax
.L97:
	.loc 1 1219 11 is_stmt 1 discriminator 4
	movl	%eax, -12(%rbp)
	.loc 1 1220 7 discriminator 4
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L95:
.LBE754:
	.loc 1 1223 11
	movq	-8(%rbp), %rax
.L98:
	.loc 1 1224 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	stbi__load_and_postprocess_8bit, .-stbi__load_and_postprocess_8bit
	.type	stbi__load_and_postprocess_16bit, @function
stbi__load_and_postprocess_16bit:
.LFB533:
	.loc 1 1227 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	.loc 1 1229 19
	leaq	-24(%rbp), %r8
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$16
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_main
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	.loc 1 1231 7
	cmpq	$0, -8(%rbp)
	jne	.L100
	.loc 1 1232 14
	movl	$0, %eax
	jmp	.L111
.L100:
	.loc 1 1235 4
	movl	-24(%rbp), %eax
	cmpl	$8, %eax
	je	.L102
	.loc 1 1235 4 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	$16, %eax
	je	.L102
	.loc 1 1235 4 discriminator 2
	leaq	__PRETTY_FUNCTION__.20(%rip), %rcx
	movl	$1235, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L102:
	.loc 1 1237 10 is_stmt 1
	movl	-24(%rbp), %eax
	.loc 1 1237 7
	cmpl	$16, %eax
	je	.L103
	.loc 1 1238 16
	cmpl	$0, -68(%rbp)
	jne	.L104
	.loc 1 1238 16 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L105
.L104:
	.loc 1 1238 16 discriminator 2
	movl	-68(%rbp), %eax
.L105:
	.loc 1 1238 16 discriminator 4
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-48(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__convert_8_to_16
	movq	%rax, -8(%rbp)
	.loc 1 1239 27 is_stmt 1 discriminator 4
	movl	$16, -24(%rbp)
.L103:
	.loc 1 1245 8
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L106
	.loc 1 1245 8 is_stmt 0 discriminator 1
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L107
.L106:
	.loc 1 1245 8 discriminator 2
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L107:
	.loc 1 1245 7 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L108
.LBB755:
	.loc 1 1246 42
	cmpl	$0, -68(%rbp)
	jne	.L109
	.loc 1 1246 42 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L110
.L109:
	.loc 1 1246 42 discriminator 2
	movl	-68(%rbp), %eax
.L110:
	.loc 1 1246 11 is_stmt 1 discriminator 4
	movl	%eax, -12(%rbp)
	.loc 1 1247 7 discriminator 4
	movl	-12(%rbp), %eax
	cltq
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L108:
.LBE755:
	.loc 1 1250 11
	movq	-8(%rbp), %rax
.L111:
	.loc 1 1251 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	stbi__load_and_postprocess_16bit, .-stbi__load_and_postprocess_16bit
	.type	stbi__float_postprocess, @function
stbi__float_postprocess:
.LFB534:
	.loc 1 1255 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	.loc 1 1256 8
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	.loc 1 1256 38
	testl	%eax, %eax
	je	.L113
	.loc 1 1256 38 is_stmt 0 discriminator 1
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L114
.L113:
	.loc 1 1256 38 discriminator 2
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L114:
	.loc 1 1256 7 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L118
	.loc 1 1256 38 discriminator 5
	cmpq	$0, -24(%rbp)
	je	.L118
.LBB756:
	.loc 1 1257 42
	cmpl	$0, -52(%rbp)
	jne	.L116
	.loc 1 1257 42 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L117
.L116:
	.loc 1 1257 42 discriminator 2
	movl	-52(%rbp), %eax
.L117:
	.loc 1 1257 11 is_stmt 1 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 1 1258 7 discriminator 4
	movl	-4(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L118:
.LBE756:
	.loc 1 1260 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	stbi__float_postprocess, .-stbi__float_postprocess
	.type	stbi__fopen, @function
stbi__fopen:
.LFB535:
	.loc 1 1278 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 1300 8
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 1302 11
	movq	-8(%rbp), %rax
	.loc 1 1303 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	stbi__fopen, .-stbi__fopen
	.section	.rodata
.LC4:
	.string	"rb"
.LC5:
	.string	"can't fopen"
	.text
	.globl	stbi_load
	.type	stbi_load, @function
stbi_load:
.LFB536:
	.loc 1 1307 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	.loc 1 1308 14
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	.loc 1 1310 7
	cmpq	$0, -8(%rbp)
	jne	.L122
	.loc 1 1310 19 discriminator 1
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L123
.L122:
	.loc 1 1311 13
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_load_from_file
	movq	%rax, -16(%rbp)
	.loc 1 1312 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 1313 11
	movq	-16(%rbp), %rax
.L123:
	.loc 1 1314 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	stbi_load, .-stbi_load
	.globl	stbi_load_from_file
	.type	stbi_load_from_file, @function
stbi_load_from_file:
.LFB537:
	.loc 1 1317 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	.loc 1 1320 4
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 1321 13
	movl	-276(%rbp), %edi
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	%rax, -8(%rbp)
	.loc 1 1322 7
	cmpq	$0, -8(%rbp)
	je	.L125
	.loc 1 1324 26
	movq	-40(%rbp), %rax
	.loc 1 1324 45
	movq	-48(%rbp), %rdx
	.loc 1 1324 42
	subq	%rdx, %rax
	.loc 1 1324 16
	negl	%eax
	.loc 1 1324 7
	movslq	%eax, %rcx
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L125:
	.loc 1 1326 11
	movq	-8(%rbp), %rax
	.loc 1 1327 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	stbi_load_from_file, .-stbi_load_from_file
	.globl	stbi_load_from_file_16
	.type	stbi_load_from_file_16, @function
stbi_load_from_file_16:
.LFB538:
	.loc 1 1330 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	.loc 1 1333 4
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 1334 13
	movl	-276(%rbp), %edi
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	movq	%rax, -8(%rbp)
	.loc 1 1335 7
	cmpq	$0, -8(%rbp)
	je	.L128
	.loc 1 1337 26
	movq	-40(%rbp), %rax
	.loc 1 1337 45
	movq	-48(%rbp), %rdx
	.loc 1 1337 42
	subq	%rdx, %rax
	.loc 1 1337 16
	negl	%eax
	.loc 1 1337 7
	movslq	%eax, %rcx
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L128:
	.loc 1 1339 11
	movq	-8(%rbp), %rax
	.loc 1 1340 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	stbi_load_from_file_16, .-stbi_load_from_file_16
	.globl	stbi_load_16
	.type	stbi_load_16, @function
stbi_load_16:
.LFB539:
	.loc 1 1343 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	.loc 1 1344 14
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	.loc 1 1346 7
	cmpq	$0, -8(%rbp)
	jne	.L131
	.loc 1 1346 31 discriminator 1
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	.loc 1 1346 19 discriminator 1
	movl	$0, %eax
	jmp	.L132
.L131:
	.loc 1 1347 13
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_load_from_file_16
	movq	%rax, -16(%rbp)
	.loc 1 1348 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 1349 11
	movq	-16(%rbp), %rax
.L132:
	.loc 1 1350 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	stbi_load_16, .-stbi_load_16
	.globl	stbi_load_16_from_memory
	.type	stbi_load_16_from_memory, @function
stbi_load_16_from_memory:
.LFB540:
	.loc 1 1356 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -240(%rbp)
	.loc 1 1358 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 1359 11
	movl	-240(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	.loc 1 1360 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	stbi_load_16_from_memory, .-stbi_load_16_from_memory
	.globl	stbi_load_16_from_callbacks
	.type	stbi_load_16_from_callbacks, @function
stbi_load_16_from_callbacks:
.LFB541:
	.loc 1 1363 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -268(%rbp)
	.loc 1 1365 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 1366 11
	movl	-268(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	.loc 1 1367 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	stbi_load_16_from_callbacks, .-stbi_load_16_from_callbacks
	.globl	stbi_load_from_memory
	.type	stbi_load_from_memory, @function
stbi_load_from_memory:
.LFB542:
	.loc 1 1370 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -240(%rbp)
	.loc 1 1372 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 1373 11
	movl	-240(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	.loc 1 1374 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	stbi_load_from_memory, .-stbi_load_from_memory
	.globl	stbi_load_from_callbacks
	.type	stbi_load_from_callbacks, @function
stbi_load_from_callbacks:
.LFB543:
	.loc 1 1377 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -268(%rbp)
	.loc 1 1379 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 1380 11
	movl	-268(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	.loc 1 1381 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	stbi_load_from_callbacks, .-stbi_load_from_callbacks
	.globl	stbi_load_gif_from_memory
	.type	stbi_load_gif_from_memory, @function
stbi_load_gif_from_memory:
.LFB544:
	.loc 1 1385 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	.loc 1 1388 4
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 1390 30
	movq	-288(%rbp), %r8
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	subq	$8, %rsp
	movl	24(%rbp), %edi
	pushq	%rdi
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	stbi__load_gif_main
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	.loc 1 1391 8
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L142
	.loc 1 1391 8 is_stmt 0 discriminator 1
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L143
.L142:
	.loc 1 1391 8 discriminator 2
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L143:
	.loc 1 1391 7 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L144
	.loc 1 1392 7
	movq	16(%rbp), %rax
	movl	(%rax), %edi
	movq	-288(%rbp), %rax
	movl	(%rax), %ecx
	movq	-280(%rbp), %rax
	movl	(%rax), %edx
	movq	-272(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__vertical_flip_slices
.L144:
	.loc 1 1395 11
	movq	-8(%rbp), %rax
	.loc 1 1396 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	stbi_load_gif_from_memory, .-stbi_load_gif_from_memory
	.type	stbi__loadf_main, @function
stbi__loadf_main:
.LFB545:
	.loc 1 1401 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	.loc 1 1404 8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	.loc 1 1404 7
	testl	%eax, %eax
	je	.L147
.LBB757:
	.loc 1 1406 25
	leaq	-28(%rbp), %r8
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__hdr_load
	movq	%rax, -16(%rbp)
	.loc 1 1407 10
	cmpq	$0, -16(%rbp)
	je	.L148
	.loc 1 1408 10
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__float_postprocess
.L148:
	.loc 1 1409 14
	movq	-16(%rbp), %rax
	jmp	.L149
.L147:
.LBE757:
	.loc 1 1412 11
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	%rax, -8(%rbp)
	.loc 1 1413 7
	cmpq	$0, -8(%rbp)
	je	.L150
	.loc 1 1414 14
	cmpl	$0, -68(%rbp)
	jne	.L151
	.loc 1 1414 14 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L152
.L151:
	.loc 1 1414 14 discriminator 2
	movl	-68(%rbp), %eax
.L152:
	.loc 1 1414 14 discriminator 4
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-48(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__ldr_to_hdr
	jmp	.L149
.L150:
	.loc 1 1415 11 is_stmt 1
	leaq	.LC0(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L149:
	.loc 1 1416 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	stbi__loadf_main, .-stbi__loadf_main
	.globl	stbi_loadf_from_memory
	.type	stbi_loadf_from_memory, @function
stbi_loadf_from_memory:
.LFB546:
	.loc 1 1419 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -240(%rbp)
	.loc 1 1421 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 1422 11
	movl	-240(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	.loc 1 1423 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	stbi_loadf_from_memory, .-stbi_loadf_from_memory
	.globl	stbi_loadf_from_callbacks
	.type	stbi_loadf_from_callbacks, @function
stbi_loadf_from_callbacks:
.LFB547:
	.loc 1 1426 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -268(%rbp)
	.loc 1 1428 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 1429 11
	movl	-268(%rbp), %edi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	.loc 1 1430 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	stbi_loadf_from_callbacks, .-stbi_loadf_from_callbacks
	.globl	stbi_loadf
	.type	stbi_loadf, @function
stbi_loadf:
.LFB548:
	.loc 1 1434 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	.loc 1 1436 14
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	.loc 1 1437 7
	cmpq	$0, -8(%rbp)
	jne	.L158
	.loc 1 1437 19 discriminator 1
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L159
.L158:
	.loc 1 1438 13
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_loadf_from_file
	movq	%rax, -16(%rbp)
	.loc 1 1439 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 1440 11
	movq	-16(%rbp), %rax
.L159:
	.loc 1 1441 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	stbi_loadf, .-stbi_loadf
	.globl	stbi_loadf_from_file
	.type	stbi_loadf_from_file, @function
stbi_loadf_from_file:
.LFB549:
	.loc 1 1444 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movl	%r8d, -260(%rbp)
	.loc 1 1446 4
	movq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 1447 11
	movl	-260(%rbp), %edi
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	.loc 1 1448 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	stbi_loadf_from_file, .-stbi_loadf_from_file
	.globl	stbi_is_hdr_from_memory
	.type	stbi_is_hdr_from_memory, @function
stbi_is_hdr_from_memory:
.LFB550:
	.loc 1 1458 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	.loc 1 1461 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 1462 11
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	.loc 1 1468 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	stbi_is_hdr_from_memory, .-stbi_is_hdr_from_memory
	.globl	stbi_is_hdr
	.type	stbi_is_hdr, @function
stbi_is_hdr:
.LFB551:
	.loc 1 1472 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 1473 14
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -16(%rbp)
	.loc 1 1474 8
	movl	$0, -4(%rbp)
	.loc 1 1475 7
	cmpq	$0, -16(%rbp)
	je	.L165
	.loc 1 1476 16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_is_hdr_from_file
	movl	%eax, -4(%rbp)
	.loc 1 1477 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L165:
	.loc 1 1479 11
	movl	-4(%rbp), %eax
	.loc 1 1480 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	stbi_is_hdr, .-stbi_is_hdr
	.globl	stbi_is_hdr_from_file
	.type	stbi_is_hdr_from_file, @function
stbi_is_hdr_from_file:
.LFB552:
	.loc 1 1483 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	.loc 1 1485 15
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	.loc 1 1488 4
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 1489 10
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	movl	%eax, -12(%rbp)
	.loc 1 1490 4
	movq	-8(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 1491 11
	movl	-12(%rbp), %eax
	.loc 1 1496 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	stbi_is_hdr_from_file, .-stbi_is_hdr_from_file
	.globl	stbi_is_hdr_from_callbacks
	.type	stbi_is_hdr_from_callbacks, @function
stbi_is_hdr_from_callbacks:
.LFB553:
	.loc 1 1500 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	.loc 1 1503 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 1504 11
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	.loc 1 1510 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	stbi_is_hdr_from_callbacks, .-stbi_is_hdr_from_callbacks
	.data
	.align 4
	.type	stbi__l2h_gamma, @object
	.size	stbi__l2h_gamma, 4
stbi__l2h_gamma:
	.long	1074580685
	.align 4
	.type	stbi__l2h_scale, @object
	.size	stbi__l2h_scale, 4
stbi__l2h_scale:
	.long	1065353216
	.text
	.globl	stbi_ldr_to_hdr_gamma
	.type	stbi_ldr_to_hdr_gamma, @function
stbi_ldr_to_hdr_gamma:
.LFB554:
	.loc 1 1515 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	.loc 1 1515 69
	movss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__l2h_gamma(%rip)
	.loc 1 1515 78
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	stbi_ldr_to_hdr_gamma, .-stbi_ldr_to_hdr_gamma
	.globl	stbi_ldr_to_hdr_scale
	.type	stbi_ldr_to_hdr_scale, @function
stbi_ldr_to_hdr_scale:
.LFB555:
	.loc 1 1516 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	.loc 1 1516 69
	movss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__l2h_scale(%rip)
	.loc 1 1516 78
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	stbi_ldr_to_hdr_scale, .-stbi_ldr_to_hdr_scale
	.data
	.align 4
	.type	stbi__h2l_gamma_i, @object
	.size	stbi__h2l_gamma_i, 4
stbi__h2l_gamma_i:
	.long	1055439406
	.align 4
	.type	stbi__h2l_scale_i, @object
	.size	stbi__h2l_scale_i, 4
stbi__h2l_scale_i:
	.long	1065353216
	.text
	.globl	stbi_hdr_to_ldr_gamma
	.type	stbi_hdr_to_ldr_gamma, @function
stbi_hdr_to_ldr_gamma:
.LFB556:
	.loc 1 1521 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	.loc 1 1521 74
	movss	.LC6(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	.loc 1 1521 71
	movss	%xmm0, stbi__h2l_gamma_i(%rip)
	.loc 1 1521 82
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	stbi_hdr_to_ldr_gamma, .-stbi_hdr_to_ldr_gamma
	.globl	stbi_hdr_to_ldr_scale
	.type	stbi_hdr_to_ldr_scale, @function
stbi_hdr_to_ldr_scale:
.LFB557:
	.loc 1 1522 51
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	.loc 1 1522 74
	movss	.LC6(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	.loc 1 1522 71
	movss	%xmm0, stbi__h2l_scale_i(%rip)
	.loc 1 1522 82
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	stbi_hdr_to_ldr_scale, .-stbi_hdr_to_ldr_scale
	.type	stbi__refill_buffer, @function
stbi__refill_buffer:
.LFB558:
	.loc 1 1538 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 1539 18
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	.loc 1 1539 48
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rsi
	.loc 1 1539 18
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rcx
.LVL0:
	movl	%eax, -4(%rbp)
	.loc 1 1540 29
	movq	-24(%rbp), %rax
	movl	184(%rax), %ecx
	.loc 1 1540 40
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	.loc 1 1540 56
	movq	-24(%rbp), %rax
	movq	208(%rax), %rsi
	.loc 1 1540 53
	movq	%rdx, %rax
	subq	%rsi, %rax
	.loc 1 1540 29
	leal	(%rcx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 184(%rax)
	.loc 1 1541 7
	cmpl	$0, -4(%rbp)
	jne	.L176
	.loc 1 1544 30
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	.loc 1 1545 23
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	.loc 1 1545 21
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1546 27
	movq	-24(%rbp), %rax
	addq	$56, %rax
	.loc 1 1546 42
	leaq	1(%rax), %rdx
	.loc 1 1546 25
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	.loc 1 1547 9
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	.loc 1 1547 22
	movb	$0, (%rax)
	.loc 1 1552 1
	jmp	.L178
.L176:
	.loc 1 1549 23
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	.loc 1 1549 21
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1550 27
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	.loc 1 1550 43
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	.loc 1 1550 25
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
.L178:
	.loc 1 1552 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	stbi__refill_buffer, .-stbi__refill_buffer
	.type	stbi__get8, @function
stbi__get8:
.LFB559:
	.loc 1 1555 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1556 9
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	.loc 1 1556 25
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	.loc 1 1556 7
	cmpq	%rax, %rdx
	jnb	.L180
	.loc 1 1557 16
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	.loc 1 1557 28
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 192(%rdx)
	.loc 1 1557 14
	movzbl	(%rax), %eax
	jmp	.L181
.L180:
	.loc 1 1558 9
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 1558 7
	testl	%eax, %eax
	je	.L182
	.loc 1 1559 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__refill_buffer
	.loc 1 1560 16
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	.loc 1 1560 28
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 192(%rdx)
	.loc 1 1560 14
	movzbl	(%rax), %eax
	jmp	.L181
.L182:
	.loc 1 1562 11
	movl	$0, %eax
.L181:
	.loc 1 1563 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	stbi__get8, .-stbi__get8
	.type	stbi__at_eof, @function
stbi__at_eof:
.LFB560:
	.loc 1 1569 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 1570 13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 1570 7
	testq	%rax, %rax
	je	.L184
	.loc 1 1571 18
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.LVL1:
	.loc 1 1571 10
	testl	%eax, %eax
	jne	.L185
	.loc 1 1571 49 discriminator 1
	movl	$0, %eax
	jmp	.L186
.L185:
	.loc 1 1574 12
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 1574 10
	testl	%eax, %eax
	jne	.L184
	.loc 1 1574 47 discriminator 1
	movl	$1, %eax
	jmp	.L186
.L184:
	.loc 1 1577 12
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	.loc 1 1577 29
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	.loc 1 1577 25
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
.L186:
	.loc 1 1578 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	stbi__at_eof, .-stbi__at_eof
	.type	stbi__skip, @function
stbi__skip:
.LFB561:
	.loc 1 1585 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 1586 7
	cmpl	$0, -28(%rbp)
	je	.L192
	.loc 1 1587 7
	cmpl	$0, -28(%rbp)
	jns	.L190
	.loc 1 1588 24
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 1588 21
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1589 7
	jmp	.L187
.L190:
	.loc 1 1591 13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 1591 7
	testq	%rax, %rax
	je	.L191
.LBB758:
	.loc 1 1592 26
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 1592 46
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	.loc 1 1592 43
	movq	%rdx, %rax
	subq	%rcx, %rax
	.loc 1 1592 11
	movl	%eax, -4(%rbp)
	.loc 1 1593 10
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L191
	.loc 1 1594 27
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 1594 24
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1595 16
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
.LVL2:
	.loc 1 1596 10
	jmp	.L187
.L191:
.LBE758:
	.loc 1 1599 18
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L187
.L192:
	.loc 1 1586 16
	nop
.L187:
	.loc 1 1600 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	stbi__skip, .-stbi__skip
	.type	stbi__getn, @function
stbi__getn:
.LFB562:
	.loc 1 1607 1
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
	.loc 1 1608 13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 1608 7
	testq	%rax, %rax
	je	.L194
.LBB759:
	.loc 1 1609 26
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 1609 46
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	.loc 1 1609 43
	movq	%rdx, %rax
	subq	%rcx, %rax
	.loc 1 1609 11
	movl	%eax, -4(%rbp)
	.loc 1 1610 10
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L194
.LBB760:
	.loc 1 1613 10
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 1613 26
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	.loc 1 1613 10
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 1615 24
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rcx
.LVL3:
	movl	%eax, -8(%rbp)
	.loc 1 1616 28
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	.loc 1 1616 23
	cmpl	%eax, -8(%rbp)
	sete	%al
	.loc 1 1616 14
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 1617 27
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	.loc 1 1617 24
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1618 17
	movl	-12(%rbp), %eax
	jmp	.L195
.L194:
.LBE760:
.LBE759:
	.loc 1 1622 9
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	.loc 1 1622 21
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	.loc 1 1622 28
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	.loc 1 1622 7
	cmpq	%rax, %rdx
	ja	.L196
	.loc 1 1623 7
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 1623 23
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	.loc 1 1623 7
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 1624 21
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	.loc 1 1625 14
	movl	$1, %eax
	jmp	.L195
.L196:
	.loc 1 1627 14
	movl	$0, %eax
.L195:
	.loc 1 1628 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	stbi__getn, .-stbi__getn
	.type	stbi__get16be, @function
stbi__get16be:
.LFB563:
	.loc 1 1635 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 1 1636 12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 1636 8
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 1637 14
	movl	-20(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ebx
	.loc 1 1637 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	.loc 1 1637 20
	addl	%ebx, %eax
	.loc 1 1638 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	stbi__get16be, .-stbi__get16be
	.type	stbi__get32be, @function
stbi__get32be:
.LFB564:
	.loc 1 1645 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 1 1646 21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 1646 17
	movl	%eax, -20(%rbp)
	.loc 1 1647 14
	movl	-20(%rbp), %eax
	sall	$16, %eax
	movl	%eax, %ebx
	.loc 1 1647 23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 1647 21
	addl	%ebx, %eax
	.loc 1 1648 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	stbi__get32be, .-stbi__get32be
	.type	stbi__get16le, @function
stbi__get16le:
.LFB565:
	.loc 1 1655 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 1656 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 1656 8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 1657 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	.loc 1 1657 30
	sall	$8, %eax
	movl	%eax, %edx
	.loc 1 1657 13
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1658 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	stbi__get16le, .-stbi__get16le
	.type	stbi__get32le, @function
stbi__get32le:
.LFB566:
	.loc 1 1663 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 1664 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 1664 17
	movl	%eax, -4(%rbp)
	.loc 1 1665 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 1665 33
	sall	$16, %eax
	movl	%eax, %edx
	.loc 1 1665 13
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1666 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	stbi__get32le, .-stbi__get32le
	.type	stbi__compute_y, @function
stbi__compute_y:
.LFB567:
	.loc 1 1686 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 1687 25
	movl	-4(%rbp), %eax
	imull	$77, %eax, %edx
	.loc 1 1687 34
	movl	-8(%rbp), %eax
	imull	$150, %eax, %eax
	.loc 1 1687 30
	addl	%eax, %edx
	.loc 1 1687 46
	movl	-12(%rbp), %eax
	imull	$29, %eax, %eax
	.loc 1 1687 40
	addl	%edx, %eax
	.loc 1 1687 51
	sarl	$8, %eax
	.loc 1 1688 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	stbi__compute_y, .-stbi__compute_y
	.section	.rodata
	.align 8
.LC7:
	.string	"req_comp >= 1 && req_comp <= 4"
.LC8:
	.string	"0"
	.text
	.type	stbi__convert_format, @function
stbi__convert_format:
.LFB568:
	.loc 1 1695 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	.loc 1 1699 7
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L208
	.loc 1 1699 34 discriminator 1
	movq	-40(%rbp), %rax
	jmp	.L209
.L208:
	.loc 1 1700 4
	cmpl	$0, -48(%rbp)
	jle	.L210
	.loc 1 1700 4 is_stmt 0 discriminator 1
	cmpl	$4, -48(%rbp)
	jle	.L255
.L210:
	.loc 1 1700 4 discriminator 3
	leaq	__PRETTY_FUNCTION__.19(%rip), %rcx
	movl	$1700, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L255:
	.loc 1 1702 29 is_stmt 1
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -32(%rbp)
	.loc 1 1703 7
	cmpq	$0, -32(%rbp)
	jne	.L212
	.loc 1 1704 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1705 14
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L209
.L212:
	.loc 1 1708 10
	movl	$0, -8(%rbp)
	.loc 1 1708 4
	jmp	.L213
.L253:
.LBB761:
	.loc 1 1709 38
	movl	-8(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1709 42
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 1709 22
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 1710 38
	movl	-8(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1710 42
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 1710 22
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 1716 15
	movl	-44(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	subl	$10, %eax
	cmpl	$25, %eax
	ja	.L254
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L216(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L216(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L216:
	.long	.L227-.L216
	.long	.L226-.L216
	.long	.L225-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L224-.L216
	.long	.L254-.L216
	.long	.L223-.L216
	.long	.L222-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L221-.L216
	.long	.L220-.L216
	.long	.L254-.L216
	.long	.L219-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L254-.L216
	.long	.L218-.L216
	.long	.L217-.L216
	.long	.L215-.L216
	.text
.L227:
	.loc 1 1717 10
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L228
.L229:
	.loc 1 1717 39 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 1717 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1717 48 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1717 51 discriminator 3
	movb	$-1, (%rax)
	.loc 1 1717 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$1, -16(%rbp)
	addq	$2, -24(%rbp)
.L228:
	.loc 1 1717 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L229
	.loc 1 1717 10
	jmp	.L230
.L226:
	.loc 1 1718 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L231
.L232:
	.loc 1 1718 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1718 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1718 51 discriminator 3
	movb	%al, (%rdx)
	.loc 1 1718 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1718 48 discriminator 3
	movzbl	(%rdx), %edx
	.loc 1 1718 43 discriminator 3
	movb	%dl, (%rax)
	.loc 1 1718 40 discriminator 3
	movzbl	(%rax), %edx
	.loc 1 1718 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1718 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$1, -16(%rbp)
	addq	$3, -24(%rbp)
.L231:
	.loc 1 1718 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L232
	.loc 1 1718 10
	jmp	.L230
.L225:
	.loc 1 1719 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L233
.L234:
	.loc 1 1719 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1719 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1719 51 discriminator 3
	movb	%al, (%rdx)
	.loc 1 1719 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1719 48 discriminator 3
	movzbl	(%rdx), %edx
	.loc 1 1719 43 discriminator 3
	movb	%dl, (%rax)
	.loc 1 1719 40 discriminator 3
	movzbl	(%rax), %edx
	.loc 1 1719 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1719 64 discriminator 3
	movq	-24(%rbp), %rax
	addq	$3, %rax
	.loc 1 1719 67 discriminator 3
	movb	$-1, (%rax)
	.loc 1 1719 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$1, -16(%rbp)
	addq	$4, -24(%rbp)
.L233:
	.loc 1 1719 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L234
	.loc 1 1719 10
	jmp	.L230
.L224:
	.loc 1 1720 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L235
.L236:
	.loc 1 1720 39 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 1720 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1720 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$1, -24(%rbp)
.L235:
	.loc 1 1720 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L236
	.loc 1 1720 10
	jmp	.L230
.L223:
	.loc 1 1721 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L237
.L238:
	.loc 1 1721 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1721 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1721 51 discriminator 3
	movb	%al, (%rdx)
	.loc 1 1721 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1721 48 discriminator 3
	movzbl	(%rdx), %edx
	.loc 1 1721 43 discriminator 3
	movb	%dl, (%rax)
	.loc 1 1721 40 discriminator 3
	movzbl	(%rax), %edx
	.loc 1 1721 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1721 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$3, -24(%rbp)
.L237:
	.loc 1 1721 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L238
	.loc 1 1721 10
	jmp	.L230
.L222:
	.loc 1 1722 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L239
.L240:
	.loc 1 1722 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1722 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1722 51 discriminator 3
	movb	%al, (%rdx)
	.loc 1 1722 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1722 48 discriminator 3
	movzbl	(%rdx), %edx
	.loc 1 1722 43 discriminator 3
	movb	%dl, (%rax)
	.loc 1 1722 40 discriminator 3
	movzbl	(%rax), %edx
	.loc 1 1722 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1722 64 discriminator 3
	movq	-24(%rbp), %rax
	leaq	3(%rax), %rdx
	.loc 1 1722 67 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1722 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$4, -24(%rbp)
.L239:
	.loc 1 1722 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L240
	.loc 1 1722 10
	jmp	.L230
.L219:
	.loc 1 1723 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L241
.L242:
	.loc 1 1723 39 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 1723 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1723 47 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 1 1723 50 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1723 62 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1723 65 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1723 77 discriminator 3
	movq	-24(%rbp), %rax
	addq	$3, %rax
	.loc 1 1723 80 discriminator 3
	movb	$-1, (%rax)
	.loc 1 1723 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$3, -16(%rbp)
	addq	$4, -24(%rbp)
.L241:
	.loc 1 1723 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L242
	.loc 1 1723 10
	jmp	.L230
.L221:
	.loc 1 1724 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L243
.L244:
	.loc 1 1724 69 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 1724 36 discriminator 3
	movzbl	%al, %edx
	.loc 1 1724 62 discriminator 3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 1724 36 discriminator 3
	movzbl	%al, %ecx
	.loc 1 1724 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1724 36 discriminator 3
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 1724 35 discriminator 3
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 1724 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$3, -16(%rbp)
	addq	$1, -24(%rbp)
.L243:
	.loc 1 1724 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L244
	.loc 1 1724 10
	jmp	.L230
.L220:
	.loc 1 1725 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L245
.L246:
	.loc 1 1725 69 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 1725 36 discriminator 3
	movzbl	%al, %edx
	.loc 1 1725 62 discriminator 3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 1725 36 discriminator 3
	movzbl	%al, %ecx
	.loc 1 1725 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1725 36 discriminator 3
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 1725 35 discriminator 3
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 1725 79 discriminator 3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 1725 83 discriminator 3
	movb	$-1, (%rax)
	.loc 1 1725 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$3, -16(%rbp)
	addq	$2, -24(%rbp)
.L245:
	.loc 1 1725 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L246
	.loc 1 1725 10
	jmp	.L230
.L218:
	.loc 1 1726 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L247
.L248:
	.loc 1 1726 69 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 1726 36 discriminator 3
	movzbl	%al, %edx
	.loc 1 1726 62 discriminator 3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 1726 36 discriminator 3
	movzbl	%al, %ecx
	.loc 1 1726 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1726 36 discriminator 3
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 1726 35 discriminator 3
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 1726 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$1, -24(%rbp)
.L247:
	.loc 1 1726 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L248
	.loc 1 1726 10
	jmp	.L230
.L217:
	.loc 1 1727 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L249
.L250:
	.loc 1 1727 69 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 1727 36 discriminator 3
	movzbl	%al, %edx
	.loc 1 1727 62 discriminator 3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 1727 36 discriminator 3
	movzbl	%al, %ecx
	.loc 1 1727 55 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 1727 36 discriminator 3
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 1727 35 discriminator 3
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 1727 79 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 1 1727 83 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1727 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$2, -24(%rbp)
.L249:
	.loc 1 1727 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L250
	.loc 1 1727 10
	jmp	.L230
.L215:
	.loc 1 1728 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L251
.L252:
	.loc 1 1728 39 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 1728 35 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 1728 47 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 1 1728 50 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1728 62 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1728 65 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 1728 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$3, -24(%rbp)
.L251:
	.loc 1 1728 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L252
	.loc 1 1728 10
	jmp	.L230
.L254:
	.loc 1 1729 19 is_stmt 1 discriminator 1
	leaq	__PRETTY_FUNCTION__.19(%rip), %rcx
	movl	$1729, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L230:
.LBE761:
	.loc 1 1708 27 discriminator 2
	addl	$1, -8(%rbp)
.L213:
	.loc 1 1708 18 discriminator 1
	movl	-56(%rbp), %eax
	.loc 1 1708 4 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L253
	.loc 1 1734 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1735 11
	movq	-32(%rbp), %rax
.L209:
	.loc 1 1736 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	stbi__convert_format, .-stbi__convert_format
	.type	stbi__compute_y_16, @function
stbi__compute_y_16:
.LFB569:
	.loc 1 1743 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 1744 30
	movl	-4(%rbp), %eax
	imull	$77, %eax, %edx
	.loc 1 1744 39
	movl	-8(%rbp), %eax
	imull	$150, %eax, %eax
	.loc 1 1744 35
	addl	%eax, %edx
	.loc 1 1744 51
	movl	-12(%rbp), %eax
	imull	$29, %eax, %eax
	.loc 1 1744 45
	addl	%edx, %eax
	.loc 1 1744 56
	sarl	$8, %eax
	.loc 1 1745 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	stbi__compute_y_16, .-stbi__compute_y_16
	.type	stbi__convert_format16, @function
stbi__convert_format16:
.LFB570:
	.loc 1 1752 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	.loc 1 1756 7
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L259
	.loc 1 1756 34 discriminator 1
	movq	-40(%rbp), %rax
	jmp	.L260
.L259:
	.loc 1 1757 4
	cmpl	$0, -48(%rbp)
	jle	.L261
	.loc 1 1757 4 is_stmt 0 discriminator 1
	cmpl	$4, -48(%rbp)
	jle	.L306
.L261:
	.loc 1 1757 4 discriminator 3
	leaq	__PRETTY_FUNCTION__.18(%rip), %rcx
	movl	$1757, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L306:
	.loc 1 1759 50 is_stmt 1
	movl	-48(%rbp), %eax
	imull	-52(%rbp), %eax
	.loc 1 1759 54
	imull	-56(%rbp), %eax
	.loc 1 1759 58
	addl	%eax, %eax
	.loc 1 1759 28
	movl	%eax, %eax
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -32(%rbp)
	.loc 1 1760 7
	cmpq	$0, -32(%rbp)
	jne	.L263
	.loc 1 1761 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1762 31
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	.loc 1 1762 14
	movl	$0, %eax
	jmp	.L260
.L263:
	.loc 1 1765 10
	movl	$0, -8(%rbp)
	.loc 1 1765 4
	jmp	.L264
.L304:
.LBB762:
	.loc 1 1766 37
	movl	-8(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1766 41
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 1766 33
	leaq	(%rax,%rax), %rdx
	.loc 1 1766 21
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 1767 37
	movl	-8(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1767 41
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %eax
	.loc 1 1767 33
	leaq	(%rax,%rax), %rdx
	.loc 1 1767 21
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 1773 15
	movl	-44(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	subl	$10, %eax
	cmpl	$25, %eax
	ja	.L305
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L267(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L267(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L267:
	.long	.L278-.L267
	.long	.L277-.L267
	.long	.L276-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L275-.L267
	.long	.L305-.L267
	.long	.L274-.L267
	.long	.L273-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L272-.L267
	.long	.L271-.L267
	.long	.L305-.L267
	.long	.L270-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L305-.L267
	.long	.L269-.L267
	.long	.L268-.L267
	.long	.L266-.L267
	.text
.L278:
	.loc 1 1774 10
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L279
.L280:
	.loc 1 1774 39 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 1774 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1774 48 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1774 51 discriminator 3
	movw	$-1, (%rax)
	.loc 1 1774 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$4, -24(%rbp)
.L279:
	.loc 1 1774 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L280
	.loc 1 1774 10
	jmp	.L281
.L277:
	.loc 1 1775 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L282
.L283:
	.loc 1 1775 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1775 55 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1775 51 discriminator 3
	movw	%ax, (%rdx)
	.loc 1 1775 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1775 48 discriminator 3
	movzwl	(%rdx), %edx
	.loc 1 1775 43 discriminator 3
	movw	%dx, (%rax)
	.loc 1 1775 40 discriminator 3
	movzwl	(%rax), %edx
	.loc 1 1775 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1775 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$6, -24(%rbp)
.L282:
	.loc 1 1775 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L283
	.loc 1 1775 10
	jmp	.L281
.L276:
	.loc 1 1776 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L284
.L285:
	.loc 1 1776 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1776 55 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1776 51 discriminator 3
	movw	%ax, (%rdx)
	.loc 1 1776 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1776 48 discriminator 3
	movzwl	(%rdx), %edx
	.loc 1 1776 43 discriminator 3
	movw	%dx, (%rax)
	.loc 1 1776 40 discriminator 3
	movzwl	(%rax), %edx
	.loc 1 1776 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1776 64 discriminator 3
	movq	-24(%rbp), %rax
	addq	$6, %rax
	.loc 1 1776 67 discriminator 3
	movw	$-1, (%rax)
	.loc 1 1776 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$2, -16(%rbp)
	addq	$8, -24(%rbp)
.L284:
	.loc 1 1776 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L285
	.loc 1 1776 10
	jmp	.L281
.L275:
	.loc 1 1777 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L286
.L287:
	.loc 1 1777 39 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 1777 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1777 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$2, -24(%rbp)
.L286:
	.loc 1 1777 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L287
	.loc 1 1777 10
	jmp	.L281
.L274:
	.loc 1 1778 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L288
.L289:
	.loc 1 1778 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1778 55 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1778 51 discriminator 3
	movw	%ax, (%rdx)
	.loc 1 1778 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1778 48 discriminator 3
	movzwl	(%rdx), %edx
	.loc 1 1778 43 discriminator 3
	movw	%dx, (%rax)
	.loc 1 1778 40 discriminator 3
	movzwl	(%rax), %edx
	.loc 1 1778 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1778 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$6, -24(%rbp)
.L288:
	.loc 1 1778 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L289
	.loc 1 1778 10
	jmp	.L281
.L273:
	.loc 1 1779 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L290
.L291:
	.loc 1 1779 48 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1779 55 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1779 51 discriminator 3
	movw	%ax, (%rdx)
	.loc 1 1779 40 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1779 48 discriminator 3
	movzwl	(%rdx), %edx
	.loc 1 1779 43 discriminator 3
	movw	%dx, (%rax)
	.loc 1 1779 40 discriminator 3
	movzwl	(%rax), %edx
	.loc 1 1779 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1779 64 discriminator 3
	movq	-24(%rbp), %rax
	leaq	6(%rax), %rdx
	.loc 1 1779 67 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1779 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$4, -16(%rbp)
	addq	$8, -24(%rbp)
.L290:
	.loc 1 1779 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L291
	.loc 1 1779 10
	jmp	.L281
.L270:
	.loc 1 1780 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L292
.L293:
	.loc 1 1780 39 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 1780 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1780 47 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1780 50 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1780 62 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1780 65 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1780 77 discriminator 3
	movq	-24(%rbp), %rax
	addq	$6, %rax
	.loc 1 1780 80 discriminator 3
	movw	$-1, (%rax)
	.loc 1 1780 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$6, -16(%rbp)
	addq	$8, -24(%rbp)
.L292:
	.loc 1 1780 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L293
	.loc 1 1780 10
	jmp	.L281
.L272:
	.loc 1 1781 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L294
.L295:
	.loc 1 1781 72 discriminator 3
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	.loc 1 1781 36 discriminator 3
	movzwl	%ax, %edx
	.loc 1 1781 65 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	.loc 1 1781 36 discriminator 3
	movzwl	%ax, %ecx
	.loc 1 1781 58 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1781 36 discriminator 3
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	.loc 1 1781 35 discriminator 3
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	.loc 1 1781 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$6, -16(%rbp)
	addq	$2, -24(%rbp)
.L294:
	.loc 1 1781 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L295
	.loc 1 1781 10
	jmp	.L281
.L271:
	.loc 1 1782 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L296
.L297:
	.loc 1 1782 72 discriminator 3
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	.loc 1 1782 36 discriminator 3
	movzwl	%ax, %edx
	.loc 1 1782 65 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	.loc 1 1782 36 discriminator 3
	movzwl	%ax, %ecx
	.loc 1 1782 58 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1782 36 discriminator 3
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	.loc 1 1782 35 discriminator 3
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	.loc 1 1782 82 discriminator 3
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 1 1782 86 discriminator 3
	movw	$-1, (%rax)
	.loc 1 1782 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$6, -16(%rbp)
	addq	$4, -24(%rbp)
.L296:
	.loc 1 1782 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L297
	.loc 1 1782 10
	jmp	.L281
.L269:
	.loc 1 1783 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L298
.L299:
	.loc 1 1783 72 discriminator 3
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	.loc 1 1783 36 discriminator 3
	movzwl	%ax, %edx
	.loc 1 1783 65 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	.loc 1 1783 36 discriminator 3
	movzwl	%ax, %ecx
	.loc 1 1783 58 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1783 36 discriminator 3
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	.loc 1 1783 35 discriminator 3
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	.loc 1 1783 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$8, -16(%rbp)
	addq	$2, -24(%rbp)
.L298:
	.loc 1 1783 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L299
	.loc 1 1783 10
	jmp	.L281
.L268:
	.loc 1 1784 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L300
.L301:
	.loc 1 1784 72 discriminator 3
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	.loc 1 1784 36 discriminator 3
	movzwl	%ax, %edx
	.loc 1 1784 65 discriminator 3
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	.loc 1 1784 36 discriminator 3
	movzwl	%ax, %ecx
	.loc 1 1784 58 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 1784 36 discriminator 3
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	.loc 1 1784 35 discriminator 3
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	.loc 1 1784 82 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1784 86 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	6(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1784 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$8, -16(%rbp)
	addq	$4, -24(%rbp)
.L300:
	.loc 1 1784 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L301
	.loc 1 1784 10
	jmp	.L281
.L266:
	.loc 1 1785 10 is_stmt 1
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L302
.L303:
	.loc 1 1785 39 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 1785 35 discriminator 3
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 1785 47 discriminator 3
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 1785 50 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1785 62 discriminator 3
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 1785 65 discriminator 3
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %eax
	movw	%ax, (%rdx)
	.loc 1 1785 10 discriminator 3
	subl	$1, -4(%rbp)
	addq	$8, -16(%rbp)
	addq	$6, -24(%rbp)
.L302:
	.loc 1 1785 10 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L303
	.loc 1 1785 10
	jmp	.L281
.L305:
	.loc 1 1786 19 is_stmt 1 discriminator 1
	leaq	__PRETTY_FUNCTION__.18(%rip), %rcx
	movl	$1786, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L281:
.LBE762:
	.loc 1 1765 27 discriminator 2
	addl	$1, -8(%rbp)
.L264:
	.loc 1 1765 18 discriminator 1
	movl	-56(%rbp), %eax
	.loc 1 1765 4 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L304
	.loc 1 1791 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1792 11
	movq	-32(%rbp), %rax
.L260:
	.loc 1 1793 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	stbi__convert_format16, .-stbi__convert_format16
	.type	stbi__ldr_to_hdr, @function
stbi__ldr_to_hdr:
.LFB571:
	.loc 1 1798 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	.loc 1 1801 7
	cmpq	$0, -40(%rbp)
	jne	.L308
	.loc 1 1801 22 discriminator 1
	movl	$0, %eax
	jmp	.L309
.L308:
	.loc 1 1802 23
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad4
	movq	%rax, -24(%rbp)
	.loc 1 1803 7
	cmpq	$0, -24(%rbp)
	jne	.L310
	.loc 1 1803 26 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1803 50 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L309
.L310:
	.loc 1 1805 13
	movl	-52(%rbp), %eax
	andl	$1, %eax
	.loc 1 1805 7
	testl	%eax, %eax
	je	.L311
	.loc 1 1805 20 discriminator 1
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L312
.L311:
	.loc 1 1805 35 discriminator 2
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
.L312:
	.loc 1 1806 10
	movl	$0, -4(%rbp)
	.loc 1 1806 4
	jmp	.L313
.L316:
	.loc 1 1807 13
	movl	$0, -8(%rbp)
	.loc 1 1807 7
	jmp	.L314
.L315:
	.loc 1 1808 40 discriminator 3
	movss	stbi__l2h_gamma(%rip), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 1808 50 discriminator 3
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1808 55 discriminator 3
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 1808 48 discriminator 3
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 1808 58 discriminator 3
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 1 1808 40 discriminator 3
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm2, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	.loc 1 1808 84 discriminator 3
	movss	stbi__l2h_scale(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	.loc 1 1808 18 discriminator 3
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1808 24 discriminator 3
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 1808 16 discriminator 3
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1808 31 discriminator 3
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 1808 29 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 1807 24 discriminator 3
	addl	$1, -8(%rbp)
.L314:
	.loc 1 1807 7 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L315
	.loc 1 1806 23 discriminator 2
	addl	$1, -4(%rbp)
.L313:
	.loc 1 1806 19 discriminator 1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	.loc 1 1806 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L316
	.loc 1 1811 7
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L317
	.loc 1 1812 13
	movl	$0, -4(%rbp)
	.loc 1 1812 7
	jmp	.L318
.L319:
	.loc 1 1813 37 discriminator 3
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1813 43 discriminator 3
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 1813 35 discriminator 3
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 1813 47 discriminator 3
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 1 1813 18 discriminator 3
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1813 24 discriminator 3
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 1813 16 discriminator 3
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1813 47 discriminator 3
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 1 1813 29 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 1812 26 discriminator 3
	addl	$1, -4(%rbp)
.L318:
	.loc 1 1812 22 discriminator 1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	.loc 1 1812 7 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L319
.L317:
	.loc 1 1816 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1817 11
	movq	-24(%rbp), %rax
.L309:
	.loc 1 1818 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	stbi__ldr_to_hdr, .-stbi__ldr_to_hdr
	.type	stbi__hdr_to_ldr, @function
stbi__hdr_to_ldr:
.LFB572:
	.loc 1 1824 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	.loc 1 1827 7
	cmpq	$0, -40(%rbp)
	jne	.L321
	.loc 1 1827 22 discriminator 1
	movl	$0, %eax
	jmp	.L322
.L321:
	.loc 1 1828 25
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -32(%rbp)
	.loc 1 1829 7
	cmpq	$0, -32(%rbp)
	jne	.L323
	.loc 1 1829 26 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1829 50 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L322
.L323:
	.loc 1 1831 13
	movl	-52(%rbp), %eax
	andl	$1, %eax
	.loc 1 1831 7
	testl	%eax, %eax
	je	.L324
	.loc 1 1831 20 discriminator 1
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L325
.L324:
	.loc 1 1831 35 discriminator 2
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
.L325:
	.loc 1 1832 10
	movl	$0, -4(%rbp)
	.loc 1 1832 4
	jmp	.L326
.L338:
	.loc 1 1833 13
	movl	$0, -8(%rbp)
	.loc 1 1833 7
	jmp	.L327
.L332:
.LBB763:
	.loc 1 1834 28
	movss	stbi__h2l_gamma_i(%rip), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 1834 38
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1834 43
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 1834 36
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	.loc 1 1834 46
	movss	stbi__h2l_scale_i(%rip), %xmm0
	mulss	%xmm1, %xmm0
	.loc 1 1834 28
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm2, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	.loc 1 1834 20
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	.loc 1 1834 85
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm1
	.loc 1 1834 16
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 1 1835 13
	pxor	%xmm0, %xmm0
	comiss	-16(%rbp), %xmm0
	jbe	.L328
	.loc 1 1835 23 discriminator 1
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
.L328:
	.loc 1 1836 13
	movss	-16(%rbp), %xmm0
	comiss	.LC9(%rip), %xmm0
	jbe	.L330
	.loc 1 1836 25 discriminator 1
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
.L330:
	.loc 1 1837 41 discriminator 2
	movss	-16(%rbp), %xmm0
	cvttss2sil	%xmm0, %edx
	.loc 1 1837 18 discriminator 2
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 1837 24 discriminator 2
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	.loc 1 1837 16 discriminator 2
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 1837 29 discriminator 2
	movb	%dl, (%rax)
.LBE763:
	.loc 1 1833 24 discriminator 2
	addl	$1, -8(%rbp)
.L327:
	.loc 1 1833 7 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L332
	.loc 1 1839 10
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L333
.LBB764:
	.loc 1 1840 26
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 1840 31
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 1 1840 24
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	.loc 1 1840 35
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm1
	.loc 1 1840 16
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 1 1841 13
	pxor	%xmm0, %xmm0
	comiss	-20(%rbp), %xmm0
	jbe	.L334
	.loc 1 1841 23 discriminator 1
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.L334:
	.loc 1 1842 13
	movss	-20(%rbp), %xmm0
	comiss	.LC9(%rip), %xmm0
	jbe	.L336
	.loc 1 1842 25 discriminator 1
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
.L336:
	.loc 1 1843 41
	movss	-20(%rbp), %xmm0
	cvttss2sil	%xmm0, %edx
	.loc 1 1843 18
	movl	-4(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 1843 24
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	.loc 1 1843 16
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 1843 29
	movb	%dl, (%rax)
.L333:
.LBE764:
	.loc 1 1832 23 discriminator 2
	addl	$1, -4(%rbp)
.L326:
	.loc 1 1832 19 discriminator 1
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	.loc 1 1832 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L338
	.loc 1 1846 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 1847 11
	movq	-32(%rbp), %rax
.L322:
	.loc 1 1848 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	stbi__hdr_to_ldr, .-stbi__hdr_to_ldr
	.section	.rodata
.LC12:
	.string	"bad code lengths"
	.text
	.type	stbi__build_huffman, @function
stbi__build_huffman:
.LFB573:
	.loc 1 1943 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 1944 12
	movl	$0, -12(%rbp)
	.loc 1 1947 10
	movl	$0, -4(%rbp)
	.loc 1 1947 4
	jmp	.L344
.L347:
	.loc 1 1948 13
	movl	$0, -8(%rbp)
	.loc 1 1948 7
	jmp	.L345
.L346:
	.loc 1 1949 25 discriminator 3
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 1949 19 discriminator 3
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 1949 25 discriminator 3
	addl	$1, %ecx
	.loc 1 1949 23 discriminator 3
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, 1280(%rdx,%rax)
	.loc 1 1948 31 discriminator 3
	addl	$1, -8(%rbp)
.L345:
	.loc 1 1948 26 discriminator 1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 1948 7 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L346
	.loc 1 1947 22 discriminator 2
	addl	$1, -4(%rbp)
.L344:
	.loc 1 1947 4 discriminator 1
	cmpl	$15, -4(%rbp)
	jle	.L347
	.loc 1 1950 15
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$0, 1280(%rdx,%rax)
	.loc 1 1953 9
	movl	$0, -16(%rbp)
	.loc 1 1954 6
	movl	$0, -12(%rbp)
	.loc 1 1955 9
	movl	$1, -8(%rbp)
	.loc 1 1955 4
	jmp	.L348
.L353:
	.loc 1 1957 23
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 1957 19
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$400, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	.loc 1 1958 18
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 1 1958 10
	cmpl	%eax, -8(%rbp)
	jne	.L349
	.loc 1 1959 16
	jmp	.L350
.L351:
	.loc 1 1960 48
	movl	-16(%rbp), %edx
	leal	1(%rdx), %eax
	movl	%eax, -16(%rbp)
	.loc 1 1960 22
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	.loc 1 1960 28
	movl	%edx, %ecx
	.loc 1 1960 26
	movq	-40(%rbp), %rdx
	cltq
	addq	$256, %rax
	movw	%cx, (%rdx,%rax,2)
.L350:
	.loc 1 1959 24
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 1 1959 16
	cmpl	%eax, -8(%rbp)
	je	.L351
	.loc 1 1961 18
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	.loc 1 1961 21
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	.loc 1 1961 13
	testl	%eax, %eax
	je	.L349
	.loc 1 1961 42 discriminator 1
	leaq	.LC12(%rip), %rdi
	call	stbi__err
	jmp	.L352
.L349:
	.loc 1 1964 34 discriminator 2
	movl	$16, %eax
	subl	-8(%rbp), %eax
	.loc 1 1964 28 discriminator 2
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	.loc 1 1964 21 discriminator 2
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	%ecx, 4(%rax,%rdx,4)
	.loc 1 1965 12 discriminator 2
	sall	-16(%rbp)
	.loc 1 1955 22 discriminator 2
	addl	$1, -8(%rbp)
.L348:
	.loc 1 1955 4 discriminator 1
	cmpl	$16, -8(%rbp)
	jle	.L353
	.loc 1 1967 18
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	$-1, 4(%rax,%rdx,4)
	.loc 1 1970 12
	movq	-40(%rbp), %rax
	.loc 1 1970 4
	movl	$512, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 1971 10
	movl	$0, -4(%rbp)
	.loc 1 1971 4
	jmp	.L354
.L358:
.LBB765:
	.loc 1 1972 22
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	.loc 1 1972 11
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 1973 10
	cmpl	$9, -20(%rbp)
	jg	.L355
.LBB766:
	.loc 1 1974 25
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$256, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %edx
	.loc 1 1974 42
	movl	$9, %eax
	subl	-20(%rbp), %eax
	.loc 1 1974 14
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 1975 33
	movl	$9, %eax
	subl	-20(%rbp), %eax
	.loc 1 1975 14
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 1976 16
	movl	$0, -8(%rbp)
	.loc 1 1976 10
	jmp	.L356
.L357:
	.loc 1 1977 22 discriminator 3
	movl	-24(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1977 28 discriminator 3
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	.loc 1 1977 26 discriminator 3
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, (%rdx,%rax)
	.loc 1 1976 27 discriminator 3
	addl	$1, -8(%rbp)
.L356:
	.loc 1 1976 10 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L357
.L355:
.LBE766:
.LBE765:
	.loc 1 1971 21 discriminator 2
	addl	$1, -4(%rbp)
.L354:
	.loc 1 1971 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L358
	.loc 1 1981 11
	movl	$1, %eax
.L352:
	.loc 1 1982 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	stbi__build_huffman, .-stbi__build_huffman
	.type	stbi__build_fast_ac, @function
stbi__build_fast_ac:
.LFB574:
	.loc 1 1987 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 1989 10
	movl	$0, -4(%rbp)
	.loc 1 1989 4
	jmp	.L360
.L363:
.LBB767:
	.loc 1 1990 15
	movq	-48(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -9(%rbp)
	.loc 1 1991 14
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 1991 18
	movw	$0, (%rax)
	.loc 1 1992 10
	cmpb	$-1, -9(%rbp)
	je	.L361
.LBB768:
	.loc 1 1993 28
	movzbl	-9(%rbp), %eax
	movq	-48(%rbp), %rdx
	cltq
	movzbl	1024(%rdx,%rax), %eax
	.loc 1 1993 14
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 1994 24
	movl	-16(%rbp), %eax
	sarl	$4, %eax
	.loc 1 1994 14
	andl	$15, %eax
	movl	%eax, -20(%rbp)
	.loc 1 1995 14
	movl	-16(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -24(%rbp)
	.loc 1 1996 27
	movzbl	-9(%rbp), %eax
	movq	-48(%rbp), %rdx
	cltq
	movzbl	1280(%rdx,%rax), %eax
	.loc 1 1996 14
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 1 1998 13
	cmpl	$0, -24(%rbp)
	je	.L361
	.loc 1 1998 29 discriminator 1
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 1998 22 discriminator 1
	cmpl	$9, %eax
	jg	.L361
.LBB769:
	.loc 1 2000 25
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2000 33
	andl	$511, %eax
	movl	%eax, %edx
	.loc 1 2000 73
	movl	$9, %eax
	subl	-24(%rbp), %eax
	.loc 1 2000 17
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 2001 35
	movl	-24(%rbp), %eax
	subl	$1, %eax
	.loc 1 2001 17
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	.loc 1 2002 16
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L362
	.loc 1 2002 34 discriminator 1
	movl	-24(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 2002 26 discriminator 1
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L362:
	.loc 1 2004 16
	cmpl	$-128, -8(%rbp)
	jl	.L361
	.loc 1 2004 27 discriminator 1
	cmpl	$127, -8(%rbp)
	jg	.L361
	.loc 1 2005 54
	movl	-8(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	.loc 1 2005 74
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	.loc 1 2005 67
	addl	%eax, %edx
	.loc 1 2005 23
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2005 27
	movw	%dx, (%rax)
.L361:
.LBE769:
.LBE768:
.LBE767:
	.loc 1 1989 36 discriminator 2
	addl	$1, -4(%rbp)
.L360:
	.loc 1 1989 4 discriminator 1
	cmpl	$511, -4(%rbp)
	jle	.L363
	.loc 1 2009 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	stbi__build_fast_ac, .-stbi__build_fast_ac
	.type	stbi__grow_buffer_unsafe, @function
stbi__grow_buffer_unsafe:
.LFB575:
	.loc 1 2012 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L371:
.LBB770:
	.loc 1 2014 25
	movq	-24(%rbp), %rax
	movl	18476(%rax), %eax
	.loc 1 2014 38
	testl	%eax, %eax
	jne	.L365
	.loc 1 2014 40 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 2014 38 discriminator 1
	movzbl	%al, %eax
	jmp	.L366
.L365:
	.loc 1 2014 38 is_stmt 0 discriminator 2
	movl	$0, %eax
.L366:
	.loc 1 2014 20 is_stmt 1 discriminator 4
	movl	%eax, -8(%rbp)
	.loc 1 2015 10 discriminator 4
	cmpl	$255, -8(%rbp)
	jne	.L367
.LBB771:
	.loc 1 2016 18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 2016 14
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 2017 16
	jmp	.L368
.L369:
	.loc 1 2017 32 discriminator 2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 2017 30 discriminator 2
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L368:
	.loc 1 2017 16 discriminator 1
	cmpl	$255, -4(%rbp)
	je	.L369
	.loc 1 2018 13
	cmpl	$0, -4(%rbp)
	je	.L367
	.loc 1 2019 25
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2019 23
	movq	-24(%rbp), %rax
	movb	%dl, 18472(%rax)
	.loc 1 2020 23
	movq	-24(%rbp), %rax
	movl	$1, 18476(%rax)
	.loc 1 2021 13
	jmp	.L364
.L367:
.LBE771:
	.loc 1 2024 22
	movq	-24(%rbp), %rax
	movl	18464(%rax), %esi
	.loc 1 2024 37
	movq	-24(%rbp), %rax
	movl	18468(%rax), %edx
	.loc 1 2024 34
	movl	$24, %eax
	subl	%edx, %eax
	.loc 1 2024 27
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2024 22
	orl	%eax, %esi
	movl	%esi, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2025 20
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	leal	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
.LBE770:
	.loc 1 2026 14
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2026 4
	cmpl	$24, %eax
	jle	.L371
.L364:
	.loc 1 2027 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	stbi__grow_buffer_unsafe, .-stbi__grow_buffer_unsafe
	.section	.rodata
	.align 32
	.type	stbi__bmask, @object
	.size	stbi__bmask, 68
stbi__bmask:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.align 8
.LC13:
	.string	"(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]"
	.text
	.type	stbi__jpeg_huff_decode, @function
stbi__jpeg_huff_decode:
.LFB576:
	.loc 1 2034 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 2038 9
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2038 7
	cmpl	$15, %eax
	jg	.L373
	.loc 1 2038 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L373:
	.loc 1 2042 10
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	.loc 1 2042 45
	shrl	$23, %eax
	.loc 1 2042 6
	movl	%eax, -8(%rbp)
	.loc 1 2043 15
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 1 2043 6
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 2044 7
	cmpl	$254, -4(%rbp)
	jg	.L374
.LBB772:
	.loc 1 2045 22
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	.loc 1 2045 11
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 2046 16
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2046 10
	cmpl	%eax, -16(%rbp)
	jle	.L375
	.loc 1 2047 17
	movl	$-1, %eax
	jmp	.L376
.L375:
	.loc 1 2048 22
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2049 20
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2050 23
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	1024(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L376
.L374:
.LBE772:
	.loc 1 2059 12
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	.loc 1 2059 9
	shrl	$16, %eax
	movl	%eax, -12(%rbp)
	.loc 1 2060 10
	movl	$10, -4(%rbp)
.L379:
	.loc 1 2061 28
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	4(%rax,%rdx,4), %eax
	.loc 1 2061 10
	cmpl	%eax, -12(%rbp)
	jb	.L384
	.loc 1 2060 27
	addl	$1, -4(%rbp)
	.loc 1 2061 10
	jmp	.L379
.L384:
	.loc 1 2062 10
	nop
	.loc 1 2063 7
	cmpl	$17, -4(%rbp)
	jne	.L380
	.loc 1 2065 20
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	leal	-16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2066 14
	movl	$-1, %eax
	jmp	.L376
.L380:
	.loc 1 2069 13
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2069 7
	cmpl	%eax, -4(%rbp)
	jle	.L381
	.loc 1 2070 14
	movl	$-1, %eax
	jmp	.L376
.L381:
	.loc 1 2073 11
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	.loc 1 2073 32
	movl	$32, %eax
	subl	-4(%rbp), %eax
	.loc 1 2073 25
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	.loc 1 2073 51
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 2073 38
	andl	%eax, %ecx
	.loc 1 2073 66
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$400, %rdx
	movl	12(%rax,%rdx,4), %eax
	.loc 1 2073 56
	addl	%ecx, %eax
	.loc 1 2073 6
	movl	%eax, -8(%rbp)
	.loc 1 2074 4
	movq	-24(%rbp), %rax
	movl	18464(%rax), %esi
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %edx
	movl	$32, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$256, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	je	.L382
	.loc 1 2074 4 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.17(%rip), %rcx
	movl	$2074, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	__assert_fail@PLT
.L382:
	.loc 1 2077 17 is_stmt 1
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2078 19
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2079 20
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	1024(%rdx,%rax), %eax
	movzbl	%al, %eax
.L376:
	.loc 1 2080 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	stbi__jpeg_huff_decode, .-stbi__jpeg_huff_decode
	.section	.rodata
	.align 32
	.type	stbi__jbias, @object
	.size	stbi__jbias, 64
stbi__jbias:
	.long	0
	.long	-1
	.long	-3
	.long	-7
	.long	-15
	.long	-31
	.long	-63
	.long	-127
	.long	-255
	.long	-511
	.long	-1023
	.long	-2047
	.long	-4095
	.long	-8191
	.long	-16383
	.long	-32767
	.text
	.type	stbi__extend_receive, @function
stbi__extend_receive:
.LFB577:
	.loc 1 2088 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 2091 9
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2091 7
	cmpl	%eax, -28(%rbp)
	jle	.L386
	.loc 1 2091 26 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L386:
	.loc 1 2093 24
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	.loc 1 2093 8
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	.loc 1 2094 8
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	.loc 1 2094 6
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 2095 7
	cmpl	$0, -28(%rbp)
	js	.L387
	.loc 1 2095 14 discriminator 2
	cmpl	$16, -28(%rbp)
	jle	.L388
.L387:
	.loc 1 2095 79 discriminator 3
	movl	$0, %eax
	jmp	.L389
.L388:
	.loc 1 2096 37
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 2096 25
	notl	%eax
	.loc 1 2096 23
	andl	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2096 19
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2097 20
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 2097 6
	andl	%eax, -8(%rbp)
	.loc 1 2098 17
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2099 27
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__jbias(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 2099 33
	movl	-4(%rbp), %eax
	notl	%eax
	.loc 1 2099 31
	andl	%edx, %eax
	movl	%eax, %edx
	.loc 1 2099 13
	movl	-8(%rbp), %eax
	addl	%edx, %eax
.L389:
	.loc 1 2100 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	stbi__extend_receive, .-stbi__extend_receive
	.type	stbi__jpeg_get_bits, @function
stbi__jpeg_get_bits:
.LFB578:
	.loc 1 2104 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 2106 9
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2106 7
	cmpl	%eax, -28(%rbp)
	jle	.L391
	.loc 1 2106 26 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L391:
	.loc 1 2107 8
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	.loc 1 2107 6
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 2108 37
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 2108 25
	notl	%eax
	.loc 1 2108 23
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2108 19
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2109 20
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 2109 6
	andl	%eax, -4(%rbp)
	.loc 1 2110 17
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2111 11
	movl	-4(%rbp), %eax
	.loc 1 2112 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	stbi__jpeg_get_bits, .-stbi__jpeg_get_bits
	.type	stbi__jpeg_get_bit, @function
stbi__jpeg_get_bit:
.LFB579:
	.loc 1 2115 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 2117 9
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2117 7
	testl	%eax, %eax
	jg	.L394
	.loc 1 2117 26 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L394:
	.loc 1 2118 6
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 2119 19
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2120 7
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2120 4
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2121 13
	movl	-4(%rbp), %eax
	andl	$-2147483648, %eax
	.loc 1 2122 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	stbi__jpeg_get_bit, .-stbi__jpeg_get_bit
	.section	.rodata
	.align 32
	.type	stbi__jpeg_dezigzag, @object
	.size	stbi__jpeg_dezigzag, 79
stbi__jpeg_dezigzag:
	.string	""
	.ascii	"\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032"
	.ascii	"!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027"
	.ascii	"\036%,3:;4-&\037'.5<=6/7>????????????????"
.LC14:
	.string	"bad huffman code"
	.text
	.type	stbi__jpeg_decode_block, @function
stbi__jpeg_decode_block:
.LFB580:
	.loc 1 2143 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	.loc 1 2147 9
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2147 7
	cmpl	$15, %eax
	jg	.L397
	.loc 1 2147 27 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L397:
	.loc 1 2148 8
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -8(%rbp)
	.loc 1 2149 7
	cmpl	$0, -8(%rbp)
	jns	.L398
	.loc 1 2149 22 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L399
.L398:
	.loc 1 2152 4
	movq	-64(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 2154 42
	cmpl	$0, -8(%rbp)
	je	.L400
	.loc 1 2154 15 discriminator 1
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	jmp	.L401
.L400:
	.loc 1 2154 42 discriminator 2
	movl	$0, %eax
.L401:
	.loc 1 2154 9 discriminator 4
	movl	%eax, -12(%rbp)
	.loc 1 2155 23 discriminator 4
	movq	-56(%rbp), %rcx
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18104, %rax
	movl	(%rax), %edx
	.loc 1 2155 7 discriminator 4
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 2156 27 discriminator 4
	movq	-56(%rbp), %rcx
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	leaq	18104(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 2157 14 discriminator 4
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movzwl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 2157 12 discriminator 4
	movq	-64(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 2160 6 discriminator 4
	movl	$1, -4(%rbp)
.L409:
.LBB773:
	.loc 1 2164 12
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2164 10
	cmpl	$15, %eax
	jg	.L402
	.loc 1 2164 30 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L402:
	.loc 1 2165 13
	movq	-56(%rbp), %rax
	movl	18464(%rax), %eax
	.loc 1 2165 48
	shrl	$23, %eax
	.loc 1 2165 9
	movl	%eax, -20(%rbp)
	.loc 1 2166 14
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 2166 9
	cwtl
	movl	%eax, -24(%rbp)
	.loc 1 2167 10
	cmpl	$0, -24(%rbp)
	je	.L403
	.loc 1 2168 18
	movl	-24(%rbp), %eax
	sarl	$4, %eax
	.loc 1 2168 24
	andl	$15, %eax
	.loc 1 2168 12
	addl	%eax, -4(%rbp)
	.loc 1 2169 12
	movl	-24(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -32(%rbp)
	.loc 1 2170 25
	movq	-56(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2171 23
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2173 37
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 2173 35
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 2173 14
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	.loc 1 2174 34
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	.loc 1 2174 22
	movl	%eax, %edx
	.loc 1 2174 49
	movl	-36(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	16(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2174 22
	movzwl	(%rax), %eax
	imull	%eax, %edx
	.loc 1 2174 14
	movl	-36(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2174 20
	movw	%dx, (%rax)
	jmp	.L404
.L403:
.LBB774:
	.loc 1 2176 19
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -28(%rbp)
	.loc 1 2177 13
	cmpl	$0, -28(%rbp)
	jns	.L405
	.loc 1 2177 29 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L399
.L405:
	.loc 1 2178 12
	movl	-28(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -32(%rbp)
	.loc 1 2179 12
	movl	-28(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -24(%rbp)
	.loc 1 2180 13
	cmpl	$0, -32(%rbp)
	jne	.L406
	.loc 1 2181 16
	cmpl	$240, -28(%rbp)
	jne	.L410
	.loc 1 2182 15
	addl	$16, -4(%rbp)
	jmp	.L404
.L406:
	.loc 1 2184 15
	movl	-24(%rbp), %eax
	addl	%eax, -4(%rbp)
	.loc 1 2186 40
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 2186 38
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 2186 17
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	.loc 1 2187 34
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	.loc 1 2187 25
	movl	%eax, %edx
	.loc 1 2187 69
	movl	-36(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	16(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2187 25
	movzwl	(%rax), %eax
	imull	%eax, %edx
	.loc 1 2187 17
	movl	-36(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2187 23
	movw	%dx, (%rax)
.L404:
.LBE774:
.LBE773:
	.loc 1 2190 4
	cmpl	$63, -4(%rbp)
	jle	.L409
	jmp	.L408
.L410:
.LBB776:
.LBB775:
	.loc 1 2181 13
	nop
.L408:
.LBE775:
.LBE776:
	.loc 1 2191 11
	movl	$1, %eax
.L399:
	.loc 1 2192 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	stbi__jpeg_decode_block, .-stbi__jpeg_decode_block
	.section	.rodata
.LC15:
	.string	"can't merge dc and ac"
	.text
	.type	stbi__jpeg_decode_block_prog_dc, @function
stbi__jpeg_decode_block_prog_dc:
.LFB581:
	.loc 1 2195 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	.loc 1 2198 9
	movq	-24(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 2198 7
	testl	%eax, %eax
	je	.L412
	.loc 1 2198 33 discriminator 1
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L413
.L412:
	.loc 1 2200 9
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2200 7
	cmpl	$15, %eax
	jg	.L414
	.loc 1 2200 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L414:
	.loc 1 2202 9
	movq	-24(%rbp), %rax
	movl	18492(%rax), %eax
	.loc 1 2202 7
	testl	%eax, %eax
	jne	.L415
	.loc 1 2204 7
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 2205 11
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -4(%rbp)
	.loc 1 2206 10
	cmpl	$-1, -4(%rbp)
	jne	.L416
	.loc 1 2206 27 discriminator 1
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L413
.L416:
	.loc 1 2207 45
	cmpl	$0, -4(%rbp)
	je	.L417
	.loc 1 2207 18 discriminator 1
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	jmp	.L418
.L417:
	.loc 1 2207 45 discriminator 2
	movl	$0, %eax
.L418:
	.loc 1 2207 12 discriminator 4
	movl	%eax, -8(%rbp)
	.loc 1 2209 26 discriminator 4
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18104, %rax
	movl	(%rax), %edx
	.loc 1 2209 10 discriminator 4
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 2210 30 discriminator 4
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	leaq	18104(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 2211 33 discriminator 4
	movq	-24(%rbp), %rax
	movl	18496(%rax), %eax
	.loc 1 2211 29 discriminator 4
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2211 17 discriminator 4
	movl	%eax, %edx
	.loc 1 2211 15 discriminator 4
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L419
.L415:
	.loc 1 2214 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	.loc 1 2214 10
	testl	%eax, %eax
	je	.L419
	.loc 1 2215 18
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %esi
	.loc 1 2215 36
	movq	-24(%rbp), %rax
	movl	18496(%rax), %eax
	.loc 1 2215 32
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2215 18
	addl	%esi, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
.L419:
	.loc 1 2217 11
	movl	$1, %eax
.L413:
	.loc 1 2218 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	stbi__jpeg_decode_block_prog_dc, .-stbi__jpeg_decode_block_prog_dc
	.type	stbi__jpeg_decode_block_prog_ac, @function
stbi__jpeg_decode_block_prog_ac:
.LFB582:
	.loc 1 2223 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 1 2225 9
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	.loc 1 2225 7
	testl	%eax, %eax
	jne	.L421
	.loc 1 2225 35 discriminator 1
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L422
.L421:
	.loc 1 2227 9
	movq	-72(%rbp), %rax
	movl	18492(%rax), %eax
	.loc 1 2227 7
	testl	%eax, %eax
	jne	.L423
.LBB777:
	.loc 1 2228 11
	movq	-72(%rbp), %rax
	movl	18496(%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 1 2230 12
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	.loc 1 2230 10
	testl	%eax, %eax
	je	.L424
	.loc 1 2231 13
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	.loc 1 2231 10
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	.loc 1 2232 17
	movl	$1, %eax
	jmp	.L422
.L424:
	.loc 1 2235 9
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -4(%rbp)
.L433:
.LBB778:
	.loc 1 2239 15
	movq	-72(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2239 13
	cmpl	$15, %eax
	jg	.L425
	.loc 1 2239 33 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L425:
	.loc 1 2240 16
	movq	-72(%rbp), %rax
	movl	18464(%rax), %eax
	.loc 1 2240 51
	shrl	$23, %eax
	.loc 1 2240 12
	movl	%eax, -48(%rbp)
	.loc 1 2241 17
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 2241 12
	cwtl
	movl	%eax, -52(%rbp)
	.loc 1 2242 13
	cmpl	$0, -52(%rbp)
	je	.L426
	.loc 1 2243 21
	movl	-52(%rbp), %eax
	sarl	$4, %eax
	.loc 1 2243 27
	andl	$15, %eax
	.loc 1 2243 15
	addl	%eax, -4(%rbp)
	.loc 1 2244 15
	movl	-52(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -60(%rbp)
	.loc 1 2245 28
	movq	-72(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18464(%rax)
	.loc 1 2246 26
	movq	-72(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18468(%rax)
	.loc 1 2247 40
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 2247 38
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 2247 17
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	.loc 1 2248 37
	movl	-52(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	.loc 1 2248 43
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 2248 17
	movl	-64(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2248 23
	movw	%dx, (%rax)
	jmp	.L427
.L426:
.LBB779:
	.loc 1 2250 22
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -56(%rbp)
	.loc 1 2251 16
	cmpl	$0, -56(%rbp)
	jns	.L428
	.loc 1 2251 32 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L422
.L428:
	.loc 1 2252 15
	movl	-56(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -60(%rbp)
	.loc 1 2253 15
	movl	-56(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -52(%rbp)
	.loc 1 2254 16
	cmpl	$0, -60(%rbp)
	jne	.L429
	.loc 1 2255 19
	cmpl	$14, -52(%rbp)
	jg	.L430
	.loc 1 2256 35
	movl	-52(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 2256 30
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	.loc 1 2257 22
	cmpl	$0, -52(%rbp)
	je	.L431
	.loc 1 2258 36
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__jpeg_get_bits
	movl	%eax, %edx
	.loc 1 2258 33
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
.L431:
	.loc 1 2259 22
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	.loc 1 2259 19
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	.loc 1 2260 19
	jmp	.L434
.L430:
	.loc 1 2262 18
	addl	$16, -4(%rbp)
	jmp	.L427
.L429:
	.loc 1 2264 18
	movl	-52(%rbp), %eax
	addl	%eax, -4(%rbp)
	.loc 1 2265 43
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 2265 41
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 2265 20
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	.loc 1 2266 37
	movl	-60(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	movl	%eax, %edx
	.loc 1 2266 63
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 2266 20
	movl	-64(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 2266 26
	movw	%dx, (%rax)
.L427:
.LBE779:
.LBE778:
	.loc 1 2269 22
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 2269 7
	cmpl	%eax, -4(%rbp)
	jle	.L433
	jmp	.L434
.L423:
.LBE777:
.LBB780:
	.loc 1 2273 34
	movq	-72(%rbp), %rax
	movl	18496(%rax), %eax
	.loc 1 2273 30
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2273 13
	movw	%ax, -14(%rbp)
	.loc 1 2275 12
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	.loc 1 2275 10
	testl	%eax, %eax
	je	.L435
	.loc 1 2276 13
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	.loc 1 2276 10
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	.loc 1 2277 17
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 2277 10
	jmp	.L436
.L439:
.LBB781:
	.loc 1 2278 49
	movl	-4(%rbp), %eax
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 1 2278 29
	leaq	(%rax,%rax), %rdx
	.loc 1 2278 20
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 2279 17
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2279 16
	testw	%ax, %ax
	je	.L437
	.loc 1 2280 20
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	.loc 1 2280 19
	testl	%eax, %eax
	je	.L437
	.loc 1 2281 24
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2281 33
	andw	-14(%rbp), %ax
	.loc 1 2281 22
	testw	%ax, %ax
	jne	.L437
	.loc 1 2282 26
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2282 25
	testw	%ax, %ax
	jle	.L438
	.loc 1 2283 28
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L437
.L438:
	.loc 1 2285 28
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	-14(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, (%rax)
.L437:
.LBE781:
	.loc 1 2277 52 discriminator 2
	addl	$1, -4(%rbp)
.L436:
	.loc 1 2277 40 discriminator 1
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 2277 10 discriminator 1
	cmpl	%eax, -4(%rbp)
	jle	.L439
	jmp	.L434
.L435:
	.loc 1 2289 12
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -4(%rbp)
.L452:
.LBB782:
	.loc 1 2292 22
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -20(%rbp)
	.loc 1 2293 16
	cmpl	$0, -20(%rbp)
	jns	.L440
	.loc 1 2293 32 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L422
.L440:
	.loc 1 2294 15
	movl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -12(%rbp)
	.loc 1 2295 15
	movl	-20(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -8(%rbp)
	.loc 1 2296 16
	cmpl	$0, -12(%rbp)
	jne	.L441
	.loc 1 2297 19
	cmpl	$14, -8(%rbp)
	jg	.L446
	.loc 1 2298 35
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 2298 41
	leal	-1(%rax), %edx
	.loc 1 2298 30
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	.loc 1 2299 22
	cmpl	$0, -8(%rbp)
	je	.L443
	.loc 1 2300 36
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__jpeg_get_bits
	movl	%eax, %edx
	.loc 1 2300 33
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
.L443:
	.loc 1 2301 21
	movl	$64, -8(%rbp)
	jmp	.L446
.L441:
	.loc 1 2308 19
	cmpl	$1, -12(%rbp)
	je	.L444
	.loc 1 2308 35 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L422
.L444:
	.loc 1 2310 20
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	.loc 1 2310 19
	testl	%eax, %eax
	je	.L445
	.loc 1 2311 21
	movswl	-14(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L446
.L445:
	.loc 1 2313 23
	movswl	-14(%rbp), %eax
	.loc 1 2313 21
	negl	%eax
	movl	%eax, -12(%rbp)
	.loc 1 2317 19
	jmp	.L446
.L451:
.LBB783:
	.loc 1 2318 54
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	.loc 1 2318 52
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 1 2318 32
	leaq	(%rax,%rax), %rdx
	.loc 1 2318 23
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 2319 20
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2319 19
	testw	%ax, %ax
	je	.L447
	.loc 1 2320 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	.loc 1 2320 22
	testl	%eax, %eax
	je	.L446
	.loc 1 2321 27
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2321 36
	andw	-14(%rbp), %ax
	.loc 1 2321 25
	testw	%ax, %ax
	jne	.L446
	.loc 1 2322 29
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 2322 28
	testw	%ax, %ax
	jle	.L448
	.loc 1 2323 31
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L446
.L448:
	.loc 1 2325 31
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	-14(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L446
.L447:
	.loc 1 2328 22
	cmpl	$0, -8(%rbp)
	jne	.L449
	.loc 1 2329 27
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2329 25
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 2330 22
	jmp	.L450
.L449:
	.loc 1 2332 19
	subl	$1, -8(%rbp)
.L446:
.LBE783:
	.loc 1 2317 26
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 2317 19
	cmpl	%eax, -4(%rbp)
	jle	.L451
.L450:
.LBE782:
	.loc 1 2335 25
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 2335 10
	cmpl	%eax, -4(%rbp)
	jle	.L452
.L434:
.LBE780:
	.loc 1 2338 11
	movl	$1, %eax
.L422:
	.loc 1 2339 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	stbi__jpeg_decode_block_prog_ac, .-stbi__jpeg_decode_block_prog_ac
	.type	stbi__clamp, @function
stbi__clamp:
.LFB583:
	.loc 1 2343 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 2345 8
	movl	-4(%rbp), %eax
	.loc 1 2345 7
	cmpl	$255, %eax
	jbe	.L454
	.loc 1 2346 10
	cmpl	$0, -4(%rbp)
	jns	.L455
	.loc 1 2346 25 discriminator 1
	movl	$0, %eax
	jmp	.L456
.L455:
	.loc 1 2347 10
	cmpl	$255, -4(%rbp)
	jle	.L454
	.loc 1 2347 27 discriminator 1
	movl	$-1, %eax
	jmp	.L456
.L454:
	.loc 1 2349 11
	movl	-4(%rbp), %eax
.L456:
	.loc 1 2350 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	stbi__clamp, .-stbi__clamp
	.type	stbi__idct_block, @function
stbi__idct_block:
.LFB584:
	.loc 1 2394 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -416(%rbp)
	movl	%esi, -420(%rbp)
	movq	%rdx, -432(%rbp)
	.loc 1 2395 19
	leaq	-408(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 2397 11
	movq	-432(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 2400 10
	movl	$0, -12(%rbp)
	.loc 1 2400 4
	jmp	.L458
.L461:
	.loc 1 2402 12
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movzwl	(%rax), %eax
	.loc 1 2402 10
	testw	%ax, %ax
	jne	.L459
	.loc 1 2402 24 discriminator 1
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movzwl	(%rax), %eax
	.loc 1 2402 20 discriminator 1
	testw	%ax, %ax
	jne	.L459
	.loc 1 2402 36 discriminator 2
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movzwl	(%rax), %eax
	.loc 1 2402 32 discriminator 2
	testw	%ax, %ax
	jne	.L459
	.loc 1 2402 48 discriminator 3
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movzwl	(%rax), %eax
	.loc 1 2402 44 discriminator 3
	testw	%ax, %ax
	jne	.L459
	.loc 1 2403 16
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movzwl	(%rax), %eax
	.loc 1 2403 12
	testw	%ax, %ax
	jne	.L459
	.loc 1 2403 28 discriminator 1
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movzwl	(%rax), %eax
	.loc 1 2403 24 discriminator 1
	testw	%ax, %ax
	jne	.L459
	.loc 1 2403 40 discriminator 2
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movzwl	(%rax), %eax
	.loc 1 2403 36 discriminator 2
	testw	%ax, %ax
	jne	.L459
.LBB784:
	.loc 1 2408 24
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	.loc 1 2408 14
	sall	$2, %eax
	movl	%eax, -96(%rbp)
	.loc 1 2409 65
	movq	-24(%rbp), %rax
	addq	$224, %rax
	.loc 1 2409 70
	movl	-96(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 2409 57
	movq	-24(%rbp), %rdx
	addq	$192, %rdx
	.loc 1 2409 65
	movl	(%rax), %eax
	.loc 1 2409 62
	movl	%eax, (%rdx)
	.loc 1 2409 49
	movq	-24(%rbp), %rax
	addq	$160, %rax
	.loc 1 2409 57
	movl	(%rdx), %edx
	.loc 1 2409 54
	movl	%edx, (%rax)
	.loc 1 2409 41
	movq	-24(%rbp), %rdx
	subq	$-128, %rdx
	.loc 1 2409 49
	movl	(%rax), %eax
	.loc 1 2409 46
	movl	%eax, (%rdx)
	.loc 1 2409 33
	movq	-24(%rbp), %rax
	addq	$96, %rax
	.loc 1 2409 41
	movl	(%rdx), %edx
	.loc 1 2409 38
	movl	%edx, (%rax)
	.loc 1 2409 25
	movq	-24(%rbp), %rdx
	addq	$64, %rdx
	.loc 1 2409 33
	movl	(%rax), %eax
	.loc 1 2409 30
	movl	%eax, (%rdx)
	.loc 1 2409 18
	movq	-24(%rbp), %rax
	addq	$32, %rax
	.loc 1 2409 25
	movl	(%rdx), %edx
	.loc 1 2409 22
	movl	%edx, (%rax)
	.loc 1 2409 18
	movl	(%rax), %edx
	.loc 1 2409 15
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.LBE784:
	.loc 1 2403 49
	jmp	.L460
.L459:
.LBB785:
	.loc 1 2411 10
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	imull	$2217, %eax, %eax
	movl	%eax, -108(%rbp)
	movl	-104(%rbp), %eax
	imull	$-7567, %eax, %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-100(%rbp), %eax
	imull	$3135, %eax, %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	sall	$12, %eax
	movl	%eax, -120(%rbp)
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	sall	$12, %eax
	movl	%eax, -124(%rbp)
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-124(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -120(%rbp)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -124(%rbp)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -116(%rbp)
	movl	-120(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	imull	$4816, %eax, %eax
	movl	%eax, -148(%rbp)
	movl	-120(%rbp), %eax
	imull	$1223, %eax, %eax
	movl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	imull	$8410, %eax, %eax
	movl	%eax, -124(%rbp)
	movl	-112(%rbp), %eax
	imull	$12586, %eax, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %eax
	imull	$6149, %eax, %eax
	movl	%eax, -116(%rbp)
	movl	-108(%rbp), %eax
	imull	$-3685, %eax, %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-100(%rbp), %eax
	imull	$-10497, %eax, %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	imull	$-8034, %eax, %eax
	movl	%eax, -104(%rbp)
	movl	-144(%rbp), %eax
	imull	$-1597, %eax, %eax
	movl	%eax, -144(%rbp)
	movl	-108(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -116(%rbp)
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -112(%rbp)
	movl	-100(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -124(%rbp)
	movl	-108(%rbp), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	.loc 1 2414 13
	addl	$512, -128(%rbp)
	.loc 1 2414 24
	addl	$512, -136(%rbp)
	.loc 1 2414 35
	addl	$512, -140(%rbp)
	.loc 1 2414 46
	addl	$512, -132(%rbp)
	.loc 1 2415 21
	movl	-128(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2415 26
	sarl	$10, %eax
	movl	%eax, %edx
	.loc 1 2415 16
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 2416 21
	movl	-128(%rbp), %eax
	subl	-116(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2416 11
	movq	-24(%rbp), %rax
	addq	$224, %rax
	.loc 1 2416 26
	sarl	$10, %edx
	.loc 1 2416 16
	movl	%edx, (%rax)
	.loc 1 2417 21
	movl	-136(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	%eax, %edx
	.loc 1 2417 11
	movq	-24(%rbp), %rax
	addq	$32, %rax
	.loc 1 2417 26
	sarl	$10, %edx
	.loc 1 2417 16
	movl	%edx, (%rax)
	.loc 1 2418 21
	movl	-136(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2418 11
	movq	-24(%rbp), %rax
	addq	$192, %rax
	.loc 1 2418 26
	sarl	$10, %edx
	.loc 1 2418 16
	movl	%edx, (%rax)
	.loc 1 2419 21
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	.loc 1 2419 11
	movq	-24(%rbp), %rax
	addq	$64, %rax
	.loc 1 2419 26
	sarl	$10, %edx
	.loc 1 2419 16
	movl	%edx, (%rax)
	.loc 1 2420 21
	movl	-140(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2420 11
	movq	-24(%rbp), %rax
	addq	$160, %rax
	.loc 1 2420 26
	sarl	$10, %edx
	.loc 1 2420 16
	movl	%edx, (%rax)
	.loc 1 2421 21
	movl	-132(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	.loc 1 2421 11
	movq	-24(%rbp), %rax
	addq	$96, %rax
	.loc 1 2421 26
	sarl	$10, %edx
	.loc 1 2421 16
	movl	%edx, (%rax)
	.loc 1 2422 21
	movl	-132(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2422 11
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	.loc 1 2422 26
	sarl	$10, %edx
	.loc 1 2422 16
	movl	%edx, (%rax)
.L460:
.LBE785:
	.loc 1 2400 21 discriminator 2
	addl	$1, -12(%rbp)
	.loc 1 2400 25 discriminator 2
	addq	$2, -40(%rbp)
	.loc 1 2400 30 discriminator 2
	addq	$4, -24(%rbp)
.L458:
	.loc 1 2400 4 discriminator 1
	cmpl	$7, -12(%rbp)
	jle	.L461
	.loc 1 2426 10
	movl	$0, -12(%rbp)
	.loc 1 2426 15
	leaq	-408(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 2426 22
	movq	-416(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 2426 4
	jmp	.L462
.L463:
.LBB786:
	.loc 1 2428 7 discriminator 3
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	imull	$2217, %eax, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	imull	$-7567, %eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	imull	$3135, %eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	sall	$12, %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	sall	$12, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-68(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-68(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	imull	$4816, %eax, %eax
	movl	%eax, -92(%rbp)
	movl	-64(%rbp), %eax
	imull	$1223, %eax, %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	imull	$8410, %eax, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	imull	$12586, %eax, %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	imull	$6149, %eax, %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	imull	$-3685, %eax, %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	imull	$-10497, %eax, %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	imull	$-8034, %eax, %eax
	movl	%eax, -48(%rbp)
	movl	-88(%rbp), %eax
	imull	$-1597, %eax, %eax
	movl	%eax, -88(%rbp)
	movl	-52(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -60(%rbp)
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -56(%rbp)
	movl	-44(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -68(%rbp)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -64(%rbp)
	.loc 1 2435 10 discriminator 3
	addl	$16842752, -72(%rbp)
	.loc 1 2436 10 discriminator 3
	addl	$16842752, -80(%rbp)
	.loc 1 2437 10 discriminator 3
	addl	$16842752, -84(%rbp)
	.loc 1 2438 10 discriminator 3
	addl	$16842752, -76(%rbp)
	.loc 1 2441 29 discriminator 3
	movl	-72(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2441 14 discriminator 3
	sarl	$17, %eax
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2441 12 discriminator 3
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 2442 29 discriminator 3
	movl	-72(%rbp), %eax
	subl	-60(%rbp), %eax
	.loc 1 2442 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2442 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	7(%rdx), %rbx
	.loc 1 2442 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2442 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2443 29 discriminator 3
	movl	-80(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2443 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2443 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rbx
	.loc 1 2443 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2443 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2444 29 discriminator 3
	movl	-80(%rbp), %eax
	subl	-56(%rbp), %eax
	.loc 1 2444 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2444 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	6(%rdx), %rbx
	.loc 1 2444 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2444 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2445 29 discriminator 3
	movl	-84(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2445 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2445 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	2(%rdx), %rbx
	.loc 1 2445 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2445 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2446 29 discriminator 3
	movl	-84(%rbp), %eax
	subl	-68(%rbp), %eax
	.loc 1 2446 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2446 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	5(%rdx), %rbx
	.loc 1 2446 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2446 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2447 29 discriminator 3
	movl	-76(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2447 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2447 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	3(%rdx), %rbx
	.loc 1 2447 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2447 12 discriminator 3
	movb	%al, (%rbx)
	.loc 1 2448 29 discriminator 3
	movl	-76(%rbp), %eax
	subl	-64(%rbp), %eax
	.loc 1 2448 14 discriminator 3
	sarl	$17, %eax
	.loc 1 2448 8 discriminator 3
	movq	-32(%rbp), %rdx
	leaq	4(%rdx), %rbx
	.loc 1 2448 14 discriminator 3
	movl	%eax, %edi
	call	stbi__clamp
	.loc 1 2448 12 discriminator 3
	movb	%al, (%rbx)
.LBE786:
	.loc 1 2426 35 discriminator 3
	addl	$1, -12(%rbp)
	.loc 1 2426 40 discriminator 3
	addq	$32, -24(%rbp)
	.loc 1 2426 45 discriminator 3
	movl	-420(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
.L462:
	.loc 1 2426 4 discriminator 1
	cmpl	$7, -12(%rbp)
	jle	.L463
	.loc 1 2450 1
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	stbi__idct_block, .-stbi__idct_block
	.type	stbi__idct_simd, @function
stbi__idct_simd:
.LFB585:
	.loc 1 2457 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$10824, %rsp
	movq	%rdi, -10920(%rbp)
	movl	%esi, -10924(%rbp)
	movq	%rdx, -10936(%rbp)
	movw	$2217, -10746(%rbp)
	movw	$-5350, -10748(%rbp)
	movw	$2217, -10750(%rbp)
	movw	$-5350, -10752(%rbp)
	movw	$2217, -10754(%rbp)
	movw	$-5350, -10756(%rbp)
	movw	$2217, -10758(%rbp)
	movw	$-5350, -10760(%rbp)
.LBB787:
.LBB788:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/10/include/emmintrin.h"
	.loc 2 679 10
	movswl	-10746(%rbp), %eax
	movswl	-10748(%rbp), %edx
	movswl	-10750(%rbp), %ecx
	movswl	-10752(%rbp), %esi
	movswl	-10754(%rbp), %edi
	movswl	-10756(%rbp), %r8d
	movswl	-10758(%rbp), %r9d
	movswl	-10760(%rbp), %r10d
	movw	%r10w, -10762(%rbp)
	movw	%r9w, -10764(%rbp)
	movw	%r8w, -10766(%rbp)
	movw	%di, -10768(%rbp)
	movw	%si, -10770(%rbp)
	movw	%cx, -10772(%rbp)
	movw	%dx, -10774(%rbp)
	movw	%ax, -10776(%rbp)
.LBB789:
.LBB790:
	.loc 2 611 41
	movzwl	-10776(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10774(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10772(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10770(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10768(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10766(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10764(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10762(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE790:
.LBE789:
	.loc 2 679 10
	nop
.LBE788:
.LBE787:
	.loc 1 2541 21
	movaps	%xmm0, -16(%rbp)
	movw	$5352, -10714(%rbp)
	movw	$2217, -10716(%rbp)
	movw	$5352, -10718(%rbp)
	movw	$2217, -10720(%rbp)
	movw	$5352, -10722(%rbp)
	movw	$2217, -10724(%rbp)
	movw	$5352, -10726(%rbp)
	movw	$2217, -10728(%rbp)
.LBB791:
.LBB792:
	.loc 2 679 10
	movswl	-10714(%rbp), %eax
	movswl	-10716(%rbp), %edx
	movswl	-10718(%rbp), %ecx
	movswl	-10720(%rbp), %esi
	movswl	-10722(%rbp), %edi
	movswl	-10724(%rbp), %r8d
	movswl	-10726(%rbp), %r9d
	movswl	-10728(%rbp), %r10d
	movw	%r10w, -10730(%rbp)
	movw	%r9w, -10732(%rbp)
	movw	%r8w, -10734(%rbp)
	movw	%di, -10736(%rbp)
	movw	%si, -10738(%rbp)
	movw	%cx, -10740(%rbp)
	movw	%dx, -10742(%rbp)
	movw	%ax, -10744(%rbp)
.LBB793:
.LBB794:
	.loc 2 611 41
	movzwl	-10744(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10742(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10740(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10738(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10736(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10734(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10732(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10730(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE794:
.LBE793:
	.loc 2 679 10
	nop
.LBE792:
.LBE791:
	.loc 1 2542 21
	movaps	%xmm0, -32(%rbp)
	movw	$1131, -10682(%rbp)
	movw	$4816, -10684(%rbp)
	movw	$1131, -10686(%rbp)
	movw	$4816, -10688(%rbp)
	movw	$1131, -10690(%rbp)
	movw	$4816, -10692(%rbp)
	movw	$1131, -10694(%rbp)
	movw	$4816, -10696(%rbp)
.LBB795:
.LBB796:
	.loc 2 679 10
	movswl	-10682(%rbp), %eax
	movswl	-10684(%rbp), %edx
	movswl	-10686(%rbp), %ecx
	movswl	-10688(%rbp), %esi
	movswl	-10690(%rbp), %edi
	movswl	-10692(%rbp), %r8d
	movswl	-10694(%rbp), %r9d
	movswl	-10696(%rbp), %r10d
	movw	%r10w, -10698(%rbp)
	movw	%r9w, -10700(%rbp)
	movw	%r8w, -10702(%rbp)
	movw	%di, -10704(%rbp)
	movw	%si, -10706(%rbp)
	movw	%cx, -10708(%rbp)
	movw	%dx, -10710(%rbp)
	movw	%ax, -10712(%rbp)
.LBB797:
.LBB798:
	.loc 2 611 41
	movzwl	-10712(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10710(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10708(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10706(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10704(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10702(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10700(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10698(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE798:
.LBE797:
	.loc 2 679 10
	nop
.LBE796:
.LBE795:
	.loc 1 2543 21
	movaps	%xmm0, -48(%rbp)
	movw	$4816, -10650(%rbp)
	movw	$-5681, -10652(%rbp)
	movw	$4816, -10654(%rbp)
	movw	$-5681, -10656(%rbp)
	movw	$4816, -10658(%rbp)
	movw	$-5681, -10660(%rbp)
	movw	$4816, -10662(%rbp)
	movw	$-5681, -10664(%rbp)
.LBB799:
.LBB800:
	.loc 2 679 10
	movswl	-10650(%rbp), %eax
	movswl	-10652(%rbp), %edx
	movswl	-10654(%rbp), %ecx
	movswl	-10656(%rbp), %esi
	movswl	-10658(%rbp), %edi
	movswl	-10660(%rbp), %r8d
	movswl	-10662(%rbp), %r9d
	movswl	-10664(%rbp), %r10d
	movw	%r10w, -10666(%rbp)
	movw	%r9w, -10668(%rbp)
	movw	%r8w, -10670(%rbp)
	movw	%di, -10672(%rbp)
	movw	%si, -10674(%rbp)
	movw	%cx, -10676(%rbp)
	movw	%dx, -10678(%rbp)
	movw	%ax, -10680(%rbp)
.LBB801:
.LBB802:
	.loc 2 611 41
	movzwl	-10680(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10678(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10676(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10674(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10672(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10670(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10668(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10666(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE802:
.LBE801:
	.loc 2 679 10
	nop
.LBE800:
.LBE799:
	.loc 1 2544 21
	movaps	%xmm0, -64(%rbp)
	movw	$-6811, -10618(%rbp)
	movw	$-8034, -10620(%rbp)
	movw	$-6811, -10622(%rbp)
	movw	$-8034, -10624(%rbp)
	movw	$-6811, -10626(%rbp)
	movw	$-8034, -10628(%rbp)
	movw	$-6811, -10630(%rbp)
	movw	$-8034, -10632(%rbp)
.LBB803:
.LBB804:
	.loc 2 679 10
	movswl	-10618(%rbp), %eax
	movswl	-10620(%rbp), %edx
	movswl	-10622(%rbp), %ecx
	movswl	-10624(%rbp), %esi
	movswl	-10626(%rbp), %edi
	movswl	-10628(%rbp), %r8d
	movswl	-10630(%rbp), %r9d
	movswl	-10632(%rbp), %r10d
	movw	%r10w, -10634(%rbp)
	movw	%r9w, -10636(%rbp)
	movw	%r8w, -10638(%rbp)
	movw	%di, -10640(%rbp)
	movw	%si, -10642(%rbp)
	movw	%cx, -10644(%rbp)
	movw	%dx, -10646(%rbp)
	movw	%ax, -10648(%rbp)
.LBB805:
.LBB806:
	.loc 2 611 41
	movzwl	-10648(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10646(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10644(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10642(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10640(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10638(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10636(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10634(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE806:
.LBE805:
	.loc 2 679 10
	nop
.LBE804:
.LBE803:
	.loc 1 2545 21
	movaps	%xmm0, -80(%rbp)
	movw	$-8034, -10586(%rbp)
	movw	$4552, -10588(%rbp)
	movw	$-8034, -10590(%rbp)
	movw	$4552, -10592(%rbp)
	movw	$-8034, -10594(%rbp)
	movw	$4552, -10596(%rbp)
	movw	$-8034, -10598(%rbp)
	movw	$4552, -10600(%rbp)
.LBB807:
.LBB808:
	.loc 2 679 10
	movswl	-10586(%rbp), %eax
	movswl	-10588(%rbp), %edx
	movswl	-10590(%rbp), %ecx
	movswl	-10592(%rbp), %esi
	movswl	-10594(%rbp), %edi
	movswl	-10596(%rbp), %r8d
	movswl	-10598(%rbp), %r9d
	movswl	-10600(%rbp), %r10d
	movw	%r10w, -10602(%rbp)
	movw	%r9w, -10604(%rbp)
	movw	%r8w, -10606(%rbp)
	movw	%di, -10608(%rbp)
	movw	%si, -10610(%rbp)
	movw	%cx, -10612(%rbp)
	movw	%dx, -10614(%rbp)
	movw	%ax, -10616(%rbp)
.LBB809:
.LBB810:
	.loc 2 611 41
	movzwl	-10616(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10614(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10612(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10610(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10608(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10606(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10604(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10602(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE810:
.LBE809:
	.loc 2 679 10
	nop
.LBE808:
.LBE807:
	.loc 1 2546 21
	movaps	%xmm0, -96(%rbp)
	movw	$6813, -10554(%rbp)
	movw	$-1597, -10556(%rbp)
	movw	$6813, -10558(%rbp)
	movw	$-1597, -10560(%rbp)
	movw	$6813, -10562(%rbp)
	movw	$-1597, -10564(%rbp)
	movw	$6813, -10566(%rbp)
	movw	$-1597, -10568(%rbp)
.LBB811:
.LBB812:
	.loc 2 679 10
	movswl	-10554(%rbp), %eax
	movswl	-10556(%rbp), %edx
	movswl	-10558(%rbp), %ecx
	movswl	-10560(%rbp), %esi
	movswl	-10562(%rbp), %edi
	movswl	-10564(%rbp), %r8d
	movswl	-10566(%rbp), %r9d
	movswl	-10568(%rbp), %r10d
	movw	%r10w, -10570(%rbp)
	movw	%r9w, -10572(%rbp)
	movw	%r8w, -10574(%rbp)
	movw	%di, -10576(%rbp)
	movw	%si, -10578(%rbp)
	movw	%cx, -10580(%rbp)
	movw	%dx, -10582(%rbp)
	movw	%ax, -10584(%rbp)
.LBB813:
.LBB814:
	.loc 2 611 41
	movzwl	-10584(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10582(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10580(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10578(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10576(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10574(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10572(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10570(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE814:
.LBE813:
	.loc 2 679 10
	nop
.LBE812:
.LBE811:
	.loc 1 2547 21
	movaps	%xmm0, -112(%rbp)
	movw	$-1597, -10522(%rbp)
	movw	$4552, -10524(%rbp)
	movw	$-1597, -10526(%rbp)
	movw	$4552, -10528(%rbp)
	movw	$-1597, -10530(%rbp)
	movw	$4552, -10532(%rbp)
	movw	$-1597, -10534(%rbp)
	movw	$4552, -10536(%rbp)
.LBB815:
.LBB816:
	.loc 2 679 10
	movswl	-10522(%rbp), %eax
	movswl	-10524(%rbp), %edx
	movswl	-10526(%rbp), %ecx
	movswl	-10528(%rbp), %esi
	movswl	-10530(%rbp), %edi
	movswl	-10532(%rbp), %r8d
	movswl	-10534(%rbp), %r9d
	movswl	-10536(%rbp), %r10d
	movw	%r10w, -10538(%rbp)
	movw	%r9w, -10540(%rbp)
	movw	%r8w, -10542(%rbp)
	movw	%di, -10544(%rbp)
	movw	%si, -10546(%rbp)
	movw	%cx, -10548(%rbp)
	movw	%dx, -10550(%rbp)
	movw	%ax, -10552(%rbp)
.LBB817:
.LBB818:
	.loc 2 611 41
	movzwl	-10552(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10550(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10548(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10546(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10544(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10542(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10540(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10538(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE818:
.LBE817:
	.loc 2 679 10
	nop
.LBE816:
.LBE815:
	.loc 1 2548 21
	movaps	%xmm0, -128(%rbp)
	movl	$512, -10504(%rbp)
	movl	-10504(%rbp), %eax
	movl	%eax, -10508(%rbp)
	movl	-10504(%rbp), %eax
	movl	%eax, -10512(%rbp)
	movl	-10504(%rbp), %eax
	movl	%eax, -10516(%rbp)
	movl	-10504(%rbp), %eax
	movl	%eax, -10520(%rbp)
.LBB819:
.LBB820:
.LBB821:
.LBB822:
	.loc 2 604 41
	movl	-10508(%rbp), %eax
	movl	-10512(%rbp), %edx
	movd	%edx, %xmm1
	movd	%eax, %xmm5
	punpckldq	%xmm5, %xmm1
	movl	-10516(%rbp), %eax
	movl	-10520(%rbp), %edx
	movd	%edx, %xmm0
	movd	%eax, %xmm6
	punpckldq	%xmm6, %xmm0
	punpcklqdq	%xmm1, %xmm0
.LBE822:
.LBE821:
	.loc 2 644 10
	nop
.LBE820:
.LBE819:
	.loc 1 2551 21
	movaps	%xmm0, -144(%rbp)
	movl	$16842752, -10484(%rbp)
	movl	-10484(%rbp), %eax
	movl	%eax, -10488(%rbp)
	movl	-10484(%rbp), %eax
	movl	%eax, -10492(%rbp)
	movl	-10484(%rbp), %eax
	movl	%eax, -10496(%rbp)
	movl	-10484(%rbp), %eax
	movl	%eax, -10500(%rbp)
.LBB823:
.LBB824:
.LBB825:
.LBB826:
	.loc 2 604 41
	movl	-10488(%rbp), %eax
	movl	-10492(%rbp), %edx
	movd	%edx, %xmm1
	movd	%eax, %xmm7
	punpckldq	%xmm7, %xmm1
	movl	-10496(%rbp), %eax
	movl	-10500(%rbp), %edx
	movd	%edx, %xmm0
	movd	%eax, %xmm5
	punpckldq	%xmm5, %xmm0
	punpcklqdq	%xmm1, %xmm0
.LBE826:
.LBE825:
	.loc 2 644 10
	nop
.LBE824:
.LBE823:
	.loc 1 2552 21
	movaps	%xmm0, -160(%rbp)
	movq	-10936(%rbp), %rax
	movq	%rax, -10480(%rbp)
.LBB827:
.LBB828:
	.loc 2 697 10
	movq	-10480(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE828:
.LBE827:
	.loc 1 2555 11
	movaps	%xmm0, -176(%rbp)
	.loc 1 2556 50
	movq	-10936(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -10472(%rbp)
.LBB829:
.LBB830:
	.loc 2 697 10
	movq	-10472(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE830:
.LBE829:
	.loc 1 2556 11
	movaps	%xmm0, -192(%rbp)
	.loc 1 2557 50
	movq	-10936(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -10464(%rbp)
.LBB831:
.LBB832:
	.loc 2 697 10
	movq	-10464(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE832:
.LBE831:
	.loc 1 2557 11
	movaps	%xmm0, -208(%rbp)
	.loc 1 2558 50
	movq	-10936(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -10456(%rbp)
.LBB833:
.LBB834:
	.loc 2 697 10
	movq	-10456(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE834:
.LBE833:
	.loc 1 2558 11
	movaps	%xmm0, -224(%rbp)
	.loc 1 2559 50
	movq	-10936(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -10448(%rbp)
.LBB835:
.LBB836:
	.loc 2 697 10
	movq	-10448(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE836:
.LBE835:
	.loc 1 2559 11
	movaps	%xmm0, -240(%rbp)
	.loc 1 2560 50
	movq	-10936(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -10440(%rbp)
.LBB837:
.LBB838:
	.loc 2 697 10
	movq	-10440(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE838:
.LBE837:
	.loc 1 2560 11
	movaps	%xmm0, -256(%rbp)
	.loc 1 2561 50
	movq	-10936(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -10432(%rbp)
.LBB839:
.LBB840:
	.loc 2 697 10
	movq	-10432(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE840:
.LBE839:
	.loc 1 2561 11
	movaps	%xmm0, -272(%rbp)
	.loc 1 2562 50
	movq	-10936(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -10424(%rbp)
.LBB841:
.LBB842:
	.loc 2 697 10
	movq	-10424(%rbp), %rax
	movdqa	(%rax), %xmm0
.LBE842:
.LBE841:
	.loc 1 2562 11
	movaps	%xmm0, -288(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -10400(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -10416(%rbp)
.LBB843:
.LBB844:
.LBB845:
	.loc 2 1012 19
	movdqa	-10416(%rbp), %xmm1
	movdqa	-10400(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE845:
.LBE844:
	.loc 1 2565 4
	movaps	%xmm0, -304(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -10368(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -10384(%rbp)
.LBB846:
.LBB847:
	.loc 2 988 19
	movdqa	-10384(%rbp), %xmm1
	movdqa	-10368(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE847:
.LBE846:
	.loc 1 2565 4
	movaps	%xmm0, -320(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -10336(%rbp)
	movdqa	-16(%rbp), %xmm0
	movaps	%xmm0, -10352(%rbp)
.LBB848:
.LBB849:
	.loc 2 1126 19
	movdqa	-10352(%rbp), %xmm0
	movdqa	-10336(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE849:
.LBE848:
	.loc 1 2565 4
	movaps	%xmm0, -336(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -10304(%rbp)
	movdqa	-16(%rbp), %xmm0
	movaps	%xmm0, -10320(%rbp)
.LBB850:
.LBB851:
	.loc 2 1126 19
	movdqa	-10320(%rbp), %xmm0
	movdqa	-10304(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE851:
.LBE850:
	.loc 1 2565 4
	movaps	%xmm0, -352(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -10272(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -10288(%rbp)
.LBB852:
.LBB853:
	.loc 2 1126 19
	movdqa	-10288(%rbp), %xmm0
	movdqa	-10272(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE853:
.LBE852:
	.loc 1 2565 4
	movaps	%xmm0, -368(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -10240(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -10256(%rbp)
.LBB854:
.LBB855:
	.loc 2 1126 19
	movdqa	-10256(%rbp), %xmm0
	movdqa	-10240(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE855:
.LBE854:
	.loc 1 2565 4
	movaps	%xmm0, -384(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -10208(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -10224(%rbp)
.LBB856:
.LBB857:
	.loc 2 1036 21
	movdqa	-10208(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-10224(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE857:
.LBE856:
	.loc 1 2565 4
	movaps	%xmm0, -400(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -10176(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -10192(%rbp)
.LBB858:
.LBB859:
	.loc 2 1084 21
	movdqa	-10176(%rbp), %xmm0
	.loc 2 1084 35
	movdqa	-10192(%rbp), %xmm1
	.loc 2 1084 33
	psubw	%xmm1, %xmm0
.LBE859:
.LBE858:
	.loc 1 2565 4
	movaps	%xmm0, -416(%rbp)
.LBB860:
.LBB861:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -10144(%rbp)
	movdqa	-400(%rbp), %xmm0
	movaps	%xmm0, -10160(%rbp)
.LBE861:
.LBE860:
.LBB862:
.LBB863:
	.loc 2 1012 19
	movdqa	-10160(%rbp), %xmm1
	movdqa	-10144(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -10112(%rbp)
	movl	$4, -10116(%rbp)
.LBE863:
.LBE862:
.LBB864:
.LBB865:
	.loc 2 1180 19
	movdqa	-10112(%rbp), %xmm1
	movd	-10116(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE865:
.LBE864:
	.loc 1 2565 4
	movaps	%xmm0, -432(%rbp)
.LBB866:
.LBB867:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -10080(%rbp)
	movdqa	-400(%rbp), %xmm0
	movaps	%xmm0, -10096(%rbp)
.LBE867:
.LBE866:
.LBB868:
.LBB869:
	.loc 2 988 19
	movdqa	-10096(%rbp), %xmm1
	movdqa	-10080(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -10048(%rbp)
	movl	$4, -10052(%rbp)
.LBE869:
.LBE868:
.LBB870:
.LBB871:
	.loc 2 1180 19
	movdqa	-10048(%rbp), %xmm1
	movd	-10052(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE871:
.LBE870:
	.loc 1 2565 4
	movaps	%xmm0, -448(%rbp)
.LBB872:
.LBB873:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -10016(%rbp)
	movdqa	-416(%rbp), %xmm0
	movaps	%xmm0, -10032(%rbp)
.LBE873:
.LBE872:
.LBB874:
.LBB875:
	.loc 2 1012 19
	movdqa	-10032(%rbp), %xmm1
	movdqa	-10016(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9984(%rbp)
	movl	$4, -9988(%rbp)
.LBE875:
.LBE874:
.LBB876:
.LBB877:
	.loc 2 1180 19
	movdqa	-9984(%rbp), %xmm1
	movd	-9988(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE877:
.LBE876:
	.loc 1 2565 4
	movaps	%xmm0, -464(%rbp)
.LBB878:
.LBB879:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -9952(%rbp)
	movdqa	-416(%rbp), %xmm0
	movaps	%xmm0, -9968(%rbp)
.LBE879:
.LBE878:
.LBB880:
.LBB881:
	.loc 2 988 19
	movdqa	-9968(%rbp), %xmm1
	movdqa	-9952(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9920(%rbp)
	movl	$4, -9924(%rbp)
.LBE881:
.LBE880:
.LBB882:
.LBB883:
	.loc 2 1180 19
	movdqa	-9920(%rbp), %xmm1
	movd	-9924(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE883:
.LBE882:
	.loc 1 2565 4
	movaps	%xmm0, -480(%rbp)
	movdqa	-432(%rbp), %xmm0
	movaps	%xmm0, -9888(%rbp)
	movdqa	-368(%rbp), %xmm0
	movaps	%xmm0, -9904(%rbp)
.LBB884:
.LBB885:
	.loc 2 1042 21
	movdqa	-9888(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-9904(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE885:
.LBE884:
	.loc 1 2565 4
	movaps	%xmm0, -496(%rbp)
	movdqa	-448(%rbp), %xmm0
	movaps	%xmm0, -9856(%rbp)
	movdqa	-384(%rbp), %xmm0
	movaps	%xmm0, -9872(%rbp)
.LBB886:
.LBB887:
	.loc 2 1042 21
	movdqa	-9856(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-9872(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE887:
.LBE886:
	.loc 1 2565 4
	movaps	%xmm0, -512(%rbp)
	movdqa	-432(%rbp), %xmm0
	movaps	%xmm0, -9824(%rbp)
	movdqa	-368(%rbp), %xmm0
	movaps	%xmm0, -9840(%rbp)
.LBB888:
.LBB889:
	.loc 2 1090 21
	movdqa	-9824(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-9840(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE889:
.LBE888:
	.loc 1 2565 4
	movaps	%xmm0, -528(%rbp)
	movdqa	-448(%rbp), %xmm0
	movaps	%xmm0, -9792(%rbp)
	movdqa	-384(%rbp), %xmm0
	movaps	%xmm0, -9808(%rbp)
.LBB890:
.LBB891:
	.loc 2 1090 21
	movdqa	-9792(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-9808(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE891:
.LBE890:
	.loc 1 2565 4
	movaps	%xmm0, -544(%rbp)
	movdqa	-464(%rbp), %xmm0
	movaps	%xmm0, -9760(%rbp)
	movdqa	-336(%rbp), %xmm0
	movaps	%xmm0, -9776(%rbp)
.LBB892:
.LBB893:
	.loc 2 1042 21
	movdqa	-9760(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-9776(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE893:
.LBE892:
	.loc 1 2565 4
	movaps	%xmm0, -560(%rbp)
	movdqa	-480(%rbp), %xmm0
	movaps	%xmm0, -9728(%rbp)
	movdqa	-352(%rbp), %xmm0
	movaps	%xmm0, -9744(%rbp)
.LBB894:
.LBB895:
	.loc 2 1042 21
	movdqa	-9728(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-9744(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE895:
.LBE894:
	.loc 1 2565 4
	movaps	%xmm0, -576(%rbp)
	movdqa	-464(%rbp), %xmm0
	movaps	%xmm0, -9696(%rbp)
	movdqa	-336(%rbp), %xmm0
	movaps	%xmm0, -9712(%rbp)
.LBB896:
.LBB897:
	.loc 2 1090 21
	movdqa	-9696(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-9712(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE897:
.LBE896:
	.loc 1 2565 4
	movaps	%xmm0, -592(%rbp)
	movdqa	-480(%rbp), %xmm0
	movaps	%xmm0, -9664(%rbp)
	movdqa	-352(%rbp), %xmm0
	movaps	%xmm0, -9680(%rbp)
.LBB898:
.LBB899:
	.loc 2 1090 21
	movdqa	-9664(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-9680(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE899:
.LBE898:
	.loc 1 2565 4
	movaps	%xmm0, -608(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -9632(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -9648(%rbp)
.LBB900:
.LBB901:
	.loc 2 1012 19
	movdqa	-9648(%rbp), %xmm1
	movdqa	-9632(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE901:
.LBE900:
	.loc 1 2565 4
	movaps	%xmm0, -624(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -9600(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -9616(%rbp)
.LBB902:
.LBB903:
	.loc 2 988 19
	movdqa	-9616(%rbp), %xmm1
	movdqa	-9600(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE903:
.LBE902:
	.loc 1 2565 4
	movaps	%xmm0, -640(%rbp)
	movdqa	-624(%rbp), %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -9584(%rbp)
.LBB904:
.LBB905:
	.loc 2 1126 19
	movdqa	-9584(%rbp), %xmm0
	movdqa	-9568(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE905:
.LBE904:
	.loc 1 2565 4
	movaps	%xmm0, -656(%rbp)
	movdqa	-640(%rbp), %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -9552(%rbp)
.LBB906:
.LBB907:
	.loc 2 1126 19
	movdqa	-9552(%rbp), %xmm0
	movdqa	-9536(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE907:
.LBE906:
	.loc 1 2565 4
	movaps	%xmm0, -672(%rbp)
	movdqa	-624(%rbp), %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -9520(%rbp)
.LBB908:
.LBB909:
	.loc 2 1126 19
	movdqa	-9520(%rbp), %xmm0
	movdqa	-9504(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE909:
.LBE908:
	.loc 1 2565 4
	movaps	%xmm0, -688(%rbp)
	movdqa	-640(%rbp), %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -9488(%rbp)
.LBB910:
.LBB911:
	.loc 2 1126 19
	movdqa	-9488(%rbp), %xmm0
	movdqa	-9472(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE911:
.LBE910:
	.loc 1 2565 4
	movaps	%xmm0, -704(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -9440(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -9456(%rbp)
.LBB912:
.LBB913:
	.loc 2 1012 19
	movdqa	-9456(%rbp), %xmm1
	movdqa	-9440(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE913:
.LBE912:
	.loc 1 2565 4
	movaps	%xmm0, -720(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -9408(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -9424(%rbp)
.LBB914:
.LBB915:
	.loc 2 988 19
	movdqa	-9424(%rbp), %xmm1
	movdqa	-9408(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE915:
.LBE914:
	.loc 1 2565 4
	movaps	%xmm0, -736(%rbp)
	movdqa	-720(%rbp), %xmm0
	movaps	%xmm0, -9376(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -9392(%rbp)
.LBB916:
.LBB917:
	.loc 2 1126 19
	movdqa	-9392(%rbp), %xmm0
	movdqa	-9376(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE917:
.LBE916:
	.loc 1 2565 4
	movaps	%xmm0, -752(%rbp)
	movdqa	-736(%rbp), %xmm0
	movaps	%xmm0, -9344(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -9360(%rbp)
.LBB918:
.LBB919:
	.loc 2 1126 19
	movdqa	-9360(%rbp), %xmm0
	movdqa	-9344(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE919:
.LBE918:
	.loc 1 2565 4
	movaps	%xmm0, -768(%rbp)
	movdqa	-720(%rbp), %xmm0
	movaps	%xmm0, -9312(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -9328(%rbp)
.LBB920:
.LBB921:
	.loc 2 1126 19
	movdqa	-9328(%rbp), %xmm0
	movdqa	-9312(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE921:
.LBE920:
	.loc 1 2565 4
	movaps	%xmm0, -784(%rbp)
	movdqa	-736(%rbp), %xmm0
	movaps	%xmm0, -9280(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -9296(%rbp)
.LBB922:
.LBB923:
	.loc 2 1126 19
	movdqa	-9296(%rbp), %xmm0
	movdqa	-9280(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE923:
.LBE922:
	.loc 1 2565 4
	movaps	%xmm0, -800(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -9248(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -9264(%rbp)
.LBB924:
.LBB925:
	.loc 2 1036 21
	movdqa	-9248(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-9264(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE925:
.LBE924:
	.loc 1 2565 4
	movaps	%xmm0, -816(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -9216(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -9232(%rbp)
.LBB926:
.LBB927:
	.loc 2 1036 21
	movdqa	-9216(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-9232(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE927:
.LBE926:
	.loc 1 2565 4
	movaps	%xmm0, -832(%rbp)
	movdqa	-816(%rbp), %xmm0
	movaps	%xmm0, -9184(%rbp)
	movdqa	-832(%rbp), %xmm0
	movaps	%xmm0, -9200(%rbp)
.LBB928:
.LBB929:
	.loc 2 1012 19
	movdqa	-9200(%rbp), %xmm1
	movdqa	-9184(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE929:
.LBE928:
	.loc 1 2565 4
	movaps	%xmm0, -848(%rbp)
	movdqa	-816(%rbp), %xmm0
	movaps	%xmm0, -9152(%rbp)
	movdqa	-832(%rbp), %xmm0
	movaps	%xmm0, -9168(%rbp)
.LBB930:
.LBB931:
	.loc 2 988 19
	movdqa	-9168(%rbp), %xmm1
	movdqa	-9152(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE931:
.LBE930:
	.loc 1 2565 4
	movaps	%xmm0, -864(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -9120(%rbp)
	movdqa	-48(%rbp), %xmm0
	movaps	%xmm0, -9136(%rbp)
.LBB932:
.LBB933:
	.loc 2 1126 19
	movdqa	-9136(%rbp), %xmm0
	movdqa	-9120(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE933:
.LBE932:
	.loc 1 2565 4
	movaps	%xmm0, -880(%rbp)
	movdqa	-864(%rbp), %xmm0
	movaps	%xmm0, -9088(%rbp)
	movdqa	-48(%rbp), %xmm0
	movaps	%xmm0, -9104(%rbp)
.LBB934:
.LBB935:
	.loc 2 1126 19
	movdqa	-9104(%rbp), %xmm0
	movdqa	-9088(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE935:
.LBE934:
	.loc 1 2565 4
	movaps	%xmm0, -896(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -9056(%rbp)
	movdqa	-64(%rbp), %xmm0
	movaps	%xmm0, -9072(%rbp)
.LBB936:
.LBB937:
	.loc 2 1126 19
	movdqa	-9072(%rbp), %xmm0
	movdqa	-9056(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE937:
.LBE936:
	.loc 1 2565 4
	movaps	%xmm0, -912(%rbp)
	movdqa	-864(%rbp), %xmm0
	movaps	%xmm0, -9024(%rbp)
	movdqa	-64(%rbp), %xmm0
	movaps	%xmm0, -9040(%rbp)
.LBB938:
.LBB939:
	.loc 2 1126 19
	movdqa	-9040(%rbp), %xmm0
	movdqa	-9024(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE939:
.LBE938:
	.loc 1 2565 4
	movaps	%xmm0, -928(%rbp)
	movdqa	-656(%rbp), %xmm0
	movaps	%xmm0, -8992(%rbp)
	movdqa	-880(%rbp), %xmm0
	movaps	%xmm0, -9008(%rbp)
.LBB940:
.LBB941:
	.loc 2 1042 21
	movdqa	-8992(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-9008(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE941:
.LBE940:
	.loc 1 2565 4
	movaps	%xmm0, -944(%rbp)
	movdqa	-672(%rbp), %xmm0
	movaps	%xmm0, -8960(%rbp)
	movdqa	-896(%rbp), %xmm0
	movaps	%xmm0, -8976(%rbp)
.LBB942:
.LBB943:
	.loc 2 1042 21
	movdqa	-8960(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8976(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE943:
.LBE942:
	.loc 1 2565 4
	movaps	%xmm0, -960(%rbp)
	movdqa	-752(%rbp), %xmm0
	movaps	%xmm0, -8928(%rbp)
	movdqa	-912(%rbp), %xmm0
	movaps	%xmm0, -8944(%rbp)
.LBB944:
.LBB945:
	.loc 2 1042 21
	movdqa	-8928(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8944(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE945:
.LBE944:
	.loc 1 2565 4
	movaps	%xmm0, -976(%rbp)
	movdqa	-768(%rbp), %xmm0
	movaps	%xmm0, -8896(%rbp)
	movdqa	-928(%rbp), %xmm0
	movaps	%xmm0, -8912(%rbp)
.LBB946:
.LBB947:
	.loc 2 1042 21
	movdqa	-8896(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8912(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE947:
.LBE946:
	.loc 1 2565 4
	movaps	%xmm0, -992(%rbp)
	movdqa	-688(%rbp), %xmm0
	movaps	%xmm0, -8864(%rbp)
	movdqa	-912(%rbp), %xmm0
	movaps	%xmm0, -8880(%rbp)
.LBB948:
.LBB949:
	.loc 2 1042 21
	movdqa	-8864(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8880(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE949:
.LBE948:
	.loc 1 2565 4
	movaps	%xmm0, -1008(%rbp)
	movdqa	-704(%rbp), %xmm0
	movaps	%xmm0, -8832(%rbp)
	movdqa	-928(%rbp), %xmm0
	movaps	%xmm0, -8848(%rbp)
.LBB950:
.LBB951:
	.loc 2 1042 21
	movdqa	-8832(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8848(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE951:
.LBE950:
	.loc 1 2565 4
	movaps	%xmm0, -1024(%rbp)
	movdqa	-784(%rbp), %xmm0
	movaps	%xmm0, -8800(%rbp)
	movdqa	-880(%rbp), %xmm0
	movaps	%xmm0, -8816(%rbp)
.LBB952:
.LBB953:
	.loc 2 1042 21
	movdqa	-8800(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8816(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE953:
.LBE952:
	.loc 1 2565 4
	movaps	%xmm0, -1040(%rbp)
	movdqa	-800(%rbp), %xmm0
	movaps	%xmm0, -8768(%rbp)
	movdqa	-896(%rbp), %xmm0
	movaps	%xmm0, -8784(%rbp)
.LBB954:
.LBB955:
	.loc 2 1042 21
	movdqa	-8768(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8784(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE955:
.LBE954:
	.loc 1 2565 4
	movaps	%xmm0, -1056(%rbp)
	movdqa	-496(%rbp), %xmm0
	movaps	%xmm0, -8736(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -8752(%rbp)
.LBB956:
.LBB957:
.LBB958:
	.loc 2 1042 21
	movdqa	-8736(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8752(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE958:
.LBE957:
	.loc 1 2565 4
	movaps	%xmm0, -1072(%rbp)
	movdqa	-512(%rbp), %xmm0
	movaps	%xmm0, -8704(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -8720(%rbp)
.LBB959:
.LBB960:
	.loc 2 1042 21
	movdqa	-8704(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8720(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE960:
.LBE959:
	.loc 1 2565 4
	movaps	%xmm0, -1088(%rbp)
	movdqa	-1072(%rbp), %xmm0
	movaps	%xmm0, -8672(%rbp)
	movdqa	-1040(%rbp), %xmm0
	movaps	%xmm0, -8688(%rbp)
.LBB961:
.LBB962:
	.loc 2 1042 21
	movdqa	-8672(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8688(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE962:
.LBE961:
	.loc 1 2565 4
	movaps	%xmm0, -1104(%rbp)
	movdqa	-1088(%rbp), %xmm0
	movaps	%xmm0, -8640(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movaps	%xmm0, -8656(%rbp)
.LBB963:
.LBB964:
	.loc 2 1042 21
	movdqa	-8640(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8656(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE964:
.LBE963:
	.loc 1 2565 4
	movaps	%xmm0, -1120(%rbp)
	movdqa	-1072(%rbp), %xmm0
	movaps	%xmm0, -8608(%rbp)
	movdqa	-1040(%rbp), %xmm0
	movaps	%xmm0, -8624(%rbp)
.LBB965:
.LBB966:
	.loc 2 1090 21
	movdqa	-8608(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-8624(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE966:
.LBE965:
	.loc 1 2565 4
	movaps	%xmm0, -1136(%rbp)
	movdqa	-1088(%rbp), %xmm0
	movaps	%xmm0, -8576(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movaps	%xmm0, -8592(%rbp)
.LBB967:
.LBB968:
	.loc 2 1090 21
	movdqa	-8576(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-8592(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE968:
.LBE967:
	.loc 1 2565 4
	movaps	%xmm0, -1152(%rbp)
	movdqa	-1120(%rbp), %xmm0
	movaps	%xmm0, -8544(%rbp)
	movl	$10, -8548(%rbp)
.LBB969:
.LBB970:
	.loc 2 1180 19
	movdqa	-8544(%rbp), %xmm1
	movd	-8548(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1104(%rbp), %xmm0
	movaps	%xmm0, -8512(%rbp)
	movl	$10, -8516(%rbp)
.LBE970:
.LBE969:
.LBB971:
.LBB972:
	.loc 2 1180 19
	movdqa	-8512(%rbp), %xmm1
	movd	-8516(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8480(%rbp)
	movaps	%xmm2, -8496(%rbp)
.LBE972:
.LBE971:
.LBB973:
.LBB974:
	.loc 2 970 19
	movdqa	-8496(%rbp), %xmm1
	movdqa	-8480(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE974:
.LBE973:
	.loc 1 2565 4
	movaps	%xmm0, -176(%rbp)
	movdqa	-1152(%rbp), %xmm0
	movaps	%xmm0, -8448(%rbp)
	movl	$10, -8452(%rbp)
.LBB975:
.LBB976:
	.loc 2 1180 19
	movdqa	-8448(%rbp), %xmm1
	movd	-8452(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1136(%rbp), %xmm0
	movaps	%xmm0, -8416(%rbp)
	movl	$10, -8420(%rbp)
.LBE976:
.LBE975:
.LBB977:
.LBB978:
	.loc 2 1180 19
	movdqa	-8416(%rbp), %xmm1
	movd	-8420(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8384(%rbp)
	movaps	%xmm2, -8400(%rbp)
.LBE978:
.LBE977:
.LBB979:
.LBB980:
	.loc 2 970 19
	movdqa	-8400(%rbp), %xmm1
	movdqa	-8384(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE980:
.LBE979:
	.loc 1 2565 4
	movaps	%xmm0, -288(%rbp)
	movdqa	-560(%rbp), %xmm0
	movaps	%xmm0, -8352(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -8368(%rbp)
.LBE956:
.LBB981:
.LBB982:
.LBB983:
	.loc 2 1042 21
	movdqa	-8352(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8368(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE983:
.LBE982:
	.loc 1 2565 4
	movaps	%xmm0, -1168(%rbp)
	movdqa	-576(%rbp), %xmm0
	movaps	%xmm0, -8320(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -8336(%rbp)
.LBB984:
.LBB985:
	.loc 2 1042 21
	movdqa	-8320(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8336(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE985:
.LBE984:
	.loc 1 2565 4
	movaps	%xmm0, -1184(%rbp)
	movdqa	-1168(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-1008(%rbp), %xmm0
	movaps	%xmm0, -8304(%rbp)
.LBB986:
.LBB987:
	.loc 2 1042 21
	movdqa	-8288(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8304(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE987:
.LBE986:
	.loc 1 2565 4
	movaps	%xmm0, -1200(%rbp)
	movdqa	-1184(%rbp), %xmm0
	movaps	%xmm0, -8256(%rbp)
	movdqa	-1024(%rbp), %xmm0
	movaps	%xmm0, -8272(%rbp)
.LBB988:
.LBB989:
	.loc 2 1042 21
	movdqa	-8256(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-8272(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE989:
.LBE988:
	.loc 1 2565 4
	movaps	%xmm0, -1216(%rbp)
	movdqa	-1168(%rbp), %xmm0
	movaps	%xmm0, -8224(%rbp)
	movdqa	-1008(%rbp), %xmm0
	movaps	%xmm0, -8240(%rbp)
.LBB990:
.LBB991:
	.loc 2 1090 21
	movdqa	-8224(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-8240(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE991:
.LBE990:
	.loc 1 2565 4
	movaps	%xmm0, -1232(%rbp)
	movdqa	-1184(%rbp), %xmm0
	movaps	%xmm0, -8192(%rbp)
	movdqa	-1024(%rbp), %xmm0
	movaps	%xmm0, -8208(%rbp)
.LBB992:
.LBB993:
	.loc 2 1090 21
	movdqa	-8192(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-8208(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE993:
.LBE992:
	.loc 1 2565 4
	movaps	%xmm0, -1248(%rbp)
	movdqa	-1216(%rbp), %xmm0
	movaps	%xmm0, -8160(%rbp)
	movl	$10, -8164(%rbp)
.LBB994:
.LBB995:
	.loc 2 1180 19
	movdqa	-8160(%rbp), %xmm1
	movd	-8164(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1200(%rbp), %xmm0
	movaps	%xmm0, -8128(%rbp)
	movl	$10, -8132(%rbp)
.LBE995:
.LBE994:
.LBB996:
.LBB997:
	.loc 2 1180 19
	movdqa	-8128(%rbp), %xmm1
	movd	-8132(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8096(%rbp)
	movaps	%xmm2, -8112(%rbp)
.LBE997:
.LBE996:
.LBB998:
.LBB999:
	.loc 2 970 19
	movdqa	-8112(%rbp), %xmm1
	movdqa	-8096(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE999:
.LBE998:
	.loc 1 2565 4
	movaps	%xmm0, -192(%rbp)
	movdqa	-1248(%rbp), %xmm0
	movaps	%xmm0, -8064(%rbp)
	movl	$10, -8068(%rbp)
.LBB1000:
.LBB1001:
	.loc 2 1180 19
	movdqa	-8064(%rbp), %xmm1
	movd	-8068(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1232(%rbp), %xmm0
	movaps	%xmm0, -8032(%rbp)
	movl	$10, -8036(%rbp)
.LBE1001:
.LBE1000:
.LBB1002:
.LBB1003:
	.loc 2 1180 19
	movdqa	-8032(%rbp), %xmm1
	movd	-8036(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8000(%rbp)
	movaps	%xmm2, -8016(%rbp)
.LBE1003:
.LBE1002:
.LBB1004:
.LBB1005:
	.loc 2 970 19
	movdqa	-8016(%rbp), %xmm1
	movdqa	-8000(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1005:
.LBE1004:
	.loc 1 2565 4
	movaps	%xmm0, -272(%rbp)
	movdqa	-592(%rbp), %xmm0
	movaps	%xmm0, -7968(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -7984(%rbp)
.LBE981:
.LBB1006:
.LBB1007:
.LBB1008:
	.loc 2 1042 21
	movdqa	-7968(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7984(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1008:
.LBE1007:
	.loc 1 2565 4
	movaps	%xmm0, -1264(%rbp)
	movdqa	-608(%rbp), %xmm0
	movaps	%xmm0, -7936(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -7952(%rbp)
.LBB1009:
.LBB1010:
	.loc 2 1042 21
	movdqa	-7936(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7952(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1010:
.LBE1009:
	.loc 1 2565 4
	movaps	%xmm0, -1280(%rbp)
	movdqa	-1264(%rbp), %xmm0
	movaps	%xmm0, -7904(%rbp)
	movdqa	-976(%rbp), %xmm0
	movaps	%xmm0, -7920(%rbp)
.LBB1011:
.LBB1012:
	.loc 2 1042 21
	movdqa	-7904(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7920(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1012:
.LBE1011:
	.loc 1 2565 4
	movaps	%xmm0, -1296(%rbp)
	movdqa	-1280(%rbp), %xmm0
	movaps	%xmm0, -7872(%rbp)
	movdqa	-992(%rbp), %xmm0
	movaps	%xmm0, -7888(%rbp)
.LBB1013:
.LBB1014:
	.loc 2 1042 21
	movdqa	-7872(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7888(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1014:
.LBE1013:
	.loc 1 2565 4
	movaps	%xmm0, -1312(%rbp)
	movdqa	-1264(%rbp), %xmm0
	movaps	%xmm0, -7840(%rbp)
	movdqa	-976(%rbp), %xmm0
	movaps	%xmm0, -7856(%rbp)
.LBB1015:
.LBB1016:
	.loc 2 1090 21
	movdqa	-7840(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-7856(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1016:
.LBE1015:
	.loc 1 2565 4
	movaps	%xmm0, -1328(%rbp)
	movdqa	-1280(%rbp), %xmm0
	movaps	%xmm0, -7808(%rbp)
	movdqa	-992(%rbp), %xmm0
	movaps	%xmm0, -7824(%rbp)
.LBB1017:
.LBB1018:
	.loc 2 1090 21
	movdqa	-7808(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-7824(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1018:
.LBE1017:
	.loc 1 2565 4
	movaps	%xmm0, -1344(%rbp)
	movdqa	-1312(%rbp), %xmm0
	movaps	%xmm0, -7776(%rbp)
	movl	$10, -7780(%rbp)
.LBB1019:
.LBB1020:
	.loc 2 1180 19
	movdqa	-7776(%rbp), %xmm1
	movd	-7780(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1296(%rbp), %xmm0
	movaps	%xmm0, -7744(%rbp)
	movl	$10, -7748(%rbp)
.LBE1020:
.LBE1019:
.LBB1021:
.LBB1022:
	.loc 2 1180 19
	movdqa	-7744(%rbp), %xmm1
	movd	-7748(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -7712(%rbp)
	movaps	%xmm2, -7728(%rbp)
.LBE1022:
.LBE1021:
.LBB1023:
.LBB1024:
	.loc 2 970 19
	movdqa	-7728(%rbp), %xmm1
	movdqa	-7712(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1024:
.LBE1023:
	.loc 1 2565 4
	movaps	%xmm0, -208(%rbp)
	movdqa	-1344(%rbp), %xmm0
	movaps	%xmm0, -7680(%rbp)
	movl	$10, -7684(%rbp)
.LBB1025:
.LBB1026:
	.loc 2 1180 19
	movdqa	-7680(%rbp), %xmm1
	movd	-7684(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1328(%rbp), %xmm0
	movaps	%xmm0, -7648(%rbp)
	movl	$10, -7652(%rbp)
.LBE1026:
.LBE1025:
.LBB1027:
.LBB1028:
	.loc 2 1180 19
	movdqa	-7648(%rbp), %xmm1
	movd	-7652(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -7616(%rbp)
	movaps	%xmm2, -7632(%rbp)
.LBE1028:
.LBE1027:
.LBB1029:
.LBB1030:
	.loc 2 970 19
	movdqa	-7632(%rbp), %xmm1
	movdqa	-7616(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1030:
.LBE1029:
	.loc 1 2565 4
	movaps	%xmm0, -256(%rbp)
	movdqa	-528(%rbp), %xmm0
	movaps	%xmm0, -7584(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -7600(%rbp)
.LBE1006:
.LBB1031:
.LBB1032:
.LBB1033:
	.loc 2 1042 21
	movdqa	-7584(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7600(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1033:
.LBE1032:
	.loc 1 2565 4
	movaps	%xmm0, -1360(%rbp)
	movdqa	-544(%rbp), %xmm0
	movaps	%xmm0, -7552(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -7568(%rbp)
.LBB1034:
.LBB1035:
	.loc 2 1042 21
	movdqa	-7552(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7568(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1035:
.LBE1034:
	.loc 1 2565 4
	movaps	%xmm0, -1376(%rbp)
	movdqa	-1360(%rbp), %xmm0
	movaps	%xmm0, -7520(%rbp)
	movdqa	-944(%rbp), %xmm0
	movaps	%xmm0, -7536(%rbp)
.LBB1036:
.LBB1037:
	.loc 2 1042 21
	movdqa	-7520(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7536(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1037:
.LBE1036:
	.loc 1 2565 4
	movaps	%xmm0, -1392(%rbp)
	movdqa	-1376(%rbp), %xmm0
	movaps	%xmm0, -7488(%rbp)
	movdqa	-960(%rbp), %xmm0
	movaps	%xmm0, -7504(%rbp)
.LBB1038:
.LBB1039:
	.loc 2 1042 21
	movdqa	-7488(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-7504(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1039:
.LBE1038:
	.loc 1 2565 4
	movaps	%xmm0, -1408(%rbp)
	movdqa	-1360(%rbp), %xmm0
	movaps	%xmm0, -7456(%rbp)
	movdqa	-944(%rbp), %xmm0
	movaps	%xmm0, -7472(%rbp)
.LBB1040:
.LBB1041:
	.loc 2 1090 21
	movdqa	-7456(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-7472(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1041:
.LBE1040:
	.loc 1 2565 4
	movaps	%xmm0, -1424(%rbp)
	movdqa	-1376(%rbp), %xmm0
	movaps	%xmm0, -7424(%rbp)
	movdqa	-960(%rbp), %xmm0
	movaps	%xmm0, -7440(%rbp)
.LBB1042:
.LBB1043:
	.loc 2 1090 21
	movdqa	-7424(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-7440(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1043:
.LBE1042:
	.loc 1 2565 4
	movaps	%xmm0, -1440(%rbp)
	movdqa	-1408(%rbp), %xmm0
	movaps	%xmm0, -7392(%rbp)
	movl	$10, -7396(%rbp)
.LBB1044:
.LBB1045:
	.loc 2 1180 19
	movdqa	-7392(%rbp), %xmm1
	movd	-7396(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1392(%rbp), %xmm0
	movaps	%xmm0, -7360(%rbp)
	movl	$10, -7364(%rbp)
.LBE1045:
.LBE1044:
.LBB1046:
.LBB1047:
	.loc 2 1180 19
	movdqa	-7360(%rbp), %xmm1
	movd	-7364(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -7328(%rbp)
	movaps	%xmm2, -7344(%rbp)
.LBE1047:
.LBE1046:
.LBB1048:
.LBB1049:
	.loc 2 970 19
	movdqa	-7344(%rbp), %xmm1
	movdqa	-7328(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1049:
.LBE1048:
	.loc 1 2565 4
	movaps	%xmm0, -224(%rbp)
	movdqa	-1440(%rbp), %xmm0
	movaps	%xmm0, -7296(%rbp)
	movl	$10, -7300(%rbp)
.LBB1050:
.LBB1051:
	.loc 2 1180 19
	movdqa	-7296(%rbp), %xmm1
	movd	-7300(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-1424(%rbp), %xmm0
	movaps	%xmm0, -7264(%rbp)
	movl	$10, -7268(%rbp)
.LBE1051:
.LBE1050:
.LBB1052:
.LBB1053:
	.loc 2 1180 19
	movdqa	-7264(%rbp), %xmm1
	movd	-7268(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -7232(%rbp)
	movaps	%xmm2, -7248(%rbp)
.LBE1053:
.LBE1052:
.LBB1054:
.LBB1055:
	.loc 2 970 19
	movdqa	-7248(%rbp), %xmm1
	movdqa	-7232(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1055:
.LBE1054:
	.loc 1 2565 4
	movaps	%xmm0, -240(%rbp)
.LBE1031:
.LBE843:
	.loc 1 2569 7
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -7200(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -7216(%rbp)
.LBB1056:
.LBB1057:
	.loc 2 1012 19
	movdqa	-7216(%rbp), %xmm1
	movdqa	-7200(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1057:
.LBE1056:
	.loc 1 2569 7
	movaps	%xmm0, -176(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -7168(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -7184(%rbp)
.LBB1058:
.LBB1059:
	.loc 2 988 19
	movdqa	-7184(%rbp), %xmm1
	movdqa	-7168(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1059:
.LBE1058:
	.loc 1 2569 7
	movaps	%xmm0, -240(%rbp)
	.loc 1 2570 7
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -7136(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -7152(%rbp)
.LBB1060:
.LBB1061:
	.loc 2 1012 19
	movdqa	-7152(%rbp), %xmm1
	movdqa	-7136(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1061:
.LBE1060:
	.loc 1 2570 7
	movaps	%xmm0, -192(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -7104(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -7120(%rbp)
.LBB1062:
.LBB1063:
	.loc 2 988 19
	movdqa	-7120(%rbp), %xmm1
	movdqa	-7104(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1063:
.LBE1062:
	.loc 1 2570 7
	movaps	%xmm0, -256(%rbp)
	.loc 1 2571 7
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -7072(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -7088(%rbp)
.LBB1064:
.LBB1065:
	.loc 2 1012 19
	movdqa	-7088(%rbp), %xmm1
	movdqa	-7072(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1065:
.LBE1064:
	.loc 1 2571 7
	movaps	%xmm0, -208(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -7040(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -7056(%rbp)
.LBB1066:
.LBB1067:
	.loc 2 988 19
	movdqa	-7056(%rbp), %xmm1
	movdqa	-7040(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1067:
.LBE1066:
	.loc 1 2571 7
	movaps	%xmm0, -272(%rbp)
	.loc 1 2572 7
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -7008(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -7024(%rbp)
.LBB1068:
.LBB1069:
	.loc 2 1012 19
	movdqa	-7024(%rbp), %xmm1
	movdqa	-7008(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1069:
.LBE1068:
	.loc 1 2572 7
	movaps	%xmm0, -224(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6976(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -6992(%rbp)
.LBB1070:
.LBB1071:
	.loc 2 988 19
	movdqa	-6992(%rbp), %xmm1
	movdqa	-6976(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1071:
.LBE1070:
	.loc 1 2572 7
	movaps	%xmm0, -288(%rbp)
	.loc 1 2575 7
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -6944(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -6960(%rbp)
.LBB1072:
.LBB1073:
	.loc 2 1012 19
	movdqa	-6960(%rbp), %xmm1
	movdqa	-6944(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1073:
.LBE1072:
	.loc 1 2575 7
	movaps	%xmm0, -176(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6912(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -6928(%rbp)
.LBB1074:
.LBB1075:
	.loc 2 988 19
	movdqa	-6928(%rbp), %xmm1
	movdqa	-6912(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1075:
.LBE1074:
	.loc 1 2575 7
	movaps	%xmm0, -208(%rbp)
	.loc 1 2576 7
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -6880(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -6896(%rbp)
.LBB1076:
.LBB1077:
	.loc 2 1012 19
	movdqa	-6896(%rbp), %xmm1
	movdqa	-6880(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1077:
.LBE1076:
	.loc 1 2576 7
	movaps	%xmm0, -192(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6848(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -6864(%rbp)
.LBB1078:
.LBB1079:
	.loc 2 988 19
	movdqa	-6864(%rbp), %xmm1
	movdqa	-6848(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1079:
.LBE1078:
	.loc 1 2576 7
	movaps	%xmm0, -224(%rbp)
	.loc 1 2577 7
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -6816(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -6832(%rbp)
.LBB1080:
.LBB1081:
	.loc 2 1012 19
	movdqa	-6832(%rbp), %xmm1
	movdqa	-6816(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1081:
.LBE1080:
	.loc 1 2577 7
	movaps	%xmm0, -240(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6784(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -6800(%rbp)
.LBB1082:
.LBB1083:
	.loc 2 988 19
	movdqa	-6800(%rbp), %xmm1
	movdqa	-6784(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1083:
.LBE1082:
	.loc 1 2577 7
	movaps	%xmm0, -272(%rbp)
	.loc 1 2578 7
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -6752(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -6768(%rbp)
.LBB1084:
.LBB1085:
	.loc 2 1012 19
	movdqa	-6768(%rbp), %xmm1
	movdqa	-6752(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1085:
.LBE1084:
	.loc 1 2578 7
	movaps	%xmm0, -256(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6720(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -6736(%rbp)
.LBB1086:
.LBB1087:
	.loc 2 988 19
	movdqa	-6736(%rbp), %xmm1
	movdqa	-6720(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1087:
.LBE1086:
	.loc 1 2578 7
	movaps	%xmm0, -288(%rbp)
	.loc 1 2581 7
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -6688(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -6704(%rbp)
.LBB1088:
.LBB1089:
	.loc 2 1012 19
	movdqa	-6704(%rbp), %xmm1
	movdqa	-6688(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1089:
.LBE1088:
	.loc 1 2581 7
	movaps	%xmm0, -176(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6656(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -6672(%rbp)
.LBB1090:
.LBB1091:
	.loc 2 988 19
	movdqa	-6672(%rbp), %xmm1
	movdqa	-6656(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1091:
.LBE1090:
	.loc 1 2581 7
	movaps	%xmm0, -192(%rbp)
	.loc 1 2582 7
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -6624(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -6640(%rbp)
.LBB1092:
.LBB1093:
	.loc 2 1012 19
	movdqa	-6640(%rbp), %xmm1
	movdqa	-6624(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1093:
.LBE1092:
	.loc 1 2582 7
	movaps	%xmm0, -208(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6592(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -6608(%rbp)
.LBB1094:
.LBB1095:
	.loc 2 988 19
	movdqa	-6608(%rbp), %xmm1
	movdqa	-6592(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1095:
.LBE1094:
	.loc 1 2582 7
	movaps	%xmm0, -224(%rbp)
	.loc 1 2583 7
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -6560(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -6576(%rbp)
.LBB1096:
.LBB1097:
	.loc 2 1012 19
	movdqa	-6576(%rbp), %xmm1
	movdqa	-6560(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1097:
.LBE1096:
	.loc 1 2583 7
	movaps	%xmm0, -240(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6528(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -6544(%rbp)
.LBB1098:
.LBB1099:
	.loc 2 988 19
	movdqa	-6544(%rbp), %xmm1
	movdqa	-6528(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1099:
.LBE1098:
	.loc 1 2583 7
	movaps	%xmm0, -256(%rbp)
	.loc 1 2584 7
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -6496(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -6512(%rbp)
.LBB1100:
.LBB1101:
	.loc 2 1012 19
	movdqa	-6512(%rbp), %xmm1
	movdqa	-6496(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1101:
.LBE1100:
	.loc 1 2584 7
	movaps	%xmm0, -272(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -6464(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -6480(%rbp)
.LBB1102:
.LBB1103:
	.loc 2 988 19
	movdqa	-6480(%rbp), %xmm1
	movdqa	-6464(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1103:
.LBE1102:
	.loc 1 2584 7
	movaps	%xmm0, -288(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -6432(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -6448(%rbp)
.LBB1104:
.LBB1105:
.LBB1106:
	.loc 2 1012 19
	movdqa	-6448(%rbp), %xmm1
	movdqa	-6432(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1106:
.LBE1105:
	.loc 1 2588 4
	movaps	%xmm0, -1472(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -6400(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -6416(%rbp)
.LBB1107:
.LBB1108:
	.loc 2 988 19
	movdqa	-6416(%rbp), %xmm1
	movdqa	-6400(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1108:
.LBE1107:
	.loc 1 2588 4
	movaps	%xmm0, -1488(%rbp)
	movdqa	-1472(%rbp), %xmm0
	movaps	%xmm0, -6368(%rbp)
	movdqa	-16(%rbp), %xmm0
	movaps	%xmm0, -6384(%rbp)
.LBB1109:
.LBB1110:
	.loc 2 1126 19
	movdqa	-6384(%rbp), %xmm0
	movdqa	-6368(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1110:
.LBE1109:
	.loc 1 2588 4
	movaps	%xmm0, -1504(%rbp)
	movdqa	-1488(%rbp), %xmm0
	movaps	%xmm0, -6336(%rbp)
	movdqa	-16(%rbp), %xmm0
	movaps	%xmm0, -6352(%rbp)
.LBB1111:
.LBB1112:
	.loc 2 1126 19
	movdqa	-6352(%rbp), %xmm0
	movdqa	-6336(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1112:
.LBE1111:
	.loc 1 2588 4
	movaps	%xmm0, -1520(%rbp)
	movdqa	-1472(%rbp), %xmm0
	movaps	%xmm0, -6304(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -6320(%rbp)
.LBB1113:
.LBB1114:
	.loc 2 1126 19
	movdqa	-6320(%rbp), %xmm0
	movdqa	-6304(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1114:
.LBE1113:
	.loc 1 2588 4
	movaps	%xmm0, -1536(%rbp)
	movdqa	-1488(%rbp), %xmm0
	movaps	%xmm0, -6272(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -6288(%rbp)
.LBB1115:
.LBB1116:
	.loc 2 1126 19
	movdqa	-6288(%rbp), %xmm0
	movdqa	-6272(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1116:
.LBE1115:
	.loc 1 2588 4
	movaps	%xmm0, -1552(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -6240(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -6256(%rbp)
.LBB1117:
.LBB1118:
	.loc 2 1036 21
	movdqa	-6240(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-6256(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1118:
.LBE1117:
	.loc 1 2588 4
	movaps	%xmm0, -1568(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -6208(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -6224(%rbp)
.LBB1119:
.LBB1120:
	.loc 2 1084 21
	movdqa	-6208(%rbp), %xmm0
	.loc 2 1084 35
	movdqa	-6224(%rbp), %xmm1
	.loc 2 1084 33
	psubw	%xmm1, %xmm0
.LBE1120:
.LBE1119:
	.loc 1 2588 4
	movaps	%xmm0, -1584(%rbp)
.LBB1121:
.LBB1122:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -6176(%rbp)
	movdqa	-1568(%rbp), %xmm0
	movaps	%xmm0, -6192(%rbp)
.LBE1122:
.LBE1121:
.LBB1123:
.LBB1124:
	.loc 2 1012 19
	movdqa	-6192(%rbp), %xmm1
	movdqa	-6176(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -6144(%rbp)
	movl	$4, -6148(%rbp)
.LBE1124:
.LBE1123:
.LBB1125:
.LBB1126:
	.loc 2 1180 19
	movdqa	-6144(%rbp), %xmm1
	movd	-6148(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE1126:
.LBE1125:
	.loc 1 2588 4
	movaps	%xmm0, -1600(%rbp)
.LBB1127:
.LBB1128:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -6112(%rbp)
	movdqa	-1568(%rbp), %xmm0
	movaps	%xmm0, -6128(%rbp)
.LBE1128:
.LBE1127:
.LBB1129:
.LBB1130:
	.loc 2 988 19
	movdqa	-6128(%rbp), %xmm1
	movdqa	-6112(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -6080(%rbp)
	movl	$4, -6084(%rbp)
.LBE1130:
.LBE1129:
.LBB1131:
.LBB1132:
	.loc 2 1180 19
	movdqa	-6080(%rbp), %xmm1
	movd	-6084(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE1132:
.LBE1131:
	.loc 1 2588 4
	movaps	%xmm0, -1616(%rbp)
.LBB1133:
.LBB1134:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -6048(%rbp)
	movdqa	-1584(%rbp), %xmm0
	movaps	%xmm0, -6064(%rbp)
.LBE1134:
.LBE1133:
.LBB1135:
.LBB1136:
	.loc 2 1012 19
	movdqa	-6064(%rbp), %xmm1
	movdqa	-6048(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -6016(%rbp)
	movl	$4, -6020(%rbp)
.LBE1136:
.LBE1135:
.LBB1137:
.LBB1138:
	.loc 2 1180 19
	movdqa	-6016(%rbp), %xmm1
	movd	-6020(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE1138:
.LBE1137:
	.loc 1 2588 4
	movaps	%xmm0, -1632(%rbp)
.LBB1139:
.LBB1140:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -5984(%rbp)
	movdqa	-1584(%rbp), %xmm0
	movaps	%xmm0, -6000(%rbp)
.LBE1140:
.LBE1139:
.LBB1141:
.LBB1142:
	.loc 2 988 19
	movdqa	-6000(%rbp), %xmm1
	movdqa	-5984(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -5952(%rbp)
	movl	$4, -5956(%rbp)
.LBE1142:
.LBE1141:
.LBB1143:
.LBB1144:
	.loc 2 1180 19
	movdqa	-5952(%rbp), %xmm1
	movd	-5956(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
.LBE1144:
.LBE1143:
	.loc 1 2588 4
	movaps	%xmm0, -1648(%rbp)
	movdqa	-1600(%rbp), %xmm0
	movaps	%xmm0, -5920(%rbp)
	movdqa	-1536(%rbp), %xmm0
	movaps	%xmm0, -5936(%rbp)
.LBB1145:
.LBB1146:
	.loc 2 1042 21
	movdqa	-5920(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5936(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1146:
.LBE1145:
	.loc 1 2588 4
	movaps	%xmm0, -1664(%rbp)
	movdqa	-1616(%rbp), %xmm0
	movaps	%xmm0, -5888(%rbp)
	movdqa	-1552(%rbp), %xmm0
	movaps	%xmm0, -5904(%rbp)
.LBB1147:
.LBB1148:
	.loc 2 1042 21
	movdqa	-5888(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5904(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1148:
.LBE1147:
	.loc 1 2588 4
	movaps	%xmm0, -1680(%rbp)
	movdqa	-1600(%rbp), %xmm0
	movaps	%xmm0, -5856(%rbp)
	movdqa	-1536(%rbp), %xmm0
	movaps	%xmm0, -5872(%rbp)
.LBB1149:
.LBB1150:
	.loc 2 1090 21
	movdqa	-5856(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-5872(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1150:
.LBE1149:
	.loc 1 2588 4
	movaps	%xmm0, -1696(%rbp)
	movdqa	-1616(%rbp), %xmm0
	movaps	%xmm0, -5824(%rbp)
	movdqa	-1552(%rbp), %xmm0
	movaps	%xmm0, -5840(%rbp)
.LBB1151:
.LBB1152:
	.loc 2 1090 21
	movdqa	-5824(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-5840(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1152:
.LBE1151:
	.loc 1 2588 4
	movaps	%xmm0, -1712(%rbp)
	movdqa	-1632(%rbp), %xmm0
	movaps	%xmm0, -5792(%rbp)
	movdqa	-1504(%rbp), %xmm0
	movaps	%xmm0, -5808(%rbp)
.LBB1153:
.LBB1154:
	.loc 2 1042 21
	movdqa	-5792(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5808(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1154:
.LBE1153:
	.loc 1 2588 4
	movaps	%xmm0, -1728(%rbp)
	movdqa	-1648(%rbp), %xmm0
	movaps	%xmm0, -5760(%rbp)
	movdqa	-1520(%rbp), %xmm0
	movaps	%xmm0, -5776(%rbp)
.LBB1155:
.LBB1156:
	.loc 2 1042 21
	movdqa	-5760(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5776(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1156:
.LBE1155:
	.loc 1 2588 4
	movaps	%xmm0, -1744(%rbp)
	movdqa	-1632(%rbp), %xmm0
	movaps	%xmm0, -5728(%rbp)
	movdqa	-1504(%rbp), %xmm0
	movaps	%xmm0, -5744(%rbp)
.LBB1157:
.LBB1158:
	.loc 2 1090 21
	movdqa	-5728(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-5744(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1158:
.LBE1157:
	.loc 1 2588 4
	movaps	%xmm0, -1760(%rbp)
	movdqa	-1648(%rbp), %xmm0
	movaps	%xmm0, -5696(%rbp)
	movdqa	-1520(%rbp), %xmm0
	movaps	%xmm0, -5712(%rbp)
.LBB1159:
.LBB1160:
	.loc 2 1090 21
	movdqa	-5696(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-5712(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1160:
.LBE1159:
	.loc 1 2588 4
	movaps	%xmm0, -1776(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -5664(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -5680(%rbp)
.LBB1161:
.LBB1162:
	.loc 2 1012 19
	movdqa	-5680(%rbp), %xmm1
	movdqa	-5664(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1162:
.LBE1161:
	.loc 1 2588 4
	movaps	%xmm0, -1792(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -5632(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -5648(%rbp)
.LBB1163:
.LBB1164:
	.loc 2 988 19
	movdqa	-5648(%rbp), %xmm1
	movdqa	-5632(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1164:
.LBE1163:
	.loc 1 2588 4
	movaps	%xmm0, -1808(%rbp)
	movdqa	-1792(%rbp), %xmm0
	movaps	%xmm0, -5600(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -5616(%rbp)
.LBB1165:
.LBB1166:
	.loc 2 1126 19
	movdqa	-5616(%rbp), %xmm0
	movdqa	-5600(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1166:
.LBE1165:
	.loc 1 2588 4
	movaps	%xmm0, -1824(%rbp)
	movdqa	-1808(%rbp), %xmm0
	movaps	%xmm0, -5568(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -5584(%rbp)
.LBB1167:
.LBB1168:
	.loc 2 1126 19
	movdqa	-5584(%rbp), %xmm0
	movdqa	-5568(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1168:
.LBE1167:
	.loc 1 2588 4
	movaps	%xmm0, -1840(%rbp)
	movdqa	-1792(%rbp), %xmm0
	movaps	%xmm0, -5536(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -5552(%rbp)
.LBB1169:
.LBB1170:
	.loc 2 1126 19
	movdqa	-5552(%rbp), %xmm0
	movdqa	-5536(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1170:
.LBE1169:
	.loc 1 2588 4
	movaps	%xmm0, -1856(%rbp)
	movdqa	-1808(%rbp), %xmm0
	movaps	%xmm0, -5504(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -5520(%rbp)
.LBB1171:
.LBB1172:
	.loc 2 1126 19
	movdqa	-5520(%rbp), %xmm0
	movdqa	-5504(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1172:
.LBE1171:
	.loc 1 2588 4
	movaps	%xmm0, -1872(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -5472(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -5488(%rbp)
.LBB1173:
.LBB1174:
	.loc 2 1012 19
	movdqa	-5488(%rbp), %xmm1
	movdqa	-5472(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1174:
.LBE1173:
	.loc 1 2588 4
	movaps	%xmm0, -1888(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -5440(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -5456(%rbp)
.LBB1175:
.LBB1176:
	.loc 2 988 19
	movdqa	-5456(%rbp), %xmm1
	movdqa	-5440(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1176:
.LBE1175:
	.loc 1 2588 4
	movaps	%xmm0, -1904(%rbp)
	movdqa	-1888(%rbp), %xmm0
	movaps	%xmm0, -5408(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -5424(%rbp)
.LBB1177:
.LBB1178:
	.loc 2 1126 19
	movdqa	-5424(%rbp), %xmm0
	movdqa	-5408(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1178:
.LBE1177:
	.loc 1 2588 4
	movaps	%xmm0, -1920(%rbp)
	movdqa	-1904(%rbp), %xmm0
	movaps	%xmm0, -5376(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -5392(%rbp)
.LBB1179:
.LBB1180:
	.loc 2 1126 19
	movdqa	-5392(%rbp), %xmm0
	movdqa	-5376(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1180:
.LBE1179:
	.loc 1 2588 4
	movaps	%xmm0, -1936(%rbp)
	movdqa	-1888(%rbp), %xmm0
	movaps	%xmm0, -5344(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -5360(%rbp)
.LBB1181:
.LBB1182:
	.loc 2 1126 19
	movdqa	-5360(%rbp), %xmm0
	movdqa	-5344(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1182:
.LBE1181:
	.loc 1 2588 4
	movaps	%xmm0, -1952(%rbp)
	movdqa	-1904(%rbp), %xmm0
	movaps	%xmm0, -5312(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -5328(%rbp)
.LBB1183:
.LBB1184:
	.loc 2 1126 19
	movdqa	-5328(%rbp), %xmm0
	movdqa	-5312(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1184:
.LBE1183:
	.loc 1 2588 4
	movaps	%xmm0, -1968(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -5280(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -5296(%rbp)
.LBB1185:
.LBB1186:
	.loc 2 1036 21
	movdqa	-5280(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-5296(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1186:
.LBE1185:
	.loc 1 2588 4
	movaps	%xmm0, -1984(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -5248(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -5264(%rbp)
.LBB1187:
.LBB1188:
	.loc 2 1036 21
	movdqa	-5248(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-5264(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1188:
.LBE1187:
	.loc 1 2588 4
	movaps	%xmm0, -2000(%rbp)
	movdqa	-1984(%rbp), %xmm0
	movaps	%xmm0, -5216(%rbp)
	movdqa	-2000(%rbp), %xmm0
	movaps	%xmm0, -5232(%rbp)
.LBB1189:
.LBB1190:
	.loc 2 1012 19
	movdqa	-5232(%rbp), %xmm1
	movdqa	-5216(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1190:
.LBE1189:
	.loc 1 2588 4
	movaps	%xmm0, -2016(%rbp)
	movdqa	-1984(%rbp), %xmm0
	movaps	%xmm0, -5184(%rbp)
	movdqa	-2000(%rbp), %xmm0
	movaps	%xmm0, -5200(%rbp)
.LBB1191:
.LBB1192:
	.loc 2 988 19
	movdqa	-5200(%rbp), %xmm1
	movdqa	-5184(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1192:
.LBE1191:
	.loc 1 2588 4
	movaps	%xmm0, -2032(%rbp)
	movdqa	-2016(%rbp), %xmm0
	movaps	%xmm0, -5152(%rbp)
	movdqa	-48(%rbp), %xmm0
	movaps	%xmm0, -5168(%rbp)
.LBB1193:
.LBB1194:
	.loc 2 1126 19
	movdqa	-5168(%rbp), %xmm0
	movdqa	-5152(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1194:
.LBE1193:
	.loc 1 2588 4
	movaps	%xmm0, -2048(%rbp)
	movdqa	-2032(%rbp), %xmm0
	movaps	%xmm0, -5120(%rbp)
	movdqa	-48(%rbp), %xmm0
	movaps	%xmm0, -5136(%rbp)
.LBB1195:
.LBB1196:
	.loc 2 1126 19
	movdqa	-5136(%rbp), %xmm0
	movdqa	-5120(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1196:
.LBE1195:
	.loc 1 2588 4
	movaps	%xmm0, -2064(%rbp)
	movdqa	-2016(%rbp), %xmm0
	movaps	%xmm0, -5088(%rbp)
	movdqa	-64(%rbp), %xmm0
	movaps	%xmm0, -5104(%rbp)
.LBB1197:
.LBB1198:
	.loc 2 1126 19
	movdqa	-5104(%rbp), %xmm0
	movdqa	-5088(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1198:
.LBE1197:
	.loc 1 2588 4
	movaps	%xmm0, -2080(%rbp)
	movdqa	-2032(%rbp), %xmm0
	movaps	%xmm0, -5056(%rbp)
	movdqa	-64(%rbp), %xmm0
	movaps	%xmm0, -5072(%rbp)
.LBB1199:
.LBB1200:
	.loc 2 1126 19
	movdqa	-5072(%rbp), %xmm0
	movdqa	-5056(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
.LBE1200:
.LBE1199:
	.loc 1 2588 4
	movaps	%xmm0, -2096(%rbp)
	movdqa	-1824(%rbp), %xmm0
	movaps	%xmm0, -5024(%rbp)
	movdqa	-2048(%rbp), %xmm0
	movaps	%xmm0, -5040(%rbp)
.LBB1201:
.LBB1202:
	.loc 2 1042 21
	movdqa	-5024(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5040(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1202:
.LBE1201:
	.loc 1 2588 4
	movaps	%xmm0, -2112(%rbp)
	movdqa	-1840(%rbp), %xmm0
	movaps	%xmm0, -4992(%rbp)
	movdqa	-2064(%rbp), %xmm0
	movaps	%xmm0, -5008(%rbp)
.LBB1203:
.LBB1204:
	.loc 2 1042 21
	movdqa	-4992(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-5008(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1204:
.LBE1203:
	.loc 1 2588 4
	movaps	%xmm0, -2128(%rbp)
	movdqa	-1920(%rbp), %xmm0
	movaps	%xmm0, -4960(%rbp)
	movdqa	-2080(%rbp), %xmm0
	movaps	%xmm0, -4976(%rbp)
.LBB1205:
.LBB1206:
	.loc 2 1042 21
	movdqa	-4960(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4976(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1206:
.LBE1205:
	.loc 1 2588 4
	movaps	%xmm0, -2144(%rbp)
	movdqa	-1936(%rbp), %xmm0
	movaps	%xmm0, -4928(%rbp)
	movdqa	-2096(%rbp), %xmm0
	movaps	%xmm0, -4944(%rbp)
.LBB1207:
.LBB1208:
	.loc 2 1042 21
	movdqa	-4928(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4944(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1208:
.LBE1207:
	.loc 1 2588 4
	movaps	%xmm0, -2160(%rbp)
	movdqa	-1856(%rbp), %xmm0
	movaps	%xmm0, -4896(%rbp)
	movdqa	-2080(%rbp), %xmm0
	movaps	%xmm0, -4912(%rbp)
.LBB1209:
.LBB1210:
	.loc 2 1042 21
	movdqa	-4896(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4912(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1210:
.LBE1209:
	.loc 1 2588 4
	movaps	%xmm0, -2176(%rbp)
	movdqa	-1872(%rbp), %xmm0
	movaps	%xmm0, -4864(%rbp)
	movdqa	-2096(%rbp), %xmm0
	movaps	%xmm0, -4880(%rbp)
.LBB1211:
.LBB1212:
	.loc 2 1042 21
	movdqa	-4864(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4880(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1212:
.LBE1211:
	.loc 1 2588 4
	movaps	%xmm0, -2192(%rbp)
	movdqa	-1952(%rbp), %xmm0
	movaps	%xmm0, -4832(%rbp)
	movdqa	-2048(%rbp), %xmm0
	movaps	%xmm0, -4848(%rbp)
.LBB1213:
.LBB1214:
	.loc 2 1042 21
	movdqa	-4832(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4848(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1214:
.LBE1213:
	.loc 1 2588 4
	movaps	%xmm0, -2208(%rbp)
	movdqa	-1968(%rbp), %xmm0
	movaps	%xmm0, -4800(%rbp)
	movdqa	-2064(%rbp), %xmm0
	movaps	%xmm0, -4816(%rbp)
.LBB1215:
.LBB1216:
	.loc 2 1042 21
	movdqa	-4800(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4816(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1216:
.LBE1215:
	.loc 1 2588 4
	movaps	%xmm0, -2224(%rbp)
	movdqa	-1664(%rbp), %xmm0
	movaps	%xmm0, -4768(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -4784(%rbp)
.LBB1217:
.LBB1218:
.LBB1219:
	.loc 2 1042 21
	movdqa	-4768(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4784(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1219:
.LBE1218:
	.loc 1 2588 4
	movaps	%xmm0, -2240(%rbp)
	movdqa	-1680(%rbp), %xmm0
	movaps	%xmm0, -4736(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -4752(%rbp)
.LBB1220:
.LBB1221:
	.loc 2 1042 21
	movdqa	-4736(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4752(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1221:
.LBE1220:
	.loc 1 2588 4
	movaps	%xmm0, -2256(%rbp)
	movdqa	-2240(%rbp), %xmm0
	movaps	%xmm0, -4704(%rbp)
	movdqa	-2208(%rbp), %xmm0
	movaps	%xmm0, -4720(%rbp)
.LBB1222:
.LBB1223:
	.loc 2 1042 21
	movdqa	-4704(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4720(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1223:
.LBE1222:
	.loc 1 2588 4
	movaps	%xmm0, -2272(%rbp)
	movdqa	-2256(%rbp), %xmm0
	movaps	%xmm0, -4672(%rbp)
	movdqa	-2224(%rbp), %xmm0
	movaps	%xmm0, -4688(%rbp)
.LBB1224:
.LBB1225:
	.loc 2 1042 21
	movdqa	-4672(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4688(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1225:
.LBE1224:
	.loc 1 2588 4
	movaps	%xmm0, -2288(%rbp)
	movdqa	-2240(%rbp), %xmm0
	movaps	%xmm0, -4640(%rbp)
	movdqa	-2208(%rbp), %xmm0
	movaps	%xmm0, -4656(%rbp)
.LBB1226:
.LBB1227:
	.loc 2 1090 21
	movdqa	-4640(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-4656(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1227:
.LBE1226:
	.loc 1 2588 4
	movaps	%xmm0, -2304(%rbp)
	movdqa	-2256(%rbp), %xmm0
	movaps	%xmm0, -4608(%rbp)
	movdqa	-2224(%rbp), %xmm0
	movaps	%xmm0, -4624(%rbp)
.LBB1228:
.LBB1229:
	.loc 2 1090 21
	movdqa	-4608(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-4624(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1229:
.LBE1228:
	.loc 1 2588 4
	movaps	%xmm0, -2320(%rbp)
	movdqa	-2288(%rbp), %xmm0
	movaps	%xmm0, -4576(%rbp)
	movl	$17, -4580(%rbp)
.LBB1230:
.LBB1231:
	.loc 2 1180 19
	movdqa	-4576(%rbp), %xmm1
	movd	-4580(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2272(%rbp), %xmm0
	movaps	%xmm0, -4544(%rbp)
	movl	$17, -4548(%rbp)
.LBE1231:
.LBE1230:
.LBB1232:
.LBB1233:
	.loc 2 1180 19
	movdqa	-4544(%rbp), %xmm1
	movd	-4548(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -4512(%rbp)
	movaps	%xmm2, -4528(%rbp)
.LBE1233:
.LBE1232:
.LBB1234:
.LBB1235:
	.loc 2 970 19
	movdqa	-4528(%rbp), %xmm1
	movdqa	-4512(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1235:
.LBE1234:
	.loc 1 2588 4
	movaps	%xmm0, -176(%rbp)
	movdqa	-2320(%rbp), %xmm0
	movaps	%xmm0, -4480(%rbp)
	movl	$17, -4484(%rbp)
.LBB1236:
.LBB1237:
	.loc 2 1180 19
	movdqa	-4480(%rbp), %xmm1
	movd	-4484(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2304(%rbp), %xmm0
	movaps	%xmm0, -4448(%rbp)
	movl	$17, -4452(%rbp)
.LBE1237:
.LBE1236:
.LBB1238:
.LBB1239:
	.loc 2 1180 19
	movdqa	-4448(%rbp), %xmm1
	movd	-4452(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -4416(%rbp)
	movaps	%xmm2, -4432(%rbp)
.LBE1239:
.LBE1238:
.LBB1240:
.LBB1241:
	.loc 2 970 19
	movdqa	-4432(%rbp), %xmm1
	movdqa	-4416(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1241:
.LBE1240:
	.loc 1 2588 4
	movaps	%xmm0, -288(%rbp)
	movdqa	-1728(%rbp), %xmm0
	movaps	%xmm0, -4384(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -4400(%rbp)
.LBE1217:
.LBB1242:
.LBB1243:
.LBB1244:
	.loc 2 1042 21
	movdqa	-4384(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4400(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1244:
.LBE1243:
	.loc 1 2588 4
	movaps	%xmm0, -2336(%rbp)
	movdqa	-1744(%rbp), %xmm0
	movaps	%xmm0, -4352(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -4368(%rbp)
.LBB1245:
.LBB1246:
	.loc 2 1042 21
	movdqa	-4352(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4368(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1246:
.LBE1245:
	.loc 1 2588 4
	movaps	%xmm0, -2352(%rbp)
	movdqa	-2336(%rbp), %xmm0
	movaps	%xmm0, -4320(%rbp)
	movdqa	-2176(%rbp), %xmm0
	movaps	%xmm0, -4336(%rbp)
.LBB1247:
.LBB1248:
	.loc 2 1042 21
	movdqa	-4320(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4336(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1248:
.LBE1247:
	.loc 1 2588 4
	movaps	%xmm0, -2368(%rbp)
	movdqa	-2352(%rbp), %xmm0
	movaps	%xmm0, -4288(%rbp)
	movdqa	-2192(%rbp), %xmm0
	movaps	%xmm0, -4304(%rbp)
.LBB1249:
.LBB1250:
	.loc 2 1042 21
	movdqa	-4288(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4304(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1250:
.LBE1249:
	.loc 1 2588 4
	movaps	%xmm0, -2384(%rbp)
	movdqa	-2336(%rbp), %xmm0
	movaps	%xmm0, -4256(%rbp)
	movdqa	-2176(%rbp), %xmm0
	movaps	%xmm0, -4272(%rbp)
.LBB1251:
.LBB1252:
	.loc 2 1090 21
	movdqa	-4256(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-4272(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1252:
.LBE1251:
	.loc 1 2588 4
	movaps	%xmm0, -2400(%rbp)
	movdqa	-2352(%rbp), %xmm0
	movaps	%xmm0, -4224(%rbp)
	movdqa	-2192(%rbp), %xmm0
	movaps	%xmm0, -4240(%rbp)
.LBB1253:
.LBB1254:
	.loc 2 1090 21
	movdqa	-4224(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-4240(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1254:
.LBE1253:
	.loc 1 2588 4
	movaps	%xmm0, -2416(%rbp)
	movdqa	-2384(%rbp), %xmm0
	movaps	%xmm0, -4192(%rbp)
	movl	$17, -4196(%rbp)
.LBB1255:
.LBB1256:
	.loc 2 1180 19
	movdqa	-4192(%rbp), %xmm1
	movd	-4196(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2368(%rbp), %xmm0
	movaps	%xmm0, -4160(%rbp)
	movl	$17, -4164(%rbp)
.LBE1256:
.LBE1255:
.LBB1257:
.LBB1258:
	.loc 2 1180 19
	movdqa	-4160(%rbp), %xmm1
	movd	-4164(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -4128(%rbp)
	movaps	%xmm2, -4144(%rbp)
.LBE1258:
.LBE1257:
.LBB1259:
.LBB1260:
	.loc 2 970 19
	movdqa	-4144(%rbp), %xmm1
	movdqa	-4128(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1260:
.LBE1259:
	.loc 1 2588 4
	movaps	%xmm0, -192(%rbp)
	movdqa	-2416(%rbp), %xmm0
	movaps	%xmm0, -4096(%rbp)
	movl	$17, -4100(%rbp)
.LBB1261:
.LBB1262:
	.loc 2 1180 19
	movdqa	-4096(%rbp), %xmm1
	movd	-4100(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2400(%rbp), %xmm0
	movaps	%xmm0, -4064(%rbp)
	movl	$17, -4068(%rbp)
.LBE1262:
.LBE1261:
.LBB1263:
.LBB1264:
	.loc 2 1180 19
	movdqa	-4064(%rbp), %xmm1
	movd	-4068(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -4032(%rbp)
	movaps	%xmm2, -4048(%rbp)
.LBE1264:
.LBE1263:
.LBB1265:
.LBB1266:
	.loc 2 970 19
	movdqa	-4048(%rbp), %xmm1
	movdqa	-4032(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1266:
.LBE1265:
	.loc 1 2588 4
	movaps	%xmm0, -272(%rbp)
	movdqa	-1760(%rbp), %xmm0
	movaps	%xmm0, -4000(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -4016(%rbp)
.LBE1242:
.LBB1267:
.LBB1268:
.LBB1269:
	.loc 2 1042 21
	movdqa	-4000(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-4016(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1269:
.LBE1268:
	.loc 1 2588 4
	movaps	%xmm0, -2432(%rbp)
	movdqa	-1776(%rbp), %xmm0
	movaps	%xmm0, -3968(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -3984(%rbp)
.LBB1270:
.LBB1271:
	.loc 2 1042 21
	movdqa	-3968(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3984(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1271:
.LBE1270:
	.loc 1 2588 4
	movaps	%xmm0, -2448(%rbp)
	movdqa	-2432(%rbp), %xmm0
	movaps	%xmm0, -3936(%rbp)
	movdqa	-2144(%rbp), %xmm0
	movaps	%xmm0, -3952(%rbp)
.LBB1272:
.LBB1273:
	.loc 2 1042 21
	movdqa	-3936(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3952(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1273:
.LBE1272:
	.loc 1 2588 4
	movaps	%xmm0, -2464(%rbp)
	movdqa	-2448(%rbp), %xmm0
	movaps	%xmm0, -3904(%rbp)
	movdqa	-2160(%rbp), %xmm0
	movaps	%xmm0, -3920(%rbp)
.LBB1274:
.LBB1275:
	.loc 2 1042 21
	movdqa	-3904(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3920(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1275:
.LBE1274:
	.loc 1 2588 4
	movaps	%xmm0, -2480(%rbp)
	movdqa	-2432(%rbp), %xmm0
	movaps	%xmm0, -3872(%rbp)
	movdqa	-2144(%rbp), %xmm0
	movaps	%xmm0, -3888(%rbp)
.LBB1276:
.LBB1277:
	.loc 2 1090 21
	movdqa	-3872(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-3888(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1277:
.LBE1276:
	.loc 1 2588 4
	movaps	%xmm0, -2496(%rbp)
	movdqa	-2448(%rbp), %xmm0
	movaps	%xmm0, -3840(%rbp)
	movdqa	-2160(%rbp), %xmm0
	movaps	%xmm0, -3856(%rbp)
.LBB1278:
.LBB1279:
	.loc 2 1090 21
	movdqa	-3840(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-3856(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1279:
.LBE1278:
	.loc 1 2588 4
	movaps	%xmm0, -2512(%rbp)
	movdqa	-2480(%rbp), %xmm0
	movaps	%xmm0, -3808(%rbp)
	movl	$17, -3812(%rbp)
.LBB1280:
.LBB1281:
	.loc 2 1180 19
	movdqa	-3808(%rbp), %xmm1
	movd	-3812(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2464(%rbp), %xmm0
	movaps	%xmm0, -3776(%rbp)
	movl	$17, -3780(%rbp)
.LBE1281:
.LBE1280:
.LBB1282:
.LBB1283:
	.loc 2 1180 19
	movdqa	-3776(%rbp), %xmm1
	movd	-3780(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -3744(%rbp)
	movaps	%xmm2, -3760(%rbp)
.LBE1283:
.LBE1282:
.LBB1284:
.LBB1285:
	.loc 2 970 19
	movdqa	-3760(%rbp), %xmm1
	movdqa	-3744(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1285:
.LBE1284:
	.loc 1 2588 4
	movaps	%xmm0, -208(%rbp)
	movdqa	-2512(%rbp), %xmm0
	movaps	%xmm0, -3712(%rbp)
	movl	$17, -3716(%rbp)
.LBB1286:
.LBB1287:
	.loc 2 1180 19
	movdqa	-3712(%rbp), %xmm1
	movd	-3716(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2496(%rbp), %xmm0
	movaps	%xmm0, -3680(%rbp)
	movl	$17, -3684(%rbp)
.LBE1287:
.LBE1286:
.LBB1288:
.LBB1289:
	.loc 2 1180 19
	movdqa	-3680(%rbp), %xmm1
	movd	-3684(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -3648(%rbp)
	movaps	%xmm2, -3664(%rbp)
.LBE1289:
.LBE1288:
.LBB1290:
.LBB1291:
	.loc 2 970 19
	movdqa	-3664(%rbp), %xmm1
	movdqa	-3648(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1291:
.LBE1290:
	.loc 1 2588 4
	movaps	%xmm0, -256(%rbp)
	movdqa	-1696(%rbp), %xmm0
	movaps	%xmm0, -3616(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -3632(%rbp)
.LBE1267:
.LBB1292:
.LBB1293:
.LBB1294:
	.loc 2 1042 21
	movdqa	-3616(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3632(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1294:
.LBE1293:
	.loc 1 2588 4
	movaps	%xmm0, -2528(%rbp)
	movdqa	-1712(%rbp), %xmm0
	movaps	%xmm0, -3584(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -3600(%rbp)
.LBB1295:
.LBB1296:
	.loc 2 1042 21
	movdqa	-3584(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3600(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1296:
.LBE1295:
	.loc 1 2588 4
	movaps	%xmm0, -2544(%rbp)
	movdqa	-2528(%rbp), %xmm0
	movaps	%xmm0, -3552(%rbp)
	movdqa	-2112(%rbp), %xmm0
	movaps	%xmm0, -3568(%rbp)
.LBB1297:
.LBB1298:
	.loc 2 1042 21
	movdqa	-3552(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3568(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1298:
.LBE1297:
	.loc 1 2588 4
	movaps	%xmm0, -2560(%rbp)
	movdqa	-2544(%rbp), %xmm0
	movaps	%xmm0, -3520(%rbp)
	movdqa	-2128(%rbp), %xmm0
	movaps	%xmm0, -3536(%rbp)
.LBB1299:
.LBB1300:
	.loc 2 1042 21
	movdqa	-3520(%rbp), %xmm1
	.loc 2 1042 35
	movdqa	-3536(%rbp), %xmm0
	.loc 2 1042 33
	paddd	%xmm1, %xmm0
.LBE1300:
.LBE1299:
	.loc 1 2588 4
	movaps	%xmm0, -2576(%rbp)
	movdqa	-2528(%rbp), %xmm0
	movaps	%xmm0, -3488(%rbp)
	movdqa	-2112(%rbp), %xmm0
	movaps	%xmm0, -3504(%rbp)
.LBB1301:
.LBB1302:
	.loc 2 1090 21
	movdqa	-3488(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-3504(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1302:
.LBE1301:
	.loc 1 2588 4
	movaps	%xmm0, -2592(%rbp)
	movdqa	-2544(%rbp), %xmm0
	movaps	%xmm0, -3456(%rbp)
	movdqa	-2128(%rbp), %xmm0
	movaps	%xmm0, -3472(%rbp)
.LBB1303:
.LBB1304:
	.loc 2 1090 21
	movdqa	-3456(%rbp), %xmm0
	.loc 2 1090 35
	movdqa	-3472(%rbp), %xmm1
	.loc 2 1090 33
	psubd	%xmm1, %xmm0
.LBE1304:
.LBE1303:
	.loc 1 2588 4
	movaps	%xmm0, -2608(%rbp)
	movdqa	-2576(%rbp), %xmm0
	movaps	%xmm0, -3424(%rbp)
	movl	$17, -3428(%rbp)
.LBB1305:
.LBB1306:
	.loc 2 1180 19
	movdqa	-3424(%rbp), %xmm1
	movd	-3428(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2560(%rbp), %xmm0
	movaps	%xmm0, -3392(%rbp)
	movl	$17, -3396(%rbp)
.LBE1306:
.LBE1305:
.LBB1307:
.LBB1308:
	.loc 2 1180 19
	movdqa	-3392(%rbp), %xmm1
	movd	-3396(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -3360(%rbp)
	movaps	%xmm2, -3376(%rbp)
.LBE1308:
.LBE1307:
.LBB1309:
.LBB1310:
	.loc 2 970 19
	movdqa	-3376(%rbp), %xmm1
	movdqa	-3360(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1310:
.LBE1309:
	.loc 1 2588 4
	movaps	%xmm0, -224(%rbp)
	movdqa	-2608(%rbp), %xmm0
	movaps	%xmm0, -3328(%rbp)
	movl	$17, -3332(%rbp)
.LBB1311:
.LBB1312:
	.loc 2 1180 19
	movdqa	-3328(%rbp), %xmm1
	movd	-3332(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm2
	movdqa	-2592(%rbp), %xmm0
	movaps	%xmm0, -3296(%rbp)
	movl	$17, -3300(%rbp)
.LBE1312:
.LBE1311:
.LBB1313:
.LBB1314:
	.loc 2 1180 19
	movdqa	-3296(%rbp), %xmm1
	movd	-3300(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	.loc 2 1180 10
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -3264(%rbp)
	movaps	%xmm2, -3280(%rbp)
.LBE1314:
.LBE1313:
.LBB1315:
.LBB1316:
	.loc 2 970 19
	movdqa	-3280(%rbp), %xmm1
	movdqa	-3264(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
.LBE1316:
.LBE1315:
	.loc 1 2588 4
	movaps	%xmm0, -240(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -3232(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -3248(%rbp)
.LBE1292:
.LBE1104:
.LBB1317:
.LBB1318:
.LBB1319:
	.loc 2 976 19
	movdqa	-3248(%rbp), %xmm1
	movdqa	-3232(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1319:
.LBE1318:
	.loc 1 2592 20
	movaps	%xmm0, -2624(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -3200(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -3216(%rbp)
.LBB1320:
.LBB1321:
	.loc 2 976 19
	movdqa	-3216(%rbp), %xmm1
	movdqa	-3200(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1321:
.LBE1320:
	.loc 1 2593 20
	movaps	%xmm0, -2640(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -3168(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -3184(%rbp)
.LBB1322:
.LBB1323:
	.loc 2 976 19
	movdqa	-3184(%rbp), %xmm1
	movdqa	-3168(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1323:
.LBE1322:
	.loc 1 2594 20
	movaps	%xmm0, -2656(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -3136(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -3152(%rbp)
.LBB1324:
.LBB1325:
	.loc 2 976 19
	movdqa	-3152(%rbp), %xmm1
	movdqa	-3136(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1325:
.LBE1324:
	.loc 1 2595 20
	movaps	%xmm0, -2672(%rbp)
	.loc 1 2598 7
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -3104(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -3120(%rbp)
.LBB1326:
.LBB1327:
	.loc 2 1006 19
	movdqa	-3120(%rbp), %xmm1
	movdqa	-3104(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1327:
.LBE1326:
	.loc 1 2598 7
	movaps	%xmm0, -2624(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -3072(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -3088(%rbp)
.LBB1328:
.LBB1329:
	.loc 2 982 19
	movdqa	-3088(%rbp), %xmm1
	movdqa	-3072(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1329:
.LBE1328:
	.loc 1 2598 7
	movaps	%xmm0, -2656(%rbp)
	.loc 1 2599 7
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -3040(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -3056(%rbp)
.LBB1330:
.LBB1331:
	.loc 2 1006 19
	movdqa	-3056(%rbp), %xmm1
	movdqa	-3040(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1331:
.LBE1330:
	.loc 1 2599 7
	movaps	%xmm0, -2640(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -3008(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -3024(%rbp)
.LBB1332:
.LBB1333:
	.loc 2 982 19
	movdqa	-3024(%rbp), %xmm1
	movdqa	-3008(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1333:
.LBE1332:
	.loc 1 2599 7
	movaps	%xmm0, -2672(%rbp)
	.loc 1 2602 7
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -2976(%rbp)
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -2992(%rbp)
.LBB1334:
.LBB1335:
	.loc 2 1006 19
	movdqa	-2992(%rbp), %xmm1
	movdqa	-2976(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1335:
.LBE1334:
	.loc 1 2602 7
	movaps	%xmm0, -2624(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -2944(%rbp)
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -2960(%rbp)
.LBB1336:
.LBB1337:
	.loc 2 982 19
	movdqa	-2960(%rbp), %xmm1
	movdqa	-2944(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1337:
.LBE1336:
	.loc 1 2602 7
	movaps	%xmm0, -2640(%rbp)
	.loc 1 2603 7
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -2912(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -2928(%rbp)
.LBB1338:
.LBB1339:
	.loc 2 1006 19
	movdqa	-2928(%rbp), %xmm1
	movdqa	-2912(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1339:
.LBE1338:
	.loc 1 2603 7
	movaps	%xmm0, -2656(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -2880(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -2896(%rbp)
.LBB1340:
.LBB1341:
	.loc 2 982 19
	movdqa	-2896(%rbp), %xmm1
	movdqa	-2880(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1341:
.LBE1340:
	.loc 1 2603 7
	movaps	%xmm0, -2672(%rbp)
	.loc 1 2606 7
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -2848(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -2864(%rbp)
.LBB1342:
.LBB1343:
	.loc 2 1006 19
	movdqa	-2864(%rbp), %xmm1
	movdqa	-2848(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1343:
.LBE1342:
	.loc 1 2606 7
	movaps	%xmm0, -2624(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -2816(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -2832(%rbp)
.LBB1344:
.LBB1345:
	.loc 2 982 19
	movdqa	-2832(%rbp), %xmm1
	movdqa	-2816(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1345:
.LBE1344:
	.loc 1 2606 7
	movaps	%xmm0, -2656(%rbp)
	.loc 1 2607 7
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -2784(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -2800(%rbp)
.LBB1346:
.LBB1347:
	.loc 2 1006 19
	movdqa	-2800(%rbp), %xmm1
	movdqa	-2784(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1347:
.LBE1346:
	.loc 1 2607 7
	movaps	%xmm0, -2640(%rbp)
	movdqa	-1456(%rbp), %xmm0
	movaps	%xmm0, -2752(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -2768(%rbp)
.LBB1348:
.LBB1349:
	.loc 2 982 19
	movdqa	-2768(%rbp), %xmm1
	movdqa	-2752(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1349:
.LBE1348:
	.loc 1 2607 7
	movaps	%xmm0, -2672(%rbp)
	movq	-10920(%rbp), %rax
	movq	%rax, -2736(%rbp)
	movdqa	-2624(%rbp), %xmm0
	movaps	%xmm0, -10800(%rbp)
.LBB1350:
.LBB1351:
	.loc 2 733 42
	movq	-10800(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2736(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1351:
.LBE1350:
	.loc 1 2610 50
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	.loc 1 2611 41
	movdqa	-2624(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10920(%rbp), %rax
	movq	%rax, -2728(%rbp)
	movaps	%xmm0, -10816(%rbp)
.LBB1352:
.LBB1353:
	.loc 2 733 42
	movq	-10816(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2728(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1353:
.LBE1352:
	.loc 1 2611 75
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	movq	-10920(%rbp), %rax
	movq	%rax, -2720(%rbp)
	movdqa	-2656(%rbp), %xmm0
	movaps	%xmm0, -10832(%rbp)
.LBB1354:
.LBB1355:
	.loc 2 733 42
	movq	-10832(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2720(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1355:
.LBE1354:
	.loc 1 2612 50
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	.loc 1 2613 41
	movdqa	-2656(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10920(%rbp), %rax
	movq	%rax, -2712(%rbp)
	movaps	%xmm0, -10848(%rbp)
.LBB1356:
.LBB1357:
	.loc 2 733 42
	movq	-10848(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2712(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1357:
.LBE1356:
	.loc 1 2613 75
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	movq	-10920(%rbp), %rax
	movq	%rax, -2704(%rbp)
	movdqa	-2640(%rbp), %xmm0
	movaps	%xmm0, -10864(%rbp)
.LBB1358:
.LBB1359:
	.loc 2 733 42
	movq	-10864(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2704(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1359:
.LBE1358:
	.loc 1 2614 50
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	.loc 1 2615 41
	movdqa	-2640(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10920(%rbp), %rax
	movq	%rax, -2696(%rbp)
	movaps	%xmm0, -10880(%rbp)
.LBB1360:
.LBB1361:
	.loc 2 733 42
	movq	-10880(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2696(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1361:
.LBE1360:
	.loc 1 2615 75
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	movq	-10920(%rbp), %rax
	movq	%rax, -2688(%rbp)
	movdqa	-2672(%rbp), %xmm0
	movaps	%xmm0, -10896(%rbp)
.LBB1362:
.LBB1363:
	.loc 2 733 42
	movq	-10896(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2688(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1363:
.LBE1362:
	.loc 1 2616 50
	movl	-10924(%rbp), %eax
	cltq
	addq	%rax, -10920(%rbp)
	.loc 1 2617 41
	movdqa	-2672(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10920(%rbp), %rax
	movq	%rax, -2680(%rbp)
	movaps	%xmm0, -10912(%rbp)
.LBB1364:
.LBB1365:
	.loc 2 733 42
	movq	-10912(%rbp), %rax
	.loc 2 733 21
	movq	%rax, %rdx
	.loc 2 733 19
	movq	-2680(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 734 1
	nop
.LBE1365:
.LBE1364:
.LBE1317:
	.loc 1 2629 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	stbi__idct_simd, .-stbi__idct_simd
	.type	stbi__get_marker, @function
stbi__get_marker:
.LFB586:
	.loc 1 2846 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 2848 9
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2848 7
	cmpb	$-1, %al
	je	.L742
	.loc 1 2848 44 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 2848 67 discriminator 1
	movq	-24(%rbp), %rax
	movb	$-1, 18472(%rax)
	.loc 1 2848 95 discriminator 1
	movzbl	-1(%rbp), %eax
	jmp	.L743
.L742:
	.loc 1 2849 8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
	.loc 1 2850 7
	cmpb	$-1, -1(%rbp)
	je	.L745
	.loc 1 2850 26 discriminator 1
	movl	$-1, %eax
	jmp	.L743
.L746:
	.loc 1 2852 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
.L745:
	.loc 1 2851 10
	cmpb	$-1, -1(%rbp)
	je	.L746
	.loc 1 2853 11
	movzbl	-1(%rbp), %eax
.L743:
	.loc 1 2854 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	stbi__get_marker, .-stbi__get_marker
	.type	stbi__jpeg_reset, @function
stbi__jpeg_reset:
.LFB587:
	.loc 1 2863 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 2864 17
	movq	-8(%rbp), %rax
	movl	$0, 18468(%rax)
	.loc 1 2865 19
	movq	-8(%rbp), %rax
	movl	$0, 18464(%rax)
	.loc 1 2866 14
	movq	-8(%rbp), %rax
	movl	$0, 18476(%rax)
	.loc 1 2867 102
	movq	-8(%rbp), %rax
	movl	$0, 18392(%rax)
	.loc 1 2867 93
	movq	-8(%rbp), %rax
	movl	18392(%rax), %edx
	.loc 1 2867 77
	movq	-8(%rbp), %rax
	movl	%edx, 18296(%rax)
	.loc 1 2867 68
	movq	-8(%rbp), %rax
	movl	18296(%rax), %edx
	.loc 1 2867 52
	movq	-8(%rbp), %rax
	movl	%edx, 18200(%rax)
	.loc 1 2867 43
	movq	-8(%rbp), %rax
	movl	18200(%rax), %edx
	.loc 1 2867 27
	movq	-8(%rbp), %rax
	movl	%edx, 18104(%rax)
	.loc 1 2868 14
	movq	-8(%rbp), %rax
	movb	$-1, 18472(%rax)
	.loc 1 2869 15
	movq	-8(%rbp), %rax
	movl	18536(%rax), %eax
	.loc 1 2869 56
	testl	%eax, %eax
	je	.L748
	.loc 1 2869 56 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	18536(%rax), %eax
	jmp	.L749
.L748:
	.loc 1 2869 56 discriminator 2
	movl	$2147483647, %eax
.L749:
	.loc 1 2869 12 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rdx
	movl	%eax, 18540(%rdx)
	.loc 1 2870 15 discriminator 4
	movq	-8(%rbp), %rax
	movl	$0, 18500(%rax)
	.loc 1 2873 1 discriminator 4
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	stbi__jpeg_reset, .-stbi__jpeg_reset
	.type	stbi__parse_entropy_coded_data, @function
stbi__parse_entropy_coded_data:
.LFB588:
	.loc 1 2876 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	.loc 1 2877 4
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
	.loc 1 2878 10
	movq	-280(%rbp), %rax
	movl	18480(%rax), %eax
	.loc 1 2878 7
	testl	%eax, %eax
	jne	.L751
	.loc 1 2879 12
	movq	-280(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 2879 10
	cmpl	$1, %eax
	jne	.L752
.LBB1366:
	.loc 1 2882 14
	movq	-280(%rbp), %rax
	movl	18520(%rax), %eax
	movl	%eax, -128(%rbp)
	.loc 1 2887 33
	movq	-280(%rbp), %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	.loc 1 2887 35
	addl	$7, %eax
	.loc 1 2887 14
	sarl	$3, %eax
	movl	%eax, -132(%rbp)
	.loc 1 2888 33
	movq	-280(%rbp), %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	.loc 1 2888 35
	addl	$7, %eax
	.loc 1 2888 14
	sarl	$3, %eax
	movl	%eax, -136(%rbp)
	.loc 1 2889 16
	movl	$0, -8(%rbp)
	.loc 1 2889 10
	jmp	.L753
.L762:
	.loc 1 2890 19
	movl	$0, -4(%rbp)
	.loc 1 2890 13
	jmp	.L754
.L761:
.LBB1367:
	.loc 1 2891 20
	movq	-280(%rbp), %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
	.loc 1 2892 143
	movq	-280(%rbp), %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	.loc 1 2892 128
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	.loc 1 2892 109
	movl	-140(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r10
	.loc 1 2892 84
	movq	-280(%rbp), %rax
	leaq	6728(%rax), %rdx
	.loc 1 2892 94
	movl	-140(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	.loc 1 2892 21
	leaq	(%rdx,%rax), %rcx
	.loc 1 2892 54
	movq	-280(%rbp), %rax
	leaq	8(%rax), %r8
	.loc 1 2892 79
	movq	-280(%rbp), %rsi
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 2892 64
	imulq	$1680, %rax, %rax
	.loc 1 2892 21
	leaq	(%r8,%rax), %rdx
	movl	-128(%rbp), %r8d
	leaq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block
	addq	$16, %rsp
	.loc 1 2892 19
	testl	%eax, %eax
	jne	.L755
	.loc 1 2892 157 discriminator 1
	movl	$0, %eax
	jmp	.L763
.L755:
	.loc 1 2893 17
	movq	-280(%rbp), %rax
	movq	18544(%rax), %r8
	.loc 1 2893 16
	movq	-280(%rbp), %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	.loc 1 2893 51
	movq	-280(%rbp), %rsi
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	.loc 1 2893 71
	movq	-280(%rbp), %rdi
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	.loc 1 2893 74
	imull	-8(%rbp), %eax
	.loc 1 2893 76
	sall	$3, %eax
	movslq	%eax, %rdx
	.loc 1 2893 80
	movl	-4(%rbp), %eax
	sall	$3, %eax
	cltq
	.loc 1 2893 78
	addq	%rdx, %rax
	.loc 1 2893 16
	leaq	(%rsi,%rax), %rdi
	leaq	-272(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
.LVL4:
	.loc 1 2895 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2895 20
	leal	-1(%rax), %edx
	.loc 1 2895 19
	movq	-280(%rbp), %rax
	movl	%edx, 18540(%rax)
	.loc 1 2895 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2895 19
	testl	%eax, %eax
	jg	.L757
	.loc 1 2896 24
	movq	-280(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2896 22
	cmpl	$23, %eax
	jg	.L758
	.loc 1 2896 42 discriminator 1
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L758:
	.loc 1 2899 24
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2899 22
	cmpb	$-49, %al
	jbe	.L759
	.loc 1 2899 24 discriminator 2
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2899 23 discriminator 2
	cmpb	$-41, %al
	jbe	.L760
.L759:
	.loc 1 2899 57 discriminator 3
	movl	$1, %eax
	jmp	.L763
.L760:
	.loc 1 2900 19
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L757:
.LBE1367:
	.loc 1 2890 30 discriminator 2
	addl	$1, -4(%rbp)
.L754:
	.loc 1 2890 13 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L761
	.loc 1 2889 27 discriminator 2
	addl	$1, -8(%rbp)
.L753:
	.loc 1 2889 10 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jl	.L762
	.loc 1 2904 17
	movl	$1, %eax
	jmp	.L763
.L752:
.LBE1366:
.LBB1368:
	.loc 1 2908 16
	movl	$0, -16(%rbp)
	.loc 1 2908 10
	jmp	.L764
.L779:
	.loc 1 2909 19
	movl	$0, -12(%rbp)
	.loc 1 2909 13
	jmp	.L765
.L778:
	.loc 1 2911 22
	movl	$0, -20(%rbp)
	.loc 1 2911 16
	jmp	.L766
.L773:
.LBB1369:
	.loc 1 2912 23
	movq	-280(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4628, %rdx
	movl	8(%rax,%rdx,4), %eax
	movl	%eax, -112(%rbp)
	.loc 1 2915 25
	movl	$0, -28(%rbp)
	.loc 1 2915 19
	jmp	.L767
.L772:
	.loc 1 2916 28
	movl	$0, -24(%rbp)
	.loc 1 2916 22
	jmp	.L768
.L771:
.LBB1370:
	.loc 1 2917 51
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 2917 36
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2917 54
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2917 29
	sall	$3, %eax
	movl	%eax, -116(%rbp)
	.loc 1 2918 51
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 2918 36
	imull	-16(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2918 54
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2918 29
	sall	$3, %eax
	movl	%eax, -120(%rbp)
	.loc 1 2919 29
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -124(%rbp)
	.loc 1 2920 152
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	.loc 1 2920 137
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	.loc 1 2920 118
	movl	-124(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r10
	.loc 1 2920 93
	movq	-280(%rbp), %rax
	leaq	6728(%rax), %rdx
	.loc 1 2920 103
	movl	-124(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	.loc 1 2920 30
	leaq	(%rdx,%rax), %rcx
	.loc 1 2920 63
	movq	-280(%rbp), %rax
	leaq	8(%rax), %r8
	.loc 1 2920 88
	movq	-280(%rbp), %rsi
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 2920 73
	imulq	$1680, %rax, %rax
	.loc 1 2920 30
	leaq	(%r8,%rax), %rdx
	movl	-112(%rbp), %r8d
	leaq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block
	addq	$16, %rsp
	.loc 1 2920 28
	testl	%eax, %eax
	jne	.L769
	.loc 1 2920 166 discriminator 1
	movl	$0, %eax
	jmp	.L763
.L769:
	.loc 1 2921 26 discriminator 2
	movq	-280(%rbp), %rax
	movq	18544(%rax), %r8
	.loc 1 2921 25 discriminator 2
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	.loc 1 2921 60 discriminator 2
	movq	-280(%rbp), %rsi
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	.loc 1 2921 80 discriminator 2
	movq	-280(%rbp), %rdi
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	.loc 1 2921 83 discriminator 2
	imull	-120(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 2921 86 discriminator 2
	movl	-116(%rbp), %eax
	cltq
	addq	%rdx, %rax
	.loc 1 2921 25 discriminator 2
	leaq	(%rsi,%rax), %rdi
	leaq	-272(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
.LVL5:
.LBE1370:
	.loc 1 2916 54 discriminator 2
	addl	$1, -24(%rbp)
.L768:
	.loc 1 2916 50 discriminator 1
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 2916 22 discriminator 1
	cmpl	%eax, -24(%rbp)
	jl	.L771
	.loc 1 2915 51 discriminator 2
	addl	$1, -28(%rbp)
.L767:
	.loc 1 2915 47 discriminator 1
	movq	-280(%rbp), %rcx
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 2915 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jl	.L772
.LBE1369:
	.loc 1 2911 41 discriminator 2
	addl	$1, -20(%rbp)
.L766:
	.loc 1 2911 31 discriminator 1
	movq	-280(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 2911 16 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L773
	.loc 1 2927 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2927 20
	leal	-1(%rax), %edx
	.loc 1 2927 19
	movq	-280(%rbp), %rax
	movl	%edx, 18540(%rax)
	.loc 1 2927 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2927 19
	testl	%eax, %eax
	jg	.L774
	.loc 1 2928 24
	movq	-280(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2928 22
	cmpl	$23, %eax
	jg	.L775
	.loc 1 2928 42 discriminator 1
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L775:
	.loc 1 2929 24
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2929 22
	cmpb	$-49, %al
	jbe	.L776
	.loc 1 2929 24 discriminator 2
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2929 23 discriminator 2
	cmpb	$-41, %al
	jbe	.L777
.L776:
	.loc 1 2929 57 discriminator 3
	movl	$1, %eax
	jmp	.L763
.L777:
	.loc 1 2930 19
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L774:
	.loc 1 2909 41 discriminator 2
	addl	$1, -12(%rbp)
.L765:
	.loc 1 2909 28 discriminator 1
	movq	-280(%rbp), %rax
	movl	18064(%rax), %eax
	.loc 1 2909 13 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L778
	.loc 1 2908 38 discriminator 2
	addl	$1, -16(%rbp)
.L764:
	.loc 1 2908 25 discriminator 1
	movq	-280(%rbp), %rax
	movl	18068(%rax), %eax
	.loc 1 2908 10 discriminator 1
	cmpl	%eax, -16(%rbp)
	jl	.L779
	.loc 1 2934 17
	movl	$1, %eax
	jmp	.L763
.L751:
.LBE1368:
	.loc 1 2937 12
	movq	-280(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 2937 10
	cmpl	$1, %eax
	jne	.L780
.LBB1371:
	.loc 1 2939 14
	movq	-280(%rbp), %rax
	movl	18520(%rax), %eax
	movl	%eax, -84(%rbp)
	.loc 1 2944 33
	movq	-280(%rbp), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	.loc 1 2944 35
	addl	$7, %eax
	.loc 1 2944 14
	sarl	$3, %eax
	movl	%eax, -88(%rbp)
	.loc 1 2945 33
	movq	-280(%rbp), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	.loc 1 2945 35
	addl	$7, %eax
	.loc 1 2945 14
	sarl	$3, %eax
	movl	%eax, -92(%rbp)
	.loc 1 2946 16
	movl	$0, -36(%rbp)
	.loc 1 2946 10
	jmp	.L781
.L790:
	.loc 1 2947 19
	movl	$0, -32(%rbp)
	.loc 1 2947 13
	jmp	.L782
.L789:
.LBB1372:
	.loc 1 2948 44
	movq	-280(%rbp), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	.loc 1 2948 81
	movq	-280(%rbp), %rsi
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	.loc 1 2948 65
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2948 61
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2948 56
	sall	$6, %eax
	cltq
	.loc 1 2948 51
	addq	%rax, %rax
	.loc 1 2948 23
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	.loc 1 2949 21
	movq	-280(%rbp), %rax
	movl	18484(%rax), %eax
	.loc 1 2949 19
	testl	%eax, %eax
	jne	.L783
	.loc 1 2950 91
	movq	-280(%rbp), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	.loc 1 2950 24
	cltq
	imulq	$1680, %rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-104(%rbp), %rsi
	movq	-280(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_dc
	.loc 1 2950 22
	testl	%eax, %eax
	jne	.L784
	.loc 1 2951 29
	movl	$0, %eax
	jmp	.L763
.L783:
.LBB1373:
	.loc 1 2953 23
	movq	-280(%rbp), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)
	.loc 1 2954 92
	movl	-108(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	.loc 1 2954 24
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	6720(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_ac
	.loc 1 2954 22
	testl	%eax, %eax
	jne	.L784
	.loc 1 2955 29
	movl	$0, %eax
	jmp	.L763
.L784:
.LBE1373:
	.loc 1 2958 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2958 20
	leal	-1(%rax), %edx
	.loc 1 2958 19
	movq	-280(%rbp), %rax
	movl	%edx, 18540(%rax)
	.loc 1 2958 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2958 19
	testl	%eax, %eax
	jg	.L785
	.loc 1 2959 24
	movq	-280(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2959 22
	cmpl	$23, %eax
	jg	.L786
	.loc 1 2959 42 discriminator 1
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L786:
	.loc 1 2960 24
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2960 22
	cmpb	$-49, %al
	jbe	.L787
	.loc 1 2960 24 discriminator 2
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2960 23 discriminator 2
	cmpb	$-41, %al
	jbe	.L788
.L787:
	.loc 1 2960 57 discriminator 3
	movl	$1, %eax
	jmp	.L763
.L788:
	.loc 1 2961 19
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L785:
.LBE1372:
	.loc 1 2947 30 discriminator 2
	addl	$1, -32(%rbp)
.L782:
	.loc 1 2947 13 discriminator 1
	movl	-32(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.L789
	.loc 1 2946 27 discriminator 2
	addl	$1, -36(%rbp)
.L781:
	.loc 1 2946 10 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L790
	.loc 1 2965 17
	movl	$1, %eax
	jmp	.L763
.L780:
.LBE1371:
.LBB1374:
	.loc 1 2968 16
	movl	$0, -44(%rbp)
	.loc 1 2968 10
	jmp	.L791
.L805:
	.loc 1 2969 19
	movl	$0, -40(%rbp)
	.loc 1 2969 13
	jmp	.L792
.L804:
	.loc 1 2971 22
	movl	$0, -48(%rbp)
	.loc 1 2971 16
	jmp	.L793
.L799:
.LBB1375:
	.loc 1 2972 23
	movq	-280(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4628, %rdx
	movl	8(%rax,%rdx,4), %eax
	movl	%eax, -60(%rbp)
	.loc 1 2975 25
	movl	$0, -56(%rbp)
	.loc 1 2975 19
	jmp	.L794
.L798:
	.loc 1 2976 28
	movl	$0, -52(%rbp)
	.loc 1 2976 22
	jmp	.L795
.L797:
.LBB1376:
	.loc 1 2977 51
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 2977 36
	imull	-40(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2977 29
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	.loc 1 2978 51
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 2978 36
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2978 29
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	.loc 1 2979 53
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	.loc 1 2979 92
	movq	-280(%rbp), %rsi
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	.loc 1 2979 76
	imull	-68(%rbp), %eax
	movl	%eax, %edx
	.loc 1 2979 71
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	.loc 1 2979 65
	sall	$6, %eax
	cltq
	.loc 1 2979 60
	addq	%rax, %rax
	.loc 1 2979 32
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	.loc 1 2980 97
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	.loc 1 2980 30
	cltq
	imulq	$1680, %rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-60(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-280(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_dc
	.loc 1 2980 28
	testl	%eax, %eax
	jne	.L796
	.loc 1 2981 35
	movl	$0, %eax
	jmp	.L763
.L796:
.LBE1376:
	.loc 1 2976 54 discriminator 2
	addl	$1, -52(%rbp)
.L795:
	.loc 1 2976 50 discriminator 1
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 2976 22 discriminator 1
	cmpl	%eax, -52(%rbp)
	jl	.L797
	.loc 1 2975 51 discriminator 2
	addl	$1, -56(%rbp)
.L794:
	.loc 1 2975 47 discriminator 1
	movq	-280(%rbp), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 2975 19 discriminator 1
	cmpl	%eax, -56(%rbp)
	jl	.L798
.LBE1375:
	.loc 1 2971 41 discriminator 2
	addl	$1, -48(%rbp)
.L793:
	.loc 1 2971 31 discriminator 1
	movq	-280(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 2971 16 discriminator 1
	cmpl	%eax, -48(%rbp)
	jl	.L799
	.loc 1 2987 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2987 20
	leal	-1(%rax), %edx
	.loc 1 2987 19
	movq	-280(%rbp), %rax
	movl	%edx, 18540(%rax)
	.loc 1 2987 23
	movq	-280(%rbp), %rax
	movl	18540(%rax), %eax
	.loc 1 2987 19
	testl	%eax, %eax
	jg	.L800
	.loc 1 2988 24
	movq	-280(%rbp), %rax
	movl	18468(%rax), %eax
	.loc 1 2988 22
	cmpl	$23, %eax
	jg	.L801
	.loc 1 2988 42 discriminator 1
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L801:
	.loc 1 2989 24
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2989 22
	cmpb	$-49, %al
	jbe	.L802
	.loc 1 2989 24 discriminator 2
	movq	-280(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 2989 23 discriminator 2
	cmpb	$-41, %al
	jbe	.L803
.L802:
	.loc 1 2989 57 discriminator 3
	movl	$1, %eax
	jmp	.L763
.L803:
	.loc 1 2990 19
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L800:
	.loc 1 2969 41 discriminator 2
	addl	$1, -40(%rbp)
.L792:
	.loc 1 2969 28 discriminator 1
	movq	-280(%rbp), %rax
	movl	18064(%rax), %eax
	.loc 1 2969 13 discriminator 1
	cmpl	%eax, -40(%rbp)
	jl	.L804
	.loc 1 2968 38 discriminator 2
	addl	$1, -44(%rbp)
.L791:
	.loc 1 2968 25 discriminator 1
	movq	-280(%rbp), %rax
	movl	18068(%rax), %eax
	.loc 1 2968 10 discriminator 1
	cmpl	%eax, -44(%rbp)
	jl	.L805
	.loc 1 2994 17
	movl	$1, %eax
.L763:
.LBE1374:
	.loc 1 2997 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	stbi__parse_entropy_coded_data, .-stbi__parse_entropy_coded_data
	.type	stbi__jpeg_dequantize, @function
stbi__jpeg_dequantize:
.LFB589:
	.loc 1 3000 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 3002 10
	movl	$0, -4(%rbp)
	.loc 1 3002 4
	jmp	.L807
.L808:
	.loc 1 3003 15 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 3003 25 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3003 15 discriminator 3
	movzwl	(%rax), %eax
	imull	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	.loc 1 3002 22 discriminator 3
	addl	$1, -4(%rbp)
.L807:
	.loc 1 3002 4 discriminator 1
	cmpl	$63, -4(%rbp)
	jle	.L808
	.loc 1 3004 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	stbi__jpeg_dequantize, .-stbi__jpeg_dequantize
	.type	stbi__jpeg_finish, @function
stbi__jpeg_finish:
.LFB590:
	.loc 1 3007 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 3008 9
	movq	-40(%rbp), %rax
	movl	18480(%rax), %eax
	.loc 1 3008 7
	testl	%eax, %eax
	je	.L817
.LBB1377:
	.loc 1 3011 13
	movl	$0, -12(%rbp)
	.loc 1 3011 7
	jmp	.L811
.L816:
.LBB1378:
	.loc 1 3012 33
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	.loc 1 3012 35
	addl	$7, %eax
	.loc 1 3012 14
	sarl	$3, %eax
	movl	%eax, -16(%rbp)
	.loc 1 3013 33
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	.loc 1 3013 35
	addl	$7, %eax
	.loc 1 3013 14
	sarl	$3, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3014 16
	movl	$0, -8(%rbp)
	.loc 1 3014 10
	jmp	.L812
.L815:
	.loc 1 3015 19
	movl	$0, -4(%rbp)
	.loc 1 3015 13
	jmp	.L813
.L814:
.LBB1379:
	.loc 1 3016 44 discriminator 3
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	.loc 1 3016 81 discriminator 3
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	.loc 1 3016 65 discriminator 3
	imull	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 1 3016 61 discriminator 3
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 1 3016 56 discriminator 3
	sall	$6, %eax
	cltq
	.loc 1 3016 51 discriminator 3
	addq	%rax, %rax
	.loc 1 3016 23 discriminator 3
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 3017 69 discriminator 3
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	.loc 1 3017 54 discriminator 3
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	.loc 1 3017 16 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_dequantize
	.loc 1 3018 17 discriminator 3
	movq	-40(%rbp), %rax
	movq	18544(%rax), %r8
	.loc 1 3018 16 discriminator 3
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	.loc 1 3018 51 discriminator 3
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	.loc 1 3018 71 discriminator 3
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	.loc 1 3018 74 discriminator 3
	imull	-8(%rbp), %eax
	.loc 1 3018 76 discriminator 3
	sall	$3, %eax
	movslq	%eax, %rdx
	.loc 1 3018 80 discriminator 3
	movl	-4(%rbp), %eax
	sall	$3, %eax
	cltq
	.loc 1 3018 78 discriminator 3
	addq	%rdx, %rax
	.loc 1 3018 16 discriminator 3
	leaq	(%rsi,%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
.LVL6:
.LBE1379:
	.loc 1 3015 30 discriminator 3
	addl	$1, -4(%rbp)
.L813:
	.loc 1 3015 13 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L814
	.loc 1 3014 27 discriminator 2
	addl	$1, -8(%rbp)
.L812:
	.loc 1 3014 10 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L815
.LBE1378:
	.loc 1 3011 34 discriminator 2
	addl	$1, -12(%rbp)
.L811:
	.loc 1 3011 22 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3011 25 discriminator 1
	movl	8(%rax), %eax
	.loc 1 3011 7 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L816
.L817:
.LBE1377:
	.loc 1 3023 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	stbi__jpeg_finish, .-stbi__jpeg_finish
	.section	.rodata
.LC16:
	.string	"expected marker"
.LC17:
	.string	"bad DRI len"
.LC18:
	.string	"bad DQT type"
.LC19:
	.string	"bad DQT table"
.LC20:
	.string	"bad DHT header"
.LC21:
	.string	"bad COM len"
.LC22:
	.string	"bad APP len"
.LC23:
	.string	"unknown marker"
	.text
	.type	stbi__process_marker, @function
stbi__process_marker:
.LFB591:
	.loc 1 3026 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	.loc 1 3028 4
	cmpl	$255, -172(%rbp)
	je	.L819
	cmpl	$255, -172(%rbp)
	jg	.L820
	cmpl	$221, -172(%rbp)
	je	.L821
	cmpl	$221, -172(%rbp)
	jg	.L820
	cmpl	$196, -172(%rbp)
	je	.L822
	cmpl	$219, -172(%rbp)
	je	.L823
	jmp	.L820
.L819:
	.loc 1 3030 17
	leaq	.LC16(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L821:
	.loc 1 3033 14
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3033 13
	cmpl	$4, %eax
	je	.L825
	.loc 1 3033 47 discriminator 1
	leaq	.LC17(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L825:
	.loc 1 3034 32
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3034 30
	movq	-168(%rbp), %rdx
	movl	%eax, 18536(%rdx)
	.loc 1 3035 17
	movl	$1, %eax
	jmp	.L824
.L823:
	.loc 1 3038 14
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3038 12
	subl	$2, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3039 16
	jmp	.L826
.L835:
.LBB1380:
	.loc 1 3040 21
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3040 17
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	.loc 1 3041 17
	movl	-60(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -64(%rbp)
	.loc 1 3041 42
	cmpl	$0, -64(%rbp)
	setne	%al
	.loc 1 3041 29
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	.loc 1 3042 17
	movl	-60(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -72(%rbp)
	.loc 1 3043 16
	cmpl	$0, -64(%rbp)
	je	.L827
	.loc 1 3043 24 discriminator 1
	cmpl	$1, -64(%rbp)
	je	.L827
	.loc 1 3043 42 discriminator 2
	leaq	.LC18(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L827:
	.loc 1 3044 16
	cmpl	$3, -72(%rbp)
	jle	.L828
	.loc 1 3044 31 discriminator 1
	leaq	.LC19(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L828:
	.loc 1 3046 19
	movl	$0, -24(%rbp)
	.loc 1 3046 13
	jmp	.L829
.L832:
	.loc 1 3047 56
	cmpl	$0, -68(%rbp)
	je	.L830
	.loc 1 3047 81 discriminator 1
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	jmp	.L831
.L830:
	.loc 1 3047 103 discriminator 2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3047 56 discriminator 2
	movzbl	%al, %eax
.L831:
	.loc 1 3047 49 discriminator 4
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	stbi__jpeg_dezigzag(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movzbl	%dl, %ecx
	.loc 1 3047 54 discriminator 4
	movq	-168(%rbp), %rdx
	movslq	%ecx, %rsi
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$6, %rcx
	addq	%rsi, %rcx
	addq	$6720, %rcx
	movw	%ax, 8(%rdx,%rcx,2)
	.loc 1 3046 31 discriminator 4
	addl	$1, -24(%rbp)
.L829:
	.loc 1 3046 13 discriminator 2
	cmpl	$63, -24(%rbp)
	jle	.L832
	.loc 1 3048 33
	cmpl	$0, -68(%rbp)
	je	.L833
	.loc 1 3048 33 is_stmt 0 discriminator 1
	movl	$129, %eax
	jmp	.L834
.L833:
	.loc 1 3048 33 discriminator 2
	movl	$65, %eax
.L834:
	.loc 1 3048 15 is_stmt 1 discriminator 4
	subl	%eax, -20(%rbp)
.L826:
.LBE1380:
	.loc 1 3039 16
	cmpl	$0, -20(%rbp)
	jg	.L835
	.loc 1 3050 18
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L824
.L822:
	.loc 1 3053 14
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3053 12
	subl	$2, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3054 16
	jmp	.L836
.L849:
.LBB1381:
	.loc 1 3056 29
	movl	$0, -40(%rbp)
	.loc 1 3057 21
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3057 17
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	.loc 1 3058 17
	movl	-76(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -80(%rbp)
	.loc 1 3059 17
	movl	-76(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -84(%rbp)
	.loc 1 3060 16
	cmpl	$1, -80(%rbp)
	jg	.L837
	.loc 1 3060 24 discriminator 2
	cmpl	$3, -84(%rbp)
	jle	.L838
.L837:
	.loc 1 3060 42 discriminator 3
	leaq	.LC20(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L838:
	.loc 1 3061 19
	movl	$0, -36(%rbp)
	.loc 1 3061 13
	jmp	.L840
.L841:
	.loc 1 3062 27 discriminator 3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3062 25 discriminator 3
	movl	-36(%rbp), %eax
	cltq
	movl	%edx, -160(%rbp,%rax,4)
	.loc 1 3063 26 discriminator 3
	movl	-36(%rbp), %eax
	cltq
	movl	-160(%rbp,%rax,4), %eax
	.loc 1 3063 18 discriminator 3
	addl	%eax, -40(%rbp)
	.loc 1 3061 31 discriminator 3
	addl	$1, -36(%rbp)
.L840:
	.loc 1 3061 13 discriminator 1
	cmpl	$15, -36(%rbp)
	jle	.L841
	.loc 1 3065 15
	subl	$17, -20(%rbp)
	.loc 1 3066 16
	cmpl	$0, -80(%rbp)
	jne	.L842
	.loc 1 3067 41
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 1 3067 51
	movl	-84(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	.loc 1 3067 21
	addq	%rax, %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	stbi__build_huffman
	.loc 1 3067 19
	testl	%eax, %eax
	jne	.L843
	.loc 1 3067 71 discriminator 1
	movl	$0, %eax
	jmp	.L824
.L843:
	.loc 1 3068 18
	movl	-84(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	1024(%rax), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.L844
.L842:
	.loc 1 3070 41
	movq	-168(%rbp), %rax
	leaq	6728(%rax), %rdx
	.loc 1 3070 51
	movl	-84(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	.loc 1 3070 21
	addq	%rax, %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	stbi__build_huffman
	.loc 1 3070 19
	testl	%eax, %eax
	jne	.L845
	.loc 1 3070 71 discriminator 1
	movl	$0, %eax
	jmp	.L824
.L845:
	.loc 1 3071 18
	movl	-84(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	7744(%rax), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
.L844:
	.loc 1 3073 19
	movl	$0, -36(%rbp)
	.loc 1 3073 13
	jmp	.L846
.L847:
	.loc 1 3074 23 discriminator 3
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3074 17 discriminator 3
	movl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 3074 23 discriminator 3
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3074 21 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3073 30 discriminator 3
	addl	$1, -36(%rbp)
.L846:
	.loc 1 3073 13 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L847
	.loc 1 3075 16
	cmpl	$0, -80(%rbp)
	je	.L848
	.loc 1 3076 52
	movq	-168(%rbp), %rax
	leaq	6728(%rax), %rdx
	.loc 1 3076 63
	movl	-84(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	.loc 1 3076 16
	addq	%rax, %rdx
	.loc 1 3076 46
	movl	-84(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rcx
	movq	-168(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	.loc 1 3076 16
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__build_fast_ac
.L848:
	.loc 1 3077 15
	movl	-40(%rbp), %eax
	subl	%eax, -20(%rbp)
.L836:
.LBE1381:
	.loc 1 3054 16
	cmpl	$0, -20(%rbp)
	jg	.L849
	.loc 1 3079 18
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L824
.L820:
	.loc 1 3083 7
	cmpl	$223, -172(%rbp)
	jle	.L850
	.loc 1 3083 19 discriminator 1
	cmpl	$239, -172(%rbp)
	jle	.L851
.L850:
	.loc 1 3083 33 discriminator 3
	cmpl	$254, -172(%rbp)
	jne	.L852
.L851:
	.loc 1 3084 11
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -20(%rbp)
	.loc 1 3085 10
	cmpl	$1, -20(%rbp)
	jg	.L853
	.loc 1 3086 13
	cmpl	$254, -172(%rbp)
	jne	.L854
	.loc 1 3087 20
	leaq	.LC21(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L854:
	.loc 1 3089 20
	leaq	.LC22(%rip), %rdi
	call	stbi__err
	jmp	.L824
.L853:
	.loc 1 3091 9
	subl	$2, -20(%rbp)
	.loc 1 3093 10
	cmpl	$224, -172(%rbp)
	jne	.L855
	.loc 1 3093 21 discriminator 1
	cmpl	$4, -20(%rbp)
	jle	.L855
.LBB1382:
	.loc 1 3095 14
	movl	$1, -44(%rbp)
	.loc 1 3097 16
	movl	$0, -48(%rbp)
	.loc 1 3097 10
	jmp	.L856
.L858:
	.loc 1 3098 17
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3098 40
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	tag.16(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	.loc 1 3098 16
	cmpb	%dl, %al
	je	.L857
	.loc 1 3099 19
	movl	$0, -44(%rbp)
.L857:
	.loc 1 3097 27 discriminator 2
	addl	$1, -48(%rbp)
.L856:
	.loc 1 3097 10 discriminator 1
	cmpl	$4, -48(%rbp)
	jle	.L858
	.loc 1 3100 12
	subl	$5, -20(%rbp)
	.loc 1 3101 13
	cmpl	$0, -44(%rbp)
	je	.L864
	.loc 1 3102 21
	movq	-168(%rbp), %rax
	movl	$1, 18504(%rax)
.LBE1382:
	.loc 1 3093 32
	jmp	.L864
.L855:
	.loc 1 3103 17
	cmpl	$238, -172(%rbp)
	jne	.L860
	.loc 1 3103 28 discriminator 1
	cmpl	$11, -20(%rbp)
	jle	.L860
.LBB1383:
	.loc 1 3105 14
	movl	$1, -52(%rbp)
	.loc 1 3107 16
	movl	$0, -56(%rbp)
	.loc 1 3107 10
	jmp	.L861
.L863:
	.loc 1 3108 17
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3108 40
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	tag.15(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	.loc 1 3108 16
	cmpb	%dl, %al
	je	.L862
	.loc 1 3109 19
	movl	$0, -52(%rbp)
.L862:
	.loc 1 3107 27 discriminator 2
	addl	$1, -56(%rbp)
.L861:
	.loc 1 3107 10 discriminator 1
	cmpl	$5, -56(%rbp)
	jle	.L863
	.loc 1 3110 12
	subl	$6, -20(%rbp)
	.loc 1 3111 13
	cmpl	$0, -52(%rbp)
	je	.L860
	.loc 1 3112 13
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3113 13
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3114 13
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3115 40
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3115 38
	movq	-168(%rbp), %rax
	movl	%edx, 18508(%rax)
	.loc 1 3116 15
	subl	$6, -20(%rbp)
	jmp	.L860
.L864:
.LBE1383:
	.loc 1 3093 32
	nop
.L860:
	.loc 1 3120 7
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 3121 14
	movl	$1, %eax
	jmp	.L824
.L852:
	.loc 1 3124 11
	leaq	.LC23(%rip), %rdi
	call	stbi__err
.L824:
	.loc 1 3125 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	stbi__process_marker, .-stbi__process_marker
	.section	.rodata
.LC24:
	.string	"bad SOS component count"
.LC25:
	.string	"bad SOS len"
.LC26:
	.string	"bad DC huff"
.LC27:
	.string	"bad AC huff"
.LC28:
	.string	"bad SOS"
	.text
	.type	stbi__process_scan_header, @function
stbi__process_scan_header:
.LFB592:
	.loc 1 3129 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 3131 13
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -12(%rbp)
	.loc 1 3132 16
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3132 14
	movq	-40(%rbp), %rax
	movl	%edx, 18516(%rax)
	.loc 1 3133 9
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 3133 7
	testl	%eax, %eax
	jle	.L866
	.loc 1 3133 26 discriminator 2
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 3133 22 discriminator 2
	cmpl	$4, %eax
	jg	.L866
	.loc 1 3133 43 discriminator 4
	movq	-40(%rbp), %rax
	movl	18516(%rax), %edx
	.loc 1 3133 61 discriminator 4
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3133 54 discriminator 4
	movl	8(%rax), %eax
	.loc 1 3133 39 discriminator 4
	cmpl	%eax, %edx
	jle	.L867
.L866:
	.loc 1 3133 80 discriminator 5
	leaq	.LC24(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L867:
	.loc 1 3134 19
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 3134 15
	addl	$3, %eax
	addl	%eax, %eax
	.loc 1 3134 7
	cmpl	%eax, -12(%rbp)
	je	.L869
	.loc 1 3134 36 discriminator 1
	leaq	.LC25(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L869:
	.loc 1 3135 10
	movl	$0, -4(%rbp)
	.loc 1 3135 4
	jmp	.L870
.L878:
.LBB1384:
	.loc 1 3136 16
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3136 11
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3137 15
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3137 11
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	.loc 1 3138 18
	movl	$0, -8(%rbp)
	.loc 1 3138 7
	jmp	.L871
.L874:
	.loc 1 3139 32
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18080, %rax
	movl	(%rax), %eax
	.loc 1 3139 13
	cmpl	%eax, -20(%rbp)
	je	.L885
	.loc 1 3138 44 discriminator 2
	addl	$1, -8(%rbp)
.L871:
	.loc 1 3138 32 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3138 35 discriminator 1
	movl	8(%rax), %eax
	.loc 1 3138 7 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L874
	jmp	.L873
.L885:
	.loc 1 3140 13
	nop
.L873:
	.loc 1 3141 21
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3141 24
	movl	8(%rax), %eax
	.loc 1 3141 10
	cmpl	%eax, -8(%rbp)
	jne	.L875
	.loc 1 3141 40 discriminator 1
	movl	$0, %eax
	jmp	.L868
.L875:
	.loc 1 3142 33
	movl	-24(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	.loc 1 3142 29
	movq	-40(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	%ecx, (%rax)
	.loc 1 3142 63
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	.loc 1 3142 44
	cmpl	$3, %eax
	jle	.L876
	.loc 1 3142 79 discriminator 1
	leaq	.LC26(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L876:
	.loc 1 3143 33
	movl	-24(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 3143 29
	movq	-40(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18100, %rax
	movl	%ecx, (%rax)
	.loc 1 3143 63
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	.loc 1 3143 44
	cmpl	$3, %eax
	jle	.L877
	.loc 1 3143 79 discriminator 1
	leaq	.LC27(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L877:
	.loc 1 3144 19 discriminator 2
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	4628(%rdx), %rcx
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax,%rcx,4)
.LBE1384:
	.loc 1 3135 29 discriminator 2
	addl	$1, -4(%rbp)
.L870:
	.loc 1 3135 19 discriminator 1
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	.loc 1 3135 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L878
.LBB1385:
	.loc 1 3149 23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3149 21
	movq	-40(%rbp), %rax
	movl	%edx, 18484(%rax)
	.loc 1 3150 23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3150 21
	movq	-40(%rbp), %rax
	movl	%edx, 18488(%rax)
	.loc 1 3151 12
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3151 10
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 3152 26
	movl	-16(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	.loc 1 3152 20
	movq	-40(%rbp), %rax
	movl	%edx, 18492(%rax)
	.loc 1 3153 26
	movl	-16(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	.loc 1 3153 20
	movq	-40(%rbp), %rax
	movl	%edx, 18496(%rax)
	.loc 1 3154 12
	movq	-40(%rbp), %rax
	movl	18480(%rax), %eax
	.loc 1 3154 10
	testl	%eax, %eax
	je	.L879
	.loc 1 3155 15
	movq	-40(%rbp), %rax
	movl	18484(%rax), %eax
	.loc 1 3155 13
	cmpl	$63, %eax
	jg	.L880
	.loc 1 3155 37 discriminator 1
	movq	-40(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 3155 33 discriminator 1
	cmpl	$63, %eax
	jg	.L880
	.loc 1 3155 58 discriminator 2
	movq	-40(%rbp), %rax
	movl	18484(%rax), %edx
	.loc 1 3155 74 discriminator 2
	movq	-40(%rbp), %rax
	movl	18488(%rax), %eax
	.loc 1 3155 54 discriminator 2
	cmpl	%eax, %edx
	jg	.L880
	.loc 1 3155 89 discriminator 3
	movq	-40(%rbp), %rax
	movl	18492(%rax), %eax
	.loc 1 3155 85 discriminator 3
	cmpl	$13, %eax
	jg	.L880
	.loc 1 3155 110 discriminator 4
	movq	-40(%rbp), %rax
	movl	18496(%rax), %eax
	.loc 1 3155 106 discriminator 4
	cmpl	$13, %eax
	jle	.L881
.L880:
	.loc 1 3156 20
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L879:
	.loc 1 3158 15
	movq	-40(%rbp), %rax
	movl	18484(%rax), %eax
	.loc 1 3158 13
	testl	%eax, %eax
	je	.L882
	.loc 1 3158 41 discriminator 1
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L882:
	.loc 1 3159 15
	movq	-40(%rbp), %rax
	movl	18492(%rax), %eax
	.loc 1 3159 13
	testl	%eax, %eax
	jne	.L883
	.loc 1 3159 36 discriminator 2
	movq	-40(%rbp), %rax
	movl	18496(%rax), %eax
	.loc 1 3159 32 discriminator 2
	testl	%eax, %eax
	je	.L884
.L883:
	.loc 1 3159 60 discriminator 3
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L868
.L884:
	.loc 1 3160 22
	movq	-40(%rbp), %rax
	movl	$63, 18488(%rax)
.L881:
.LBE1385:
	.loc 1 3164 11
	movl	$1, %eax
.L868:
	.loc 1 3165 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	stbi__process_scan_header, .-stbi__process_scan_header
	.type	stbi__free_jpeg_components, @function
stbi__free_jpeg_components:
.LFB593:
	.loc 1 3168 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	.loc 1 3170 10
	movl	$0, -4(%rbp)
	.loc 1 3170 4
	jmp	.L887
.L891:
	.loc 1 3171 25
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	.loc 1 3171 10
	testq	%rax, %rax
	je	.L888
	.loc 1 3172 10
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3173 34
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	$0, (%rax)
	.loc 1 3174 30
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	$0, (%rax)
.L888:
	.loc 1 3176 25
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	.loc 1 3176 10
	testq	%rax, %rax
	je	.L889
	.loc 1 3177 10
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3178 35
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	.loc 1 3179 31
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	$0, (%rax)
.L889:
	.loc 1 3181 25
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	.loc 1 3181 10
	testq	%rax, %rax
	je	.L890
	.loc 1 3182 10
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3183 33
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
.L890:
	.loc 1 3170 25 discriminator 2
	addl	$1, -4(%rbp)
.L887:
	.loc 1 3170 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L891
	.loc 1 3186 11
	movl	-32(%rbp), %eax
	.loc 1 3187 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	stbi__free_jpeg_components, .-stbi__free_jpeg_components
	.section	.rodata
.LC29:
	.string	"bad SOF len"
.LC30:
	.string	"only 8-bit"
.LC31:
	.string	"no header height"
.LC32:
	.string	"0 width"
.LC33:
	.string	"too large"
.LC34:
	.string	"bad component count"
.LC35:
	.string	"bad H"
.LC36:
	.string	"bad V"
.LC37:
	.string	"bad TQ"
	.text
	.type	stbi__process_frame_header, @function
stbi__process_frame_header:
.LFB594:
	.loc 1 3190 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	.loc 1 3191 19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 3192 18
	movl	$1, -8(%rbp)
	.loc 1 3192 26
	movl	$1, -12(%rbp)
	.loc 1 3193 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -28(%rbp)
	.loc 1 3193 38
	cmpl	$10, -28(%rbp)
	jg	.L894
	.loc 1 3193 55 discriminator 1
	leaq	.LC29(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L894:
	.loc 1 3194 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3194 7
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	.loc 1 3194 38
	cmpl	$8, -32(%rbp)
	je	.L896
	.loc 1 3194 54 discriminator 1
	leaq	.LC30(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L896:
	.loc 1 3195 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	.loc 1 3195 13
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 3195 40
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 3195 38
	testl	%eax, %eax
	jne	.L897
	.loc 1 3195 61 discriminator 1
	leaq	.LC31(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L897:
	.loc 1 3196 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	.loc 1 3196 13
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 3196 40
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 3196 38
	testl	%eax, %eax
	jne	.L898
	.loc 1 3196 61 discriminator 1
	leaq	.LC32(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L898:
	.loc 1 3197 9
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 3197 7
	cmpl	$16777216, %eax
	jbe	.L899
	.loc 1 3197 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L899:
	.loc 1 3198 9
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 3198 7
	cmpl	$16777216, %eax
	jbe	.L900
	.loc 1 3198 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L900:
	.loc 1 3199 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3199 6
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	.loc 1 3200 7
	cmpl	$3, -36(%rbp)
	je	.L901
	.loc 1 3200 15 discriminator 1
	cmpl	$1, -36(%rbp)
	je	.L901
	.loc 1 3200 25 discriminator 2
	cmpl	$4, -36(%rbp)
	je	.L901
	.loc 1 3200 43 discriminator 3
	leaq	.LC34(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L901:
	.loc 1 3201 13
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 1 3202 10
	movl	$0, -4(%rbp)
	.loc 1 3202 4
	jmp	.L902
.L903:
	.loc 1 3203 27 discriminator 3
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	$0, (%rax)
	.loc 1 3204 30 discriminator 3
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
	.loc 1 3202 21 discriminator 3
	addl	$1, -4(%rbp)
.L902:
	.loc 1 3202 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L903
	.loc 1 3207 19
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 3207 17
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 3207 15
	addl	$8, %eax
	.loc 1 3207 7
	cmpl	%eax, -28(%rbp)
	je	.L904
	.loc 1 3207 35 discriminator 1
	leaq	.LC29(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L904:
	.loc 1 3209 11
	movq	-56(%rbp), %rax
	movl	$0, 18512(%rax)
	.loc 1 3210 10
	movl	$0, -4(%rbp)
	.loc 1 3210 4
	jmp	.L905
.L912:
.LBB1386:
	.loc 1 3212 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3212 25
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18080, %rax
	movl	%edx, (%rax)
	.loc 1 3213 12
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 3213 10
	cmpl	$3, %eax
	jne	.L906
	.loc 1 3213 42 discriminator 1
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18080, %rax
	movl	(%rax), %edx
	.loc 1 3213 52 discriminator 1
	movl	-4(%rbp), %eax
	cltq
	leaq	rgb.14(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movzbl	%al, %eax
	.loc 1 3213 25 discriminator 1
	cmpl	%eax, %edx
	jne	.L906
	.loc 1 3214 13
	movq	-56(%rbp), %rax
	movl	18512(%rax), %eax
	.loc 1 3214 10
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18512(%rax)
.L906:
	.loc 1 3215 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3215 9
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	.loc 1 3216 29
	movl	-40(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	.loc 1 3216 24
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	%ecx, (%rax)
	.loc 1 3216 56
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 3216 40
	testl	%eax, %eax
	je	.L907
	.loc 1 3216 76 discriminator 2
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 3216 59 discriminator 2
	cmpl	$4, %eax
	jle	.L908
.L907:
	.loc 1 3216 91 discriminator 3
	leaq	.LC35(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L908:
	.loc 1 3217 28
	movl	-40(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 3217 24
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	%ecx, (%rax)
	.loc 1 3217 56
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 3217 40
	testl	%eax, %eax
	je	.L909
	.loc 1 3217 76 discriminator 2
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 3217 59 discriminator 2
	cmpl	$4, %eax
	jle	.L910
.L909:
	.loc 1 3217 91 discriminator 3
	leaq	.LC36(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L910:
	.loc 1 3218 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 3218 25
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18092, %rax
	movl	%edx, (%rax)
	.loc 1 3218 61
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	.loc 1 3218 46
	cmpl	$3, %eax
	jle	.L911
	.loc 1 3218 77 discriminator 1
	leaq	.LC37(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L911:
.LBE1386:
	.loc 1 3210 28 discriminator 2
	addl	$1, -4(%rbp)
.L905:
	.loc 1 3210 19 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 3210 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L912
	.loc 1 3221 7
	cmpl	$0, -60(%rbp)
	je	.L913
	.loc 1 3221 40 discriminator 1
	movl	$1, %eax
	jmp	.L895
.L913:
	.loc 1 3223 9
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 3223 42
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %edx
	.loc 1 3223 9
	movl	%edx, %esi
	.loc 1 3223 32
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	.loc 1 3223 9
	movl	%edx, %edi
	movl	$0, %ecx
	movl	%eax, %edx
	call	stbi__mad3sizes_valid
	.loc 1 3223 7
	testl	%eax, %eax
	jne	.L914
	.loc 1 3223 72 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L895
.L914:
	.loc 1 3225 10
	movl	$0, -4(%rbp)
	.loc 1 3225 4
	jmp	.L915
.L918:
	.loc 1 3226 25
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 3226 10
	cmpl	%eax, -8(%rbp)
	jge	.L916
	.loc 1 3226 43 discriminator 1
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L916:
	.loc 1 3227 25
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 3227 10
	cmpl	%eax, -12(%rbp)
	jge	.L917
	.loc 1 3227 43 discriminator 1
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L917:
	.loc 1 3225 28 discriminator 2
	addl	$1, -4(%rbp)
.L915:
	.loc 1 3225 19 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 3225 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L918
	.loc 1 3231 17
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 18056(%rax)
	.loc 1 3232 17
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 18060(%rax)
	.loc 1 3233 25
	movl	-8(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 1 3233 17
	movq	-56(%rbp), %rax
	movl	%edx, 18072(%rax)
	.loc 1 3234 25
	movl	-12(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 1 3234 17
	movq	-56(%rbp), %rax
	movl	%edx, 18076(%rax)
	.loc 1 3236 21
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 3236 32
	movq	-56(%rbp), %rax
	movl	18072(%rax), %eax
	.loc 1 3236 29
	addl	%edx, %eax
	.loc 1 3236 43
	leal	-1(%rax), %edx
	.loc 1 3236 50
	movq	-56(%rbp), %rax
	movl	18072(%rax), %eax
	movl	%eax, %ecx
	.loc 1 3236 47
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	.loc 1 3236 17
	movq	-56(%rbp), %rax
	movl	%edx, 18064(%rax)
	.loc 1 3237 21
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 3237 32
	movq	-56(%rbp), %rax
	movl	18076(%rax), %eax
	.loc 1 3237 29
	addl	%edx, %eax
	.loc 1 3237 43
	leal	-1(%rax), %edx
	.loc 1 3237 50
	movq	-56(%rbp), %rax
	movl	18076(%rax), %eax
	movl	%eax, %ecx
	.loc 1 3237 47
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	.loc 1 3237 17
	movq	-56(%rbp), %rax
	movl	%edx, 18068(%rax)
	.loc 1 3239 10
	movl	$0, -4(%rbp)
	.loc 1 3239 4
	jmp	.L919
.L923:
	.loc 1 3241 28
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 3241 52
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 3241 36
	imull	%eax, %ecx
	movl	%ecx, %edx
	.loc 1 3241 55
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 3241 62
	subl	$1, %eax
	.loc 1 3241 66
	movl	-8(%rbp), %edi
	movl	$0, %edx
	divl	%edi
	movl	%eax, %ecx
	.loc 1 3241 24
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18108, %rax
	movl	%ecx, (%rax)
	.loc 1 3242 28
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	.loc 1 3242 52
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 3242 36
	imull	%eax, %ecx
	movl	%ecx, %edx
	.loc 1 3242 55
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 1 3242 62
	subl	$1, %eax
	.loc 1 3242 66
	movl	-12(%rbp), %edi
	movl	$0, %edx
	divl	%edi
	movl	%eax, %ecx
	.loc 1 3242 24
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18112, %rax
	movl	%ecx, (%rax)
	.loc 1 3250 28
	movq	-56(%rbp), %rax
	movl	18064(%rax), %ecx
	.loc 1 3250 56
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	.loc 1 3250 40
	imull	%ecx, %eax
	.loc 1 3250 59
	leal	0(,%rax,8), %ecx
	.loc 1 3250 25
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	%ecx, (%rax)
	.loc 1 3251 28
	movq	-56(%rbp), %rax
	movl	18068(%rax), %ecx
	.loc 1 3251 56
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	.loc 1 3251 40
	imull	%ecx, %eax
	.loc 1 3251 59
	leal	0(,%rax,8), %ecx
	.loc 1 3251 25
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18120, %rax
	movl	%ecx, (%rax)
	.loc 1 3252 28
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	$0, (%rax)
	.loc 1 3253 32
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	.loc 1 3254 30
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
	.loc 1 3255 33
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	movl	$15, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, %rdx
	.loc 1 3255 31
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18136, %rax
	movq	%rdx, (%rax)
	.loc 1 3256 25
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	.loc 1 3256 10
	testq	%rax, %rax
	jne	.L920
	.loc 1 3257 17
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	jmp	.L895
.L920:
	.loc 1 3259 65
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	.loc 1 3259 75
	addq	$15, %rax
	.loc 1 3259 81
	andq	$-16, %rax
	.loc 1 3259 29
	movq	%rax, %rcx
	.loc 1 3259 27
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	%rcx, (%rax)
	.loc 1 3260 12
	movq	-56(%rbp), %rax
	movl	18480(%rax), %eax
	.loc 1 3260 10
	testl	%eax, %eax
	je	.L921
	.loc 1 3262 49
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	.loc 1 3262 53
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	.loc 1 3262 33
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	%ecx, (%rax)
	.loc 1 3263 49
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %eax
	.loc 1 3263 53
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	.loc 1 3263 33
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18172, %rax
	movl	%ecx, (%rax)
	.loc 1 3264 37
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %esi
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	movl	$15, %ecx
	movl	$2, %edx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, %rdx
	.loc 1 3264 35
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18144, %rax
	movq	%rdx, (%rax)
	.loc 1 3265 28
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	.loc 1 3265 13
	testq	%rax, %rax
	jne	.L922
	.loc 1 3266 20
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	jmp	.L895
.L922:
	.loc 1 3267 67
	movq	-56(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	.loc 1 3267 78
	addq	$15, %rax
	.loc 1 3267 84
	andq	$-16, %rax
	.loc 1 3267 33
	movq	%rax, %rcx
	.loc 1 3267 31
	movq	-56(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18160, %rax
	movq	%rcx, (%rax)
.L921:
	.loc 1 3239 28 discriminator 2
	addl	$1, -4(%rbp)
.L919:
	.loc 1 3239 19 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 3239 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L923
	.loc 1 3271 11
	movl	$1, %eax
.L895:
	.loc 1 3272 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	stbi__process_frame_header, .-stbi__process_frame_header
	.section	.rodata
.LC38:
	.string	"no SOI"
.LC39:
	.string	"no SOF"
	.text
	.type	stbi__decode_jpeg_header, @function
stbi__decode_jpeg_header:
.LFB595:
	.loc 1 3284 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 3286 12
	movq	-24(%rbp), %rax
	movl	$0, 18504(%rax)
	.loc 1 3287 29
	movq	-24(%rbp), %rax
	movl	$-1, 18508(%rax)
	.loc 1 3288 14
	movq	-24(%rbp), %rax
	movb	$-1, 18472(%rax)
	.loc 1 3289 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3289 6
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3290 7
	cmpl	$216, -4(%rbp)
	je	.L925
	.loc 1 3290 30 discriminator 1
	leaq	.LC38(%rip), %rdi
	call	stbi__err
	jmp	.L926
.L925:
	.loc 1 3291 7
	cmpl	$1, -28(%rbp)
	jne	.L927
	.loc 1 3291 40 discriminator 1
	movl	$1, %eax
	jmp	.L926
.L927:
	.loc 1 3292 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3292 6
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3293 10
	jmp	.L928
.L934:
	.loc 1 3294 12
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_marker
	.loc 1 3294 10
	testl	%eax, %eax
	jne	.L929
	.loc 1 3294 46 discriminator 1
	movl	$0, %eax
	jmp	.L926
.L929:
	.loc 1 3295 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3295 9
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3296 13
	jmp	.L930
.L932:
	.loc 1 3298 14
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 3298 13
	testl	%eax, %eax
	je	.L931
	.loc 1 3298 41 discriminator 1
	leaq	.LC39(%rip), %rdi
	call	stbi__err
	jmp	.L926
.L931:
	.loc 1 3299 14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3299 12
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L930:
	.loc 1 3296 13
	cmpl	$255, -4(%rbp)
	je	.L932
.L928:
	.loc 1 3293 10
	cmpl	$192, -4(%rbp)
	je	.L933
	.loc 1 3293 12 discriminator 1
	cmpl	$193, -4(%rbp)
	je	.L933
	.loc 1 3293 11 discriminator 2
	cmpl	$194, -4(%rbp)
	jne	.L934
.L933:
	.loc 1 3302 21
	cmpl	$194, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	.loc 1 3302 19
	movq	-24(%rbp), %rax
	movl	%edx, 18480(%rax)
	.loc 1 3303 9
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_frame_header
	.loc 1 3303 7
	testl	%eax, %eax
	jne	.L935
	.loc 1 3303 53 discriminator 1
	movl	$0, %eax
	jmp	.L926
.L935:
	.loc 1 3304 11
	movl	$1, %eax
.L926:
	.loc 1 3305 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	stbi__decode_jpeg_header, .-stbi__decode_jpeg_header
	.section	.rodata
.LC40:
	.string	"bad DNL len"
.LC41:
	.string	"bad DNL height"
	.text
	.type	stbi__decode_jpeg_image, @function
stbi__decode_jpeg_image:
.LFB596:
	.loc 1 3309 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 3311 11
	movl	$0, -4(%rbp)
	.loc 1 3311 4
	jmp	.L937
.L938:
	.loc 1 3312 31 discriminator 3
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	$0, (%rax)
	.loc 1 3313 32 discriminator 3
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	.loc 1 3311 24 discriminator 3
	addl	$1, -4(%rbp)
.L937:
	.loc 1 3311 4 discriminator 1
	cmpl	$3, -4(%rbp)
	jle	.L938
	.loc 1 3315 24
	movq	-24(%rbp), %rax
	movl	$0, 18536(%rax)
	.loc 1 3316 9
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	.loc 1 3316 7
	testl	%eax, %eax
	jne	.L939
	.loc 1 3316 62 discriminator 1
	movl	$0, %eax
	jmp	.L940
.L939:
	.loc 1 3317 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3317 6
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3318 10
	jmp	.L941
.L951:
	.loc 1 3319 10
	cmpl	$218, -4(%rbp)
	jne	.L942
	.loc 1 3320 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__process_scan_header
	.loc 1 3320 13
	testl	%eax, %eax
	jne	.L943
	.loc 1 3320 52 discriminator 1
	movl	$0, %eax
	jmp	.L940
.L943:
	.loc 1 3321 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_entropy_coded_data
	.loc 1 3321 13
	testl	%eax, %eax
	jne	.L944
	.loc 1 3321 57 discriminator 1
	movl	$0, %eax
	jmp	.L940
.L944:
	.loc 1 3322 15
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	.loc 1 3322 13
	cmpb	$-1, %al
	jne	.L948
	.loc 1 3324 19
	jmp	.L946
.L947:
.LBB1387:
	.loc 1 3325 24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3325 20
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 3326 19
	cmpl	$255, -16(%rbp)
	jne	.L946
	.loc 1 3327 31
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 3327 29
	movq	-24(%rbp), %rdx
	movb	%al, 18472(%rdx)
	.loc 1 3328 19
	jmp	.L948
.L946:
.LBE1387:
	.loc 1 3324 21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 3324 19
	testl	%eax, %eax
	je	.L947
	jmp	.L948
.L942:
	.loc 1 3333 17
	cmpl	$220, -4(%rbp)
	jne	.L949
.LBB1388:
	.loc 1 3334 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -8(%rbp)
	.loc 1 3335 28
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 3335 23
	movl	%eax, -12(%rbp)
	.loc 1 3336 13
	cmpl	$4, -8(%rbp)
	je	.L950
	.loc 1 3336 30 discriminator 1
	leaq	.LC40(%rip), %rdi
	call	stbi__err
	jmp	.L940
.L950:
	.loc 1 3337 21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3337 24
	movl	4(%rax), %eax
	.loc 1 3337 13
	cmpl	%eax, -12(%rbp)
	je	.L948
	.loc 1 3337 40 discriminator 1
	leaq	.LC41(%rip), %rdi
	call	stbi__err
	jmp	.L940
.L949:
.LBE1388:
	.loc 1 3339 15
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_marker
	.loc 1 3339 13
	testl	%eax, %eax
	jne	.L948
	.loc 1 3339 50 discriminator 1
	movl	$0, %eax
	jmp	.L940
.L948:
	.loc 1 3341 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	.loc 1 3341 9
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L941:
	.loc 1 3318 10
	cmpl	$217, -4(%rbp)
	jne	.L951
	.loc 1 3343 9
	movq	-24(%rbp), %rax
	movl	18480(%rax), %eax
	.loc 1 3343 7
	testl	%eax, %eax
	je	.L952
	.loc 1 3344 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_finish
.L952:
	.loc 1 3345 11
	movl	$1, %eax
.L940:
	.loc 1 3346 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	stbi__decode_jpeg_image, .-stbi__decode_jpeg_image
	.type	resample_row_1, @function
resample_row_1:
.LFB597:
	.loc 1 3356 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	.loc 1 3361 11
	movq	-16(%rbp), %rax
	.loc 1 3362 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	resample_row_1, .-resample_row_1
	.type	stbi__resample_row_v_2, @function
stbi__resample_row_v_2:
.LFB598:
	.loc 1 3365 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	.loc 1 3369 10
	movl	$0, -4(%rbp)
	.loc 1 3369 4
	jmp	.L956
.L957:
	.loc 1 3370 16 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	.loc 1 3370 10 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3370 16 discriminator 3
	movl	%ecx, %edx
	.loc 1 3370 14 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3369 21 discriminator 3
	addl	$1, -4(%rbp)
.L956:
	.loc 1 3369 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L957
	.loc 1 3371 11
	movq	-24(%rbp), %rax
	.loc 1 3372 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	stbi__resample_row_v_2, .-stbi__resample_row_v_2
	.type	stbi__resample_row_h_2, @function
stbi__resample_row_h_2:
.LFB599:
	.loc 1 3375 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	.loc 1 3378 13
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 3380 7
	cmpl	$1, -60(%rbp)
	jne	.L960
	.loc 1 3382 19
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3382 30
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 1 3382 23
	movb	%dl, (%rax)
	.loc 1 3382 19
	movzbl	(%rax), %edx
	.loc 1 3382 14
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3383 14
	movq	-40(%rbp), %rax
	jmp	.L961
.L960:
	.loc 1 3386 18
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 3386 11
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3387 13
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3387 7
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3387 11
	movb	%dl, (%rax)
	.loc 1 3388 10
	movl	$1, -4(%rbp)
	.loc 1 3388 4
	jmp	.L962
.L963:
.LBB1389:
	.loc 1 3389 22 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3389 16 discriminator 3
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 3389 11 discriminator 3
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3390 20 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	.loc 1 3390 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3390 10 discriminator 3
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3390 20 discriminator 3
	movl	%ecx, %edx
	.loc 1 3390 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3391 20 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3391 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 3391 10 discriminator 3
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3391 18 discriminator 3
	movb	%dl, (%rax)
.LBE1389:
	.loc 1 3388 23 discriminator 3
	addl	$1, -4(%rbp)
.L962:
	.loc 1 3388 19 discriminator 1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	.loc 1 3388 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L963
	.loc 1 3393 17
	movl	-60(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-60(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	.loc 1 3393 9
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3393 7
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3393 17
	movl	%ecx, %edx
	.loc 1 3393 15
	movb	%dl, (%rax)
	.loc 1 3394 22
	movl	-60(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3394 9
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	.loc 1 3394 7
	leaq	1(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 3394 22
	movzbl	(%rax), %eax
	.loc 1 3394 15
	movb	%al, (%rdx)
	.loc 1 3399 11
	movq	-40(%rbp), %rax
.L961:
	.loc 1 3400 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	stbi__resample_row_h_2, .-stbi__resample_row_h_2
	.type	stbi__resample_row_hv_2, @function
stbi__resample_row_hv_2:
.LFB600:
	.loc 1 3405 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	.loc 1 3408 7
	cmpl	$1, -44(%rbp)
	jne	.L965
	.loc 1 3409 25
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3409 19
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 1 3409 23
	movb	%dl, (%rax)
	.loc 1 3409 19
	movzbl	(%rax), %edx
	.loc 1 3409 14
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3410 14
	movq	-24(%rbp), %rax
	jmp	.L966
.L965:
	.loc 1 3413 18
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3413 10
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	.loc 1 3413 30
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3413 7
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3414 13
	movl	-8(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3414 11
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3415 10
	movl	$1, -4(%rbp)
	.loc 1 3415 4
	jmp	.L967
.L968:
	.loc 1 3416 10 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 3417 21 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3417 13 discriminator 3
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	.loc 1 3417 31 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3417 10 discriminator 3
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3418 20 discriminator 3
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %edx
	.loc 1 3418 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 3418 10 discriminator 3
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3418 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3419 20 discriminator 3
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	.loc 1 3419 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3419 10 discriminator 3
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3419 20 discriminator 3
	movl	%ecx, %edx
	.loc 1 3419 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3415 21 discriminator 3
	addl	$1, -4(%rbp)
.L967:
	.loc 1 3415 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L968
	.loc 1 3421 17
	movl	-8(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3421 9
	movl	-44(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 3421 7
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3421 15
	movb	%dl, (%rax)
	.loc 1 3425 11
	movq	-24(%rbp), %rax
.L966:
	.loc 1 3426 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	stbi__resample_row_hv_2, .-stbi__resample_row_hv_2
	.type	stbi__resample_row_hv_2_simd, @function
stbi__resample_row_hv_2_simd:
.LFB601:
	.loc 1 3430 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$952, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%rdx, -1064(%rbp)
	movl	%ecx, -1068(%rbp)
	movl	%r8d, -1072(%rbp)
	.loc 1 3432 8
	movl	$0, -4(%rbp)
	.loc 1 3434 7
	cmpl	$1, -1068(%rbp)
	jne	.L970
	.loc 1 3435 25
	movq	-1056(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-1064(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3435 19
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	.loc 1 3435 23
	movb	%dl, (%rax)
	.loc 1 3435 19
	movzbl	(%rax), %edx
	.loc 1 3435 14
	movq	-1048(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3436 14
	movq	-1048(%rbp), %rax
	jmp	.L971
.L970:
	.loc 1 3439 18
	movq	-1056(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3439 10
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	.loc 1 3439 30
	movq	-1064(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3439 7
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3443 4
	jmp	.L972
.L998:
.LBB1390:
.LBB1391:
.LBB1392:
	.loc 2 772 24
	pxor	%xmm0, %xmm0
.LBE1392:
.LBE1391:
	.loc 1 3447 23
	movaps	%xmm0, -32(%rbp)
	.loc 1 3448 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 3448 59
	movq	-1064(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1008(%rbp)
.LBB1393:
.LBB1394:
	.loc 2 709 10
	movq	-1008(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1016(%rbp)
	movq	%rax, -1024(%rbp)
.LBB1395:
.LBB1396:
	.loc 2 598 10
	movq	-1024(%rbp), %rax
	movq	-1016(%rbp), %rdx
	movq	%rdx, -1032(%rbp)
	movq	%rax, -1040(%rbp)
.LBB1397:
.LBB1398:
	.loc 2 592 24
	movq	-1032(%rbp), %rdx
	movq	-1040(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm5
	punpcklqdq	%xmm5, %xmm0
.LBE1398:
.LBE1397:
	.loc 2 598 10
	nop
.LBE1396:
.LBE1395:
	.loc 2 709 10
	nop
.LBE1394:
.LBE1393:
	.loc 1 3448 23
	movaps	%xmm0, -48(%rbp)
	.loc 1 3449 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 3449 60
	movq	-1056(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -968(%rbp)
.LBB1399:
.LBB1400:
	.loc 2 709 10
	movq	-968(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -976(%rbp)
	movq	%rax, -984(%rbp)
.LBB1401:
.LBB1402:
	.loc 2 598 10
	movq	-984(%rbp), %rax
	movq	-976(%rbp), %rdx
	movq	%rdx, -992(%rbp)
	movq	%rax, -1000(%rbp)
.LBB1403:
.LBB1404:
	.loc 2 592 24
	movq	-992(%rbp), %rdx
	movq	-1000(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm6
	punpcklqdq	%xmm6, %xmm0
.LBE1404:
.LBE1403:
	.loc 2 598 10
	nop
.LBE1402:
.LBE1401:
	.loc 2 709 10
	nop
.LBE1400:
.LBE1399:
	.loc 1 3449 23
	movaps	%xmm0, -64(%rbp)
	movdqa	-48(%rbp), %xmm0
	movaps	%xmm0, -944(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -960(%rbp)
.LBB1405:
.LBB1406:
	.loc 2 1006 19
	movdqa	-960(%rbp), %xmm1
	movdqa	-944(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1406:
.LBE1405:
	.loc 1 3450 23
	movaps	%xmm0, -80(%rbp)
	movdqa	-64(%rbp), %xmm0
	movaps	%xmm0, -912(%rbp)
	movdqa	-32(%rbp), %xmm0
	movaps	%xmm0, -928(%rbp)
.LBB1407:
.LBB1408:
	.loc 2 1006 19
	movdqa	-928(%rbp), %xmm1
	movdqa	-912(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1408:
.LBE1407:
	.loc 1 3451 23
	movaps	%xmm0, -96(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -880(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -896(%rbp)
.LBB1409:
.LBB1410:
	.loc 2 1084 21
	movdqa	-880(%rbp), %xmm0
	.loc 2 1084 35
	movdqa	-896(%rbp), %xmm1
	.loc 2 1084 33
	psubw	%xmm1, %xmm0
.LBE1410:
.LBE1409:
	.loc 1 3452 23
	movaps	%xmm0, -112(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -848(%rbp)
	movl	$2, -852(%rbp)
.LBB1411:
.LBB1412:
	.loc 2 1156 19
	movdqa	-848(%rbp), %xmm1
	movd	-852(%rbp), %xmm0
	psllw	%xmm0, %xmm1
	.loc 2 1156 10
	movdqa	%xmm1, %xmm0
.LBE1412:
.LBE1411:
	.loc 1 3453 23
	movaps	%xmm0, -128(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -816(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -832(%rbp)
.LBB1413:
.LBB1414:
	.loc 2 1036 21
	movdqa	-816(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-832(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1414:
.LBE1413:
	.loc 1 3454 23
	movaps	%xmm0, -144(%rbp)
	.loc 1 3461 22
	movdqa	-144(%rbp), %xmm0
	pslldq	$2, %xmm0
	movaps	%xmm0, -160(%rbp)
	.loc 1 3462 22
	movdqa	-144(%rbp), %xmm0
	psrldq	$2, %xmm0
	movaps	%xmm0, -176(%rbp)
	.loc 1 3463 22
	movl	-8(%rbp), %eax
	cwtl
	movdqa	-160(%rbp), %xmm0
	pinsrw	$0, %eax, %xmm0
	.loc 1 3463 15
	movaps	%xmm0, -192(%rbp)
	.loc 1 3464 22
	movl	-4(%rbp), %eax
	cltq
	leaq	8(%rax), %rdx
	movq	-1056(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	8(%rax), %rcx
	movq	-1064(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	cwtl
	movdqa	-176(%rbp), %xmm0
	pinsrw	$7, %eax, %xmm0
	.loc 1 3464 15
	movaps	%xmm0, -208(%rbp)
	movw	$8, -774(%rbp)
.LBB1415:
.LBB1416:
	.loc 2 650 10
	movswl	-774(%rbp), %eax
	movswl	-774(%rbp), %edx
	movswl	-774(%rbp), %ecx
	movswl	-774(%rbp), %esi
	movswl	-774(%rbp), %edi
	movswl	-774(%rbp), %r8d
	movswl	-774(%rbp), %r9d
	movswl	-774(%rbp), %r10d
	movw	%r10w, -776(%rbp)
	movw	%r9w, -778(%rbp)
	movw	%r8w, -780(%rbp)
	movw	%di, -782(%rbp)
	movw	%si, -784(%rbp)
	movw	%cx, -786(%rbp)
	movw	%dx, -788(%rbp)
	movw	%ax, -790(%rbp)
.LBB1417:
.LBB1418:
	.loc 2 611 41
	movzwl	-790(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-788(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-786(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-784(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-782(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-780(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-778(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-776(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1418:
.LBE1417:
	.loc 2 650 10
	nop
.LBE1416:
.LBE1415:
	.loc 1 3470 23
	movaps	%xmm0, -224(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -768(%rbp)
	movl	$2, -772(%rbp)
.LBB1419:
.LBB1420:
	.loc 2 1156 19
	movdqa	-768(%rbp), %xmm1
	movd	-772(%rbp), %xmm0
	psllw	%xmm0, %xmm1
	.loc 2 1156 10
	movdqa	%xmm1, %xmm0
.LBE1420:
.LBE1419:
	.loc 1 3471 22
	movaps	%xmm0, -240(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -736(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -752(%rbp)
.LBB1421:
.LBB1422:
	.loc 2 1084 21
	movdqa	-736(%rbp), %xmm0
	.loc 2 1084 35
	movdqa	-752(%rbp), %xmm1
	.loc 2 1084 33
	psubw	%xmm1, %xmm0
.LBE1422:
.LBE1421:
	.loc 1 3472 22
	movaps	%xmm0, -256(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -704(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -720(%rbp)
.LBB1423:
.LBB1424:
	.loc 2 1084 21
	movdqa	-704(%rbp), %xmm0
	.loc 2 1084 35
	movdqa	-720(%rbp), %xmm1
	.loc 2 1084 33
	psubw	%xmm1, %xmm0
.LBE1424:
.LBE1423:
	.loc 1 3473 22
	movaps	%xmm0, -272(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -672(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -688(%rbp)
.LBB1425:
.LBB1426:
	.loc 2 1036 21
	movdqa	-672(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-688(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1426:
.LBE1425:
	.loc 1 3474 22
	movaps	%xmm0, -288(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -640(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -656(%rbp)
.LBB1427:
.LBB1428:
	.loc 2 1036 21
	movdqa	-640(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-656(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1428:
.LBE1427:
	.loc 1 3475 22
	movaps	%xmm0, -304(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -608(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -624(%rbp)
.LBB1429:
.LBB1430:
	.loc 2 1036 21
	movdqa	-608(%rbp), %xmm1
	.loc 2 1036 35
	movdqa	-624(%rbp), %xmm0
	.loc 2 1036 33
	paddw	%xmm1, %xmm0
.LBE1430:
.LBE1429:
	.loc 1 3476 22
	movaps	%xmm0, -320(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -576(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -592(%rbp)
.LBB1431:
.LBB1432:
	.loc 2 1012 19
	movdqa	-592(%rbp), %xmm1
	movdqa	-576(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1432:
.LBE1431:
	.loc 1 3479 22
	movaps	%xmm0, -336(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -544(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -560(%rbp)
.LBB1433:
.LBB1434:
	.loc 2 988 19
	movdqa	-560(%rbp), %xmm1
	movdqa	-544(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1434:
.LBE1433:
	.loc 1 3480 22
	movaps	%xmm0, -352(%rbp)
	movdqa	-336(%rbp), %xmm0
	movaps	%xmm0, -512(%rbp)
	movl	$4, -516(%rbp)
.LBB1435:
.LBB1436:
	.loc 2 1221 19
	movdqa	-512(%rbp), %xmm1
	movd	-516(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	.loc 2 1221 10
	movdqa	%xmm1, %xmm0
.LBE1436:
.LBE1435:
	.loc 1 3481 22
	movaps	%xmm0, -368(%rbp)
	movdqa	-352(%rbp), %xmm0
	movaps	%xmm0, -480(%rbp)
	movl	$4, -484(%rbp)
.LBB1437:
.LBB1438:
	.loc 2 1221 19
	movdqa	-480(%rbp), %xmm1
	movd	-484(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	.loc 2 1221 10
	movdqa	%xmm1, %xmm0
.LBE1438:
.LBE1437:
	.loc 1 3482 22
	movaps	%xmm0, -384(%rbp)
	movdqa	-368(%rbp), %xmm0
	movaps	%xmm0, -448(%rbp)
	movdqa	-384(%rbp), %xmm0
	movaps	%xmm0, -464(%rbp)
.LBB1439:
.LBB1440:
	.loc 2 976 19
	movdqa	-464(%rbp), %xmm1
	movdqa	-448(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1440:
.LBE1439:
	.loc 1 3485 22
	movaps	%xmm0, -400(%rbp)
	.loc 1 3486 44
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3486 41
	movq	-1048(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movdqa	-400(%rbp), %xmm0
	movaps	%xmm0, -432(%rbp)
.LBB1441:
.LBB1442:
	.loc 2 727 8
	movdqa	-432(%rbp), %xmm0
	movq	-408(%rbp), %rax
	movups	%xmm0, (%rax)
	.loc 2 728 1
	nop
.LBE1442:
.LBE1441:
	.loc 1 3524 21
	movl	-4(%rbp), %eax
	cltq
	leaq	7(%rax), %rdx
	movq	-1056(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3524 13
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	.loc 1 3524 35
	movl	-4(%rbp), %eax
	cltq
	leaq	7(%rax), %rcx
	movq	-1064(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3524 10
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
.LBE1390:
	.loc 1 3443 31
	addl	$8, -4(%rbp)
.L972:
	.loc 1 3443 18 discriminator 1
	movl	-1068(%rbp), %eax
	subl	$1, %eax
	.loc 1 3443 22 discriminator 1
	andl	$-8, %eax
	.loc 1 3443 4 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L998
	.loc 1 3527 7
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 3528 18
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1056(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3528 10
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	.loc 1 3528 30
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3528 7
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3529 15
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	.loc 1 3529 9
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3529 7
	movq	-1048(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3529 15
	movl	%ecx, %edx
	.loc 1 3529 13
	movb	%dl, (%rax)
	.loc 1 3531 9
	addl	$1, -4(%rbp)
	.loc 1 3531 4
	jmp	.L999
.L1000:
	.loc 1 3532 10 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 3533 21 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1056(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 3533 13 discriminator 3
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	.loc 1 3533 31 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3533 10 discriminator 3
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3534 20 discriminator 3
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %edx
	.loc 1 3534 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 3534 10 discriminator 3
	leaq	-1(%rax), %rcx
	movq	-1048(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3534 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3535 20 discriminator 3
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	.loc 1 3535 12 discriminator 3
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	.loc 1 3535 10 discriminator 3
	movq	-1048(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3535 20 discriminator 3
	movl	%ecx, %edx
	.loc 1 3535 18 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3531 21 discriminator 3
	addl	$1, -4(%rbp)
.L999:
	.loc 1 3531 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-1068(%rbp), %eax
	jl	.L1000
	.loc 1 3537 17
	movl	-8(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	.loc 1 3537 9
	movl	-1068(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 3537 7
	leaq	-1(%rax), %rcx
	movq	-1048(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 3537 15
	movb	%dl, (%rax)
	.loc 1 3541 11
	movq	-1048(%rbp), %rax
.L971:
	.loc 1 3542 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	stbi__resample_row_hv_2_simd, .-stbi__resample_row_hv_2_simd
	.type	stbi__resample_row_generic, @function
stbi__resample_row_generic:
.LFB602:
	.loc 1 3546 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	.loc 1 3550 10
	movl	$0, -4(%rbp)
	.loc 1 3550 4
	jmp	.L1002
.L1005:
	.loc 1 3551 13
	movl	$0, -8(%rbp)
	.loc 1 3551 7
	jmp	.L1003
.L1004:
	.loc 1 3552 31 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 3552 15 discriminator 3
	movl	-4(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, %edx
	.loc 1 3552 18 discriminator 3
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 3552 13 discriminator 3
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 3552 31 discriminator 3
	movzbl	(%rcx), %eax
	.loc 1 3552 22 discriminator 3
	movb	%al, (%rdx)
	.loc 1 3551 25 discriminator 3
	addl	$1, -8(%rbp)
.L1003:
	.loc 1 3551 7 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L1004
	.loc 1 3550 21 discriminator 2
	addl	$1, -4(%rbp)
.L1002:
	.loc 1 3550 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1005
	.loc 1 3553 11
	movq	-24(%rbp), %rax
	.loc 1 3554 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	stbi__resample_row_generic, .-stbi__resample_row_generic
	.type	stbi__YCbCr_to_RGB_row, @function
stbi__YCbCr_to_RGB_row:
.LFB603:
	.loc 1 3560 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	.loc 1 3562 10
	movl	$0, -4(%rbp)
	.loc 1 3562 4
	jmp	.L1008
.L1015:
.LBB1443:
	.loc 1 3563 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3563 27
	sall	$20, %eax
	.loc 1 3563 11
	addl	$524288, %eax
	movl	%eax, -20(%rbp)
	.loc 1 3565 19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3565 11
	addl	$-128, %eax
	movl	%eax, -24(%rbp)
	.loc 1 3566 19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3566 11
	addl	$-128, %eax
	movl	%eax, -28(%rbp)
	.loc 1 3567 24
	movl	-24(%rbp), %eax
	imull	$1470208, %eax, %edx
	.loc 1 3567 9
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 3568 24
	movl	-24(%rbp), %eax
	imull	$-748800, %eax, %edx
	.loc 1 3568 19
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	.loc 1 3568 61
	movl	-28(%rbp), %eax
	imull	$-360960, %eax, %eax
	.loc 1 3568 92
	movw	$0, %ax
	.loc 1 3568 55
	addl	%edx, %eax
	.loc 1 3568 9
	movl	%eax, -12(%rbp)
	.loc 1 3569 61
	movl	-28(%rbp), %eax
	imull	$1858048, %eax, %edx
	.loc 1 3569 9
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 3570 9
	sarl	$20, -8(%rbp)
	.loc 1 3571 9
	sarl	$20, -12(%rbp)
	.loc 1 3572 9
	sarl	$20, -16(%rbp)
	.loc 1 3573 11
	movl	-8(%rbp), %eax
	.loc 1 3573 10
	cmpl	$255, %eax
	jbe	.L1009
	.loc 1 3573 36 discriminator 1
	cmpl	$0, -8(%rbp)
	jns	.L1010
	.loc 1 3573 46 discriminator 2
	movl	$0, -8(%rbp)
	jmp	.L1009
.L1010:
	.loc 1 3573 58 discriminator 3
	movl	$255, -8(%rbp)
.L1009:
	.loc 1 3574 11
	movl	-12(%rbp), %eax
	.loc 1 3574 10
	cmpl	$255, %eax
	jbe	.L1011
	.loc 1 3574 36 discriminator 1
	cmpl	$0, -12(%rbp)
	jns	.L1012
	.loc 1 3574 46 discriminator 2
	movl	$0, -12(%rbp)
	jmp	.L1011
.L1012:
	.loc 1 3574 58 discriminator 3
	movl	$255, -12(%rbp)
.L1011:
	.loc 1 3575 11
	movl	-16(%rbp), %eax
	.loc 1 3575 10
	cmpl	$255, %eax
	jbe	.L1013
	.loc 1 3575 36 discriminator 1
	cmpl	$0, -16(%rbp)
	jns	.L1014
	.loc 1 3575 46 discriminator 2
	movl	$0, -16(%rbp)
	jmp	.L1013
.L1014:
	.loc 1 3575 58 discriminator 3
	movl	$255, -16(%rbp)
.L1013:
	.loc 1 3576 16 discriminator 2
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 1 3576 14 discriminator 2
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3577 10 discriminator 2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3577 16 discriminator 2
	movl	-12(%rbp), %edx
	.loc 1 3577 14 discriminator 2
	movb	%dl, (%rax)
	.loc 1 3578 10 discriminator 2
	movq	-40(%rbp), %rax
	addq	$2, %rax
	.loc 1 3578 16 discriminator 2
	movl	-16(%rbp), %edx
	.loc 1 3578 14 discriminator 2
	movb	%dl, (%rax)
	.loc 1 3579 10 discriminator 2
	movq	-40(%rbp), %rax
	addq	$3, %rax
	.loc 1 3579 14 discriminator 2
	movb	$-1, (%rax)
	.loc 1 3580 11 discriminator 2
	movl	-72(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
.LBE1443:
	.loc 1 3562 25 discriminator 2
	addl	$1, -4(%rbp)
.L1008:
	.loc 1 3562 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L1015
	.loc 1 3582 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	stbi__YCbCr_to_RGB_row, .-stbi__YCbCr_to_RGB_row
	.type	stbi__YCbCr_to_RGB_simd, @function
stbi__YCbCr_to_RGB_simd:
.LFB604:
	.loc 1 3586 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1568, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -1672(%rbp)
	movq	%rsi, -1680(%rbp)
	movq	%rdx, -1688(%rbp)
	movq	%rcx, -1696(%rbp)
	movl	%r8d, -1700(%rbp)
	movl	%r9d, -1704(%rbp)
	.loc 1 3587 8
	movl	$0, -52(%rbp)
	.loc 1 3593 7
	cmpl	$4, -1704(%rbp)
	jne	.L1068
	movb	$-128, -713(%rbp)
.LBB1444:
.LBB1445:
.LBB1446:
	.loc 2 656 10
	movsbl	-713(%rbp), %edx
	movsbl	-713(%rbp), %ecx
	movsbl	-713(%rbp), %esi
	movsbl	-713(%rbp), %edi
	movsbl	-713(%rbp), %r8d
	movsbl	-713(%rbp), %r9d
	movsbl	-713(%rbp), %r10d
	movsbl	-713(%rbp), %r11d
	movsbl	-713(%rbp), %ebx
	movsbl	-713(%rbp), %r12d
	movsbl	-713(%rbp), %r13d
	movsbl	-713(%rbp), %r14d
	movsbl	-713(%rbp), %r15d
	movsbl	-713(%rbp), %eax
	movl	%eax, -1728(%rbp)
	movsbl	-713(%rbp), %eax
	movl	%eax, -1708(%rbp)
	movsbl	-713(%rbp), %eax
	movb	%al, -714(%rbp)
	movzbl	-1708(%rbp), %eax
	movb	%al, -715(%rbp)
	movzbl	-1728(%rbp), %eax
	movb	%al, -716(%rbp)
	movb	%r15b, -717(%rbp)
	movb	%r14b, -718(%rbp)
	movb	%r13b, -719(%rbp)
	movb	%r12b, -720(%rbp)
	movb	%bl, -721(%rbp)
	movb	%r11b, -722(%rbp)
	movb	%r10b, -723(%rbp)
	movb	%r9b, -724(%rbp)
	movb	%r8b, -725(%rbp)
	movb	%dil, -726(%rbp)
	movb	%sil, -727(%rbp)
	movb	%cl, -728(%rbp)
	movb	%dl, -729(%rbp)
.LBB1447:
.LBB1448:
	.loc 2 621 42
	movzbl	-722(%rbp), %edx
	movzbl	-723(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-724(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-725(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-726(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-727(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-728(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-729(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-714(%rbp), %eax
	movzbl	-715(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-716(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-717(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-718(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-719(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-720(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-721(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rdx, -1728(%rbp)
	movq	%rax, -1720(%rbp)
	movdqa	-1728(%rbp), %xmm0
.LBE1448:
.LBE1447:
	.loc 2 656 10
	nop
.LBE1446:
.LBE1445:
	.loc 1 3595 27
	movaps	%xmm0, -80(%rbp)
	movw	$5743, -696(%rbp)
.LBB1449:
.LBB1450:
	.loc 2 650 10
	movswl	-696(%rbp), %eax
	movswl	-696(%rbp), %edx
	movswl	-696(%rbp), %ecx
	movswl	-696(%rbp), %esi
	movswl	-696(%rbp), %edi
	movswl	-696(%rbp), %r8d
	movswl	-696(%rbp), %r9d
	movswl	-696(%rbp), %r10d
	movw	%r10w, -698(%rbp)
	movw	%r9w, -700(%rbp)
	movw	%r8w, -702(%rbp)
	movw	%di, -704(%rbp)
	movw	%si, -706(%rbp)
	movw	%cx, -708(%rbp)
	movw	%dx, -710(%rbp)
	movw	%ax, -712(%rbp)
.LBB1451:
.LBB1452:
	.loc 2 611 41
	movzwl	-712(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-710(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-708(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-706(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-704(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-702(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-700(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-698(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1452:
.LBE1451:
	.loc 2 650 10
	nop
.LBE1450:
.LBE1449:
	.loc 1 3596 27
	movaps	%xmm0, -96(%rbp)
	movw	$-2925, -678(%rbp)
.LBB1453:
.LBB1454:
	.loc 2 650 10
	movswl	-678(%rbp), %eax
	movswl	-678(%rbp), %edx
	movswl	-678(%rbp), %ecx
	movswl	-678(%rbp), %esi
	movswl	-678(%rbp), %edi
	movswl	-678(%rbp), %r8d
	movswl	-678(%rbp), %r9d
	movswl	-678(%rbp), %r10d
	movw	%r10w, -680(%rbp)
	movw	%r9w, -682(%rbp)
	movw	%r8w, -684(%rbp)
	movw	%di, -686(%rbp)
	movw	%si, -688(%rbp)
	movw	%cx, -690(%rbp)
	movw	%dx, -692(%rbp)
	movw	%ax, -694(%rbp)
.LBB1455:
.LBB1456:
	.loc 2 611 41
	movzwl	-694(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-692(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-690(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-688(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-686(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-684(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-682(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-680(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1456:
.LBE1455:
	.loc 2 650 10
	nop
.LBE1454:
.LBE1453:
	.loc 1 3597 27
	movaps	%xmm0, -112(%rbp)
	movw	$-1410, -660(%rbp)
.LBB1457:
.LBB1458:
	.loc 2 650 10
	movswl	-660(%rbp), %eax
	movswl	-660(%rbp), %edx
	movswl	-660(%rbp), %ecx
	movswl	-660(%rbp), %esi
	movswl	-660(%rbp), %edi
	movswl	-660(%rbp), %r8d
	movswl	-660(%rbp), %r9d
	movswl	-660(%rbp), %r10d
	movw	%r10w, -662(%rbp)
	movw	%r9w, -664(%rbp)
	movw	%r8w, -666(%rbp)
	movw	%di, -668(%rbp)
	movw	%si, -670(%rbp)
	movw	%cx, -672(%rbp)
	movw	%dx, -674(%rbp)
	movw	%ax, -676(%rbp)
.LBB1459:
.LBB1460:
	.loc 2 611 41
	movzwl	-676(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-674(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-672(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-670(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-668(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-666(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-664(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-662(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1460:
.LBE1459:
	.loc 2 650 10
	nop
.LBE1458:
.LBE1457:
	.loc 1 3598 27
	movaps	%xmm0, -128(%rbp)
	movw	$7258, -642(%rbp)
.LBB1461:
.LBB1462:
	.loc 2 650 10
	movswl	-642(%rbp), %eax
	movswl	-642(%rbp), %edx
	movswl	-642(%rbp), %ecx
	movswl	-642(%rbp), %esi
	movswl	-642(%rbp), %edi
	movswl	-642(%rbp), %r8d
	movswl	-642(%rbp), %r9d
	movswl	-642(%rbp), %r10d
	movw	%r10w, -644(%rbp)
	movw	%r9w, -646(%rbp)
	movw	%r8w, -648(%rbp)
	movw	%di, -650(%rbp)
	movw	%si, -652(%rbp)
	movw	%cx, -654(%rbp)
	movw	%dx, -656(%rbp)
	movw	%ax, -658(%rbp)
.LBB1463:
.LBB1464:
	.loc 2 611 41
	movzwl	-658(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-656(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-654(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-652(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-650(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-648(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-646(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-644(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1464:
.LBE1463:
	.loc 2 650 10
	nop
.LBE1462:
.LBE1461:
	.loc 1 3599 27
	movaps	%xmm0, -144(%rbp)
	movb	$-128, -623(%rbp)
.LBB1465:
.LBB1466:
	.loc 2 656 10
	movsbl	-623(%rbp), %edx
	movsbl	-623(%rbp), %ecx
	movsbl	-623(%rbp), %esi
	movsbl	-623(%rbp), %edi
	movsbl	-623(%rbp), %r8d
	movsbl	-623(%rbp), %r9d
	movsbl	-623(%rbp), %r10d
	movsbl	-623(%rbp), %r11d
	movsbl	-623(%rbp), %ebx
	movsbl	-623(%rbp), %r12d
	movsbl	-623(%rbp), %r13d
	movsbl	-623(%rbp), %r14d
	movsbl	-623(%rbp), %r15d
	movsbl	-623(%rbp), %eax
	movl	%eax, -1728(%rbp)
	movsbl	-623(%rbp), %eax
	movl	%eax, -1708(%rbp)
	movsbl	-623(%rbp), %eax
	movb	%al, -624(%rbp)
	movzbl	-1708(%rbp), %eax
	movb	%al, -625(%rbp)
	movzbl	-1728(%rbp), %eax
	movb	%al, -626(%rbp)
	movb	%r15b, -627(%rbp)
	movb	%r14b, -628(%rbp)
	movb	%r13b, -629(%rbp)
	movb	%r12b, -630(%rbp)
	movb	%bl, -631(%rbp)
	movb	%r11b, -632(%rbp)
	movb	%r10b, -633(%rbp)
	movb	%r9b, -634(%rbp)
	movb	%r8b, -635(%rbp)
	movb	%dil, -636(%rbp)
	movb	%sil, -637(%rbp)
	movb	%cl, -638(%rbp)
	movb	%dl, -639(%rbp)
.LBB1467:
.LBB1468:
	.loc 2 621 42
	movzbl	-632(%rbp), %edx
	movzbl	-633(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-634(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-635(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-636(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-637(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-638(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-639(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-624(%rbp), %eax
	movzbl	-625(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-626(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-627(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-628(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-629(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-630(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-631(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rdx, -1728(%rbp)
	movq	%rax, -1720(%rbp)
	movdqa	-1728(%rbp), %xmm0
.LBE1468:
.LBE1467:
	.loc 2 656 10
	nop
.LBE1466:
.LBE1465:
	.loc 1 3600 24
	movaps	%xmm0, -160(%rbp)
	movw	$255, -606(%rbp)
.LBB1469:
.LBB1470:
	.loc 2 650 10
	movswl	-606(%rbp), %eax
	movswl	-606(%rbp), %edx
	movswl	-606(%rbp), %ecx
	movswl	-606(%rbp), %esi
	movswl	-606(%rbp), %edi
	movswl	-606(%rbp), %r8d
	movswl	-606(%rbp), %r9d
	movswl	-606(%rbp), %r10d
	movw	%r10w, -608(%rbp)
	movw	%r9w, -610(%rbp)
	movw	%r8w, -612(%rbp)
	movw	%di, -614(%rbp)
	movw	%si, -616(%rbp)
	movw	%cx, -618(%rbp)
	movw	%dx, -620(%rbp)
	movw	%ax, -622(%rbp)
.LBB1471:
.LBB1472:
	.loc 2 611 41
	movzwl	-622(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-620(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-618(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-616(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-614(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-612(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-610(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-608(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklqdq	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
.LBE1472:
.LBE1471:
	.loc 2 650 10
	nop
.LBE1470:
.LBE1469:
	.loc 1 3601 20
	movaps	%xmm0, -176(%rbp)
	.loc 1 3603 7
	jmp	.L1032
.L1067:
.LBB1473:
	.loc 1 3605 28 discriminator 2
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 3605 58 discriminator 2
	movq	-1680(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1624(%rbp)
.LBB1474:
.LBB1475:
	.loc 2 709 10 discriminator 2
	movq	-1624(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1632(%rbp)
	movq	%rax, -1640(%rbp)
.LBB1476:
.LBB1477:
	.loc 2 598 10 discriminator 2
	movq	-1640(%rbp), %rax
	movq	-1632(%rbp), %rdx
	movq	%rdx, -1648(%rbp)
	movq	%rax, -1656(%rbp)
.LBB1478:
.LBB1479:
	.loc 2 592 24 discriminator 2
	movq	-1648(%rbp), %rdx
	movq	-1656(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm5
	punpcklqdq	%xmm5, %xmm0
.LBE1479:
.LBE1478:
	.loc 2 598 10 discriminator 2
	nop
.LBE1477:
.LBE1476:
	.loc 2 709 10 discriminator 2
	nop
.LBE1475:
.LBE1474:
	.loc 1 3605 28 discriminator 2
	movaps	%xmm0, -192(%rbp)
	.loc 1 3606 29 discriminator 2
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 3606 61 discriminator 2
	movq	-1696(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1584(%rbp)
.LBB1480:
.LBB1481:
	.loc 2 709 10 discriminator 2
	movq	-1584(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1592(%rbp)
	movq	%rax, -1600(%rbp)
.LBB1482:
.LBB1483:
	.loc 2 598 10 discriminator 2
	movq	-1600(%rbp), %rax
	movq	-1592(%rbp), %rdx
	movq	%rdx, -1608(%rbp)
	movq	%rax, -1616(%rbp)
.LBB1484:
.LBB1485:
	.loc 2 592 24 discriminator 2
	movq	-1608(%rbp), %rdx
	movq	-1616(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm6
	punpcklqdq	%xmm6, %xmm0
.LBE1485:
.LBE1484:
	.loc 2 598 10 discriminator 2
	nop
.LBE1483:
.LBE1482:
	.loc 2 709 10 discriminator 2
	nop
.LBE1481:
.LBE1480:
	.loc 1 3606 29 discriminator 2
	movaps	%xmm0, -208(%rbp)
	.loc 1 3607 29 discriminator 2
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 3607 61 discriminator 2
	movq	-1688(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1544(%rbp)
.LBB1486:
.LBB1487:
	.loc 2 709 10 discriminator 2
	movq	-1544(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1552(%rbp)
	movq	%rax, -1560(%rbp)
.LBB1488:
.LBB1489:
	.loc 2 598 10 discriminator 2
	movq	-1560(%rbp), %rax
	movq	-1552(%rbp), %rdx
	movq	%rdx, -1568(%rbp)
	movq	%rax, -1576(%rbp)
.LBB1490:
.LBB1491:
	.loc 2 592 24 discriminator 2
	movq	-1568(%rbp), %rdx
	movq	-1576(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm7
	punpcklqdq	%xmm7, %xmm0
.LBE1491:
.LBE1490:
	.loc 2 598 10 discriminator 2
	nop
.LBE1489:
.LBE1488:
	.loc 2 709 10 discriminator 2
	nop
.LBE1487:
.LBE1486:
	.loc 1 3607 29 discriminator 2
	movaps	%xmm0, -224(%rbp)
	movdqa	-208(%rbp), %xmm0
	movaps	%xmm0, -1520(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -1536(%rbp)
.LBB1492:
.LBB1493:
	.loc 2 1305 21 discriminator 2
	movdqa	-1520(%rbp), %xmm1
	.loc 2 1305 35 discriminator 2
	movdqa	-1536(%rbp), %xmm0
	.loc 2 1305 33 discriminator 2
	pxor	%xmm1, %xmm0
.LBE1493:
.LBE1492:
	.loc 1 3608 30 discriminator 2
	movaps	%xmm0, -240(%rbp)
	movdqa	-224(%rbp), %xmm0
	movaps	%xmm0, -1488(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm0, -1504(%rbp)
.LBB1494:
.LBB1495:
	.loc 2 1305 21 discriminator 2
	movdqa	-1488(%rbp), %xmm1
	.loc 2 1305 35 discriminator 2
	movdqa	-1504(%rbp), %xmm0
	.loc 2 1305 33 discriminator 2
	pxor	%xmm1, %xmm0
.LBE1495:
.LBE1494:
	.loc 1 3609 30 discriminator 2
	movaps	%xmm0, -256(%rbp)
	movdqa	-160(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-192(%rbp), %xmm0
	movaps	%xmm0, -1472(%rbp)
.LBB1496:
.LBB1497:
	.loc 2 1006 19 discriminator 2
	movdqa	-1472(%rbp), %xmm1
	movdqa	-1456(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1497:
.LBE1496:
	.loc 1 3612 24 discriminator 2
	movaps	%xmm0, -272(%rbp)
.LBB1498:
.LBB1499:
	.loc 2 772 24 discriminator 2
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1424(%rbp)
	movdqa	-240(%rbp), %xmm0
	movaps	%xmm0, -1440(%rbp)
.LBE1499:
.LBE1498:
.LBB1500:
.LBB1501:
	.loc 2 1006 19 discriminator 2
	movdqa	-1440(%rbp), %xmm1
	movdqa	-1424(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1501:
.LBE1500:
	.loc 1 3613 24 discriminator 2
	movaps	%xmm0, -288(%rbp)
.LBB1502:
.LBB1503:
	.loc 2 772 24 discriminator 2
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -1392(%rbp)
	movdqa	-256(%rbp), %xmm0
	movaps	%xmm0, -1408(%rbp)
.LBE1503:
.LBE1502:
.LBB1504:
.LBB1505:
	.loc 2 1006 19 discriminator 2
	movdqa	-1408(%rbp), %xmm1
	movdqa	-1392(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1505:
.LBE1504:
	.loc 1 3614 24 discriminator 2
	movaps	%xmm0, -304(%rbp)
	movdqa	-272(%rbp), %xmm0
	movaps	%xmm0, -1360(%rbp)
	movl	$4, -1364(%rbp)
.LBB1506:
.LBB1507:
	.loc 2 1221 19 discriminator 2
	movdqa	-1360(%rbp), %xmm1
	movd	-1364(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	.loc 2 1221 10 discriminator 2
	movdqa	%xmm1, %xmm0
.LBE1507:
.LBE1506:
	.loc 1 3617 24 discriminator 2
	movaps	%xmm0, -320(%rbp)
	movdqa	-96(%rbp), %xmm0
	movaps	%xmm0, -1328(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -1344(%rbp)
.LBB1508:
.LBB1509:
	.loc 2 1132 19 discriminator 2
	movdqa	-1344(%rbp), %xmm0
	movdqa	-1328(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
.LBE1509:
.LBE1508:
	.loc 1 3618 24 discriminator 2
	movaps	%xmm0, -336(%rbp)
	movdqa	-128(%rbp), %xmm0
	movaps	%xmm0, -1296(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -1312(%rbp)
.LBB1510:
.LBB1511:
	.loc 2 1132 19 discriminator 2
	movdqa	-1312(%rbp), %xmm0
	movdqa	-1296(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
.LBE1511:
.LBE1510:
	.loc 1 3619 24 discriminator 2
	movaps	%xmm0, -352(%rbp)
	movdqa	-304(%rbp), %xmm0
	movaps	%xmm0, -1264(%rbp)
	movdqa	-144(%rbp), %xmm0
	movaps	%xmm0, -1280(%rbp)
.LBB1512:
.LBB1513:
	.loc 2 1132 19 discriminator 2
	movdqa	-1280(%rbp), %xmm0
	movdqa	-1264(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
.LBE1513:
.LBE1512:
	.loc 1 3620 24 discriminator 2
	movaps	%xmm0, -368(%rbp)
	movdqa	-288(%rbp), %xmm0
	movaps	%xmm0, -1232(%rbp)
	movdqa	-112(%rbp), %xmm0
	movaps	%xmm0, -1248(%rbp)
.LBB1514:
.LBB1515:
	.loc 2 1132 19 discriminator 2
	movdqa	-1248(%rbp), %xmm0
	movdqa	-1232(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
.LBE1515:
.LBE1514:
	.loc 1 3621 24 discriminator 2
	movaps	%xmm0, -384(%rbp)
	movdqa	-336(%rbp), %xmm0
	movaps	%xmm0, -1200(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -1216(%rbp)
.LBB1516:
.LBB1517:
	.loc 2 1036 21 discriminator 2
	movdqa	-1200(%rbp), %xmm1
	.loc 2 1036 35 discriminator 2
	movdqa	-1216(%rbp), %xmm0
	.loc 2 1036 33 discriminator 2
	paddw	%xmm1, %xmm0
.LBE1517:
.LBE1516:
	.loc 1 3622 24 discriminator 2
	movaps	%xmm0, -400(%rbp)
	movdqa	-352(%rbp), %xmm0
	movaps	%xmm0, -1168(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -1184(%rbp)
.LBB1518:
.LBB1519:
	.loc 2 1036 21 discriminator 2
	movdqa	-1168(%rbp), %xmm1
	.loc 2 1036 35 discriminator 2
	movdqa	-1184(%rbp), %xmm0
	.loc 2 1036 33 discriminator 2
	paddw	%xmm1, %xmm0
.LBE1519:
.LBE1518:
	.loc 1 3623 24 discriminator 2
	movaps	%xmm0, -416(%rbp)
	movdqa	-320(%rbp), %xmm0
	movaps	%xmm0, -1136(%rbp)
	movdqa	-368(%rbp), %xmm0
	movaps	%xmm0, -1152(%rbp)
.LBB1520:
.LBB1521:
	.loc 2 1036 21 discriminator 2
	movdqa	-1136(%rbp), %xmm1
	.loc 2 1036 35 discriminator 2
	movdqa	-1152(%rbp), %xmm0
	.loc 2 1036 33 discriminator 2
	paddw	%xmm1, %xmm0
.LBE1521:
.LBE1520:
	.loc 1 3624 24 discriminator 2
	movaps	%xmm0, -432(%rbp)
	movdqa	-416(%rbp), %xmm0
	movaps	%xmm0, -1104(%rbp)
	movdqa	-384(%rbp), %xmm0
	movaps	%xmm0, -1120(%rbp)
.LBB1522:
.LBB1523:
	.loc 2 1036 21 discriminator 2
	movdqa	-1104(%rbp), %xmm1
	.loc 2 1036 35 discriminator 2
	movdqa	-1120(%rbp), %xmm0
	.loc 2 1036 33 discriminator 2
	paddw	%xmm1, %xmm0
.LBE1523:
.LBE1522:
	.loc 1 3625 24 discriminator 2
	movaps	%xmm0, -448(%rbp)
	movdqa	-400(%rbp), %xmm0
	movaps	%xmm0, -1072(%rbp)
	movl	$4, -1076(%rbp)
.LBB1524:
.LBB1525:
	.loc 2 1174 19 discriminator 2
	movdqa	-1072(%rbp), %xmm1
	movd	-1076(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	.loc 2 1174 10 discriminator 2
	movdqa	%xmm1, %xmm0
.LBE1525:
.LBE1524:
	.loc 1 3628 23 discriminator 2
	movaps	%xmm0, -464(%rbp)
	movdqa	-432(%rbp), %xmm0
	movaps	%xmm0, -1040(%rbp)
	movl	$4, -1044(%rbp)
.LBB1526:
.LBB1527:
	.loc 2 1174 19 discriminator 2
	movdqa	-1040(%rbp), %xmm1
	movd	-1044(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	.loc 2 1174 10 discriminator 2
	movdqa	%xmm1, %xmm0
.LBE1527:
.LBE1526:
	.loc 1 3629 23 discriminator 2
	movaps	%xmm0, -480(%rbp)
	movdqa	-448(%rbp), %xmm0
	movaps	%xmm0, -1008(%rbp)
	movl	$4, -1012(%rbp)
.LBB1528:
.LBB1529:
	.loc 2 1174 19 discriminator 2
	movdqa	-1008(%rbp), %xmm1
	movd	-1012(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	.loc 2 1174 10 discriminator 2
	movdqa	%xmm1, %xmm0
.LBE1529:
.LBE1528:
	.loc 1 3630 23 discriminator 2
	movaps	%xmm0, -496(%rbp)
	movdqa	-464(%rbp), %xmm0
	movaps	%xmm0, -976(%rbp)
	movdqa	-480(%rbp), %xmm0
	movaps	%xmm0, -992(%rbp)
.LBB1530:
.LBB1531:
	.loc 2 976 19 discriminator 2
	movdqa	-992(%rbp), %xmm1
	movdqa	-976(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1531:
.LBE1530:
	.loc 1 3633 24 discriminator 2
	movaps	%xmm0, -512(%rbp)
	movdqa	-496(%rbp), %xmm0
	movaps	%xmm0, -944(%rbp)
	movdqa	-176(%rbp), %xmm0
	movaps	%xmm0, -960(%rbp)
.LBB1532:
.LBB1533:
	.loc 2 976 19 discriminator 2
	movdqa	-960(%rbp), %xmm1
	movdqa	-944(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
.LBE1533:
.LBE1532:
	.loc 1 3634 24 discriminator 2
	movaps	%xmm0, -528(%rbp)
	movdqa	-512(%rbp), %xmm0
	movaps	%xmm0, -912(%rbp)
	movdqa	-528(%rbp), %xmm0
	movaps	%xmm0, -928(%rbp)
.LBB1534:
.LBB1535:
	.loc 2 1006 19 discriminator 2
	movdqa	-928(%rbp), %xmm1
	movdqa	-912(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
.LBE1535:
.LBE1534:
	.loc 1 3637 23 discriminator 2
	movaps	%xmm0, -544(%rbp)
	movdqa	-512(%rbp), %xmm0
	movaps	%xmm0, -880(%rbp)
	movdqa	-528(%rbp), %xmm0
	movaps	%xmm0, -896(%rbp)
.LBB1536:
.LBB1537:
	.loc 2 982 19 discriminator 2
	movdqa	-896(%rbp), %xmm1
	movdqa	-880(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
.LBE1537:
.LBE1536:
	.loc 1 3638 23 discriminator 2
	movaps	%xmm0, -560(%rbp)
	movdqa	-544(%rbp), %xmm0
	movaps	%xmm0, -848(%rbp)
	movdqa	-560(%rbp), %xmm0
	movaps	%xmm0, -864(%rbp)
.LBB1538:
.LBB1539:
	.loc 2 1012 19 discriminator 2
	movdqa	-864(%rbp), %xmm1
	movdqa	-848(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
.LBE1539:
.LBE1538:
	.loc 1 3639 23 discriminator 2
	movaps	%xmm0, -576(%rbp)
	movdqa	-544(%rbp), %xmm0
	movaps	%xmm0, -816(%rbp)
	movdqa	-560(%rbp), %xmm0
	movaps	%xmm0, -832(%rbp)
.LBB1540:
.LBB1541:
	.loc 2 988 19 discriminator 2
	movdqa	-832(%rbp), %xmm1
	movdqa	-816(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
.LBE1541:
.LBE1540:
	.loc 1 3640 23 discriminator 2
	movaps	%xmm0, -592(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -776(%rbp)
	movdqa	-576(%rbp), %xmm0
	movaps	%xmm0, -800(%rbp)
.LBB1542:
.LBB1543:
	.loc 2 727 8 discriminator 2
	movdqa	-800(%rbp), %xmm0
	movq	-776(%rbp), %rax
	movups	%xmm0, (%rax)
	.loc 2 728 1 discriminator 2
	nop
.LBE1543:
.LBE1542:
	.loc 1 3644 44 discriminator 2
	movq	-1672(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -744(%rbp)
	movdqa	-592(%rbp), %xmm0
	movaps	%xmm0, -768(%rbp)
.LBB1544:
.LBB1545:
	.loc 2 727 8 discriminator 2
	movdqa	-768(%rbp), %xmm0
	movq	-744(%rbp), %rax
	movups	%xmm0, (%rax)
	.loc 2 728 1 discriminator 2
	nop
.LBE1545:
.LBE1544:
	.loc 1 3645 14 discriminator 2
	addq	$32, -1672(%rbp)
.LBE1473:
	.loc 1 3603 29 discriminator 2
	addl	$8, -52(%rbp)
.L1032:
	.loc 1 3603 15 discriminator 1
	movl	-52(%rbp), %eax
	addl	$7, %eax
	.loc 1 3603 7 discriminator 1
	cmpl	%eax, -1700(%rbp)
	jg	.L1067
.LBE1444:
	.loc 1 3696 4
	jmp	.L1068
.L1075:
.LBB1546:
	.loc 1 3697 23
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1680(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3697 27
	sall	$20, %eax
	.loc 1 3697 11
	addl	$524288, %eax
	movl	%eax, -596(%rbp)
	.loc 1 3699 19
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1696(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3699 11
	addl	$-128, %eax
	movl	%eax, -600(%rbp)
	.loc 1 3700 19
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1688(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 3700 11
	addl	$-128, %eax
	movl	%eax, -604(%rbp)
	.loc 1 3701 23
	movl	-600(%rbp), %eax
	imull	$1470208, %eax, %edx
	.loc 1 3701 9
	movl	-596(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
	.loc 1 3702 23
	movl	-600(%rbp), %eax
	imull	$-748800, %eax, %edx
	.loc 1 3702 19
	movl	-596(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	.loc 1 3702 59
	movl	-604(%rbp), %eax
	imull	$-360960, %eax, %eax
	.loc 1 3702 90
	movw	$0, %ax
	.loc 1 3702 53
	addl	%edx, %eax
	.loc 1 3702 9
	movl	%eax, -60(%rbp)
	.loc 1 3703 59
	movl	-604(%rbp), %eax
	imull	$1858048, %eax, %edx
	.loc 1 3703 9
	movl	-596(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	.loc 1 3704 9
	sarl	$20, -56(%rbp)
	.loc 1 3705 9
	sarl	$20, -60(%rbp)
	.loc 1 3706 9
	sarl	$20, -64(%rbp)
	.loc 1 3707 11
	movl	-56(%rbp), %eax
	.loc 1 3707 10
	cmpl	$255, %eax
	jbe	.L1069
	.loc 1 3707 36 discriminator 1
	cmpl	$0, -56(%rbp)
	jns	.L1070
	.loc 1 3707 46 discriminator 2
	movl	$0, -56(%rbp)
	jmp	.L1069
.L1070:
	.loc 1 3707 58 discriminator 3
	movl	$255, -56(%rbp)
.L1069:
	.loc 1 3708 11
	movl	-60(%rbp), %eax
	.loc 1 3708 10
	cmpl	$255, %eax
	jbe	.L1071
	.loc 1 3708 36 discriminator 1
	cmpl	$0, -60(%rbp)
	jns	.L1072
	.loc 1 3708 46 discriminator 2
	movl	$0, -60(%rbp)
	jmp	.L1071
.L1072:
	.loc 1 3708 58 discriminator 3
	movl	$255, -60(%rbp)
.L1071:
	.loc 1 3709 11
	movl	-64(%rbp), %eax
	.loc 1 3709 10
	cmpl	$255, %eax
	jbe	.L1073
	.loc 1 3709 36 discriminator 1
	cmpl	$0, -64(%rbp)
	jns	.L1074
	.loc 1 3709 46 discriminator 2
	movl	$0, -64(%rbp)
	jmp	.L1073
.L1074:
	.loc 1 3709 58 discriminator 3
	movl	$255, -64(%rbp)
.L1073:
	.loc 1 3710 16
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	.loc 1 3710 14
	movq	-1672(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3711 10
	movq	-1672(%rbp), %rax
	addq	$1, %rax
	.loc 1 3711 16
	movl	-60(%rbp), %edx
	.loc 1 3711 14
	movb	%dl, (%rax)
	.loc 1 3712 10
	movq	-1672(%rbp), %rax
	addq	$2, %rax
	.loc 1 3712 16
	movl	-64(%rbp), %edx
	.loc 1 3712 14
	movb	%dl, (%rax)
	.loc 1 3713 10
	movq	-1672(%rbp), %rax
	addq	$3, %rax
	.loc 1 3713 14
	movb	$-1, (%rax)
	.loc 1 3714 11
	movl	-1704(%rbp), %eax
	cltq
	addq	%rax, -1672(%rbp)
.LBE1546:
	.loc 1 3696 22
	addl	$1, -52(%rbp)
.L1068:
	.loc 1 3696 4 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-1700(%rbp), %eax
	jl	.L1075
	.loc 1 3716 1
	nop
	nop
	addq	$1568, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	stbi__YCbCr_to_RGB_simd, .-stbi__YCbCr_to_RGB_simd
	.type	stbi__setup_jpeg, @function
stbi__setup_jpeg:
.LFB605:
	.loc 1 3721 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 3722 25
	movq	-8(%rbp), %rax
	leaq	stbi__idct_block(%rip), %rdx
	movq	%rdx, 18544(%rax)
	.loc 1 3723 27
	movq	-8(%rbp), %rax
	leaq	stbi__YCbCr_to_RGB_row(%rip), %rdx
	movq	%rdx, 18552(%rax)
	.loc 1 3724 32
	movq	-8(%rbp), %rax
	leaq	stbi__resample_row_hv_2(%rip), %rdx
	movq	%rdx, 18560(%rax)
	.loc 1 3727 8
	call	stbi__sse2_available
	.loc 1 3727 7
	testl	%eax, %eax
	je	.L1078
	.loc 1 3728 28
	movq	-8(%rbp), %rax
	leaq	stbi__idct_simd(%rip), %rdx
	movq	%rdx, 18544(%rax)
	.loc 1 3729 30
	movq	-8(%rbp), %rax
	leaq	stbi__YCbCr_to_RGB_simd(%rip), %rdx
	movq	%rdx, 18552(%rax)
	.loc 1 3730 35
	movq	-8(%rbp), %rax
	leaq	stbi__resample_row_hv_2_simd(%rip), %rdx
	movq	%rdx, 18560(%rax)
.L1078:
	.loc 1 3739 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	stbi__setup_jpeg, .-stbi__setup_jpeg
	.type	stbi__cleanup_jpeg, @function
stbi__cleanup_jpeg:
.LFB606:
	.loc 1 3743 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 3744 35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3744 4
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	.loc 1 3745 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	stbi__cleanup_jpeg, .-stbi__cleanup_jpeg
	.type	stbi__blinn_8x8, @function
stbi__blinn_8x8:
.LFB607:
	.loc 1 3759 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	.loc 1 3760 22
	movzbl	-20(%rbp), %edx
	movzbl	-24(%rbp), %eax
	imull	%edx, %eax
	.loc 1 3760 25
	subl	$-128, %eax
	.loc 1 3760 17
	movl	%eax, -4(%rbp)
	.loc 1 3761 30
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.loc 1 3761 25
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 1 3761 36
	shrl	$8, %eax
	.loc 1 3762 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	stbi__blinn_8x8, .-stbi__blinn_8x8
	.section	.rodata
.LC42:
	.string	"bad req_comp"
	.text
	.type	load_jpeg_image, @function
load_jpeg_image:
.LFB608:
	.loc 1 3765 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movl	%r8d, -372(%rbp)
	.loc 1 3767 5
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3767 16
	movl	$0, 8(%rax)
	.loc 1 3770 7
	cmpl	$0, -372(%rbp)
	js	.L1083
	.loc 1 3770 21 discriminator 2
	cmpl	$4, -372(%rbp)
	jle	.L1084
.L1083:
	.loc 1 3770 45 discriminator 3
	leaq	.LC42(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1085
.L1084:
	.loc 1 3773 9
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__decode_jpeg_image
	.loc 1 3773 7
	testl	%eax, %eax
	jne	.L1086
	.loc 1 3773 39 discriminator 1
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	.loc 1 3773 69 discriminator 1
	movl	$0, %eax
	jmp	.L1085
.L1086:
	.loc 1 3776 28
	cmpl	$0, -372(%rbp)
	jne	.L1087
	.loc 1 3776 31 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3776 34 discriminator 1
	movl	8(%rax), %eax
	.loc 1 3776 51 discriminator 1
	cmpl	$2, %eax
	jle	.L1088
	.loc 1 3776 51 is_stmt 0 discriminator 3
	movl	$3, %eax
	jmp	.L1090
.L1088:
	.loc 1 3776 51 discriminator 4
	movl	$1, %eax
	jmp	.L1090
.L1087:
	.loc 1 3776 28 is_stmt 1 discriminator 2
	movl	-372(%rbp), %eax
.L1090:
	.loc 1 3776 6 discriminator 8
	movl	%eax, -44(%rbp)
	.loc 1 3778 14 discriminator 8
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3778 17 discriminator 8
	movl	8(%rax), %eax
	.loc 1 3778 30 discriminator 8
	cmpl	$3, %eax
	jne	.L1091
	.loc 1 3778 35 discriminator 1
	movq	-344(%rbp), %rax
	movl	18512(%rax), %eax
	.loc 1 3778 30 discriminator 1
	cmpl	$3, %eax
	je	.L1092
	.loc 1 3778 51 discriminator 4
	movq	-344(%rbp), %rax
	movl	18508(%rax), %eax
	.loc 1 3778 46 discriminator 4
	testl	%eax, %eax
	jne	.L1091
	.loc 1 3778 85 discriminator 5
	movq	-344(%rbp), %rax
	movl	18504(%rax), %eax
	.loc 1 3778 80 discriminator 5
	testl	%eax, %eax
	jne	.L1091
.L1092:
	.loc 1 3778 30 discriminator 7
	movl	$1, %eax
	jmp	.L1093
.L1091:
	.loc 1 3778 30 is_stmt 0 discriminator 8
	movl	$0, %eax
.L1093:
	.loc 1 3778 11 is_stmt 1 discriminator 10
	movl	%eax, -48(%rbp)
	.loc 1 3780 9 discriminator 10
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3780 12 discriminator 10
	movl	8(%rax), %eax
	.loc 1 3780 7 discriminator 10
	cmpl	$3, %eax
	jne	.L1094
	.loc 1 3780 25 discriminator 1
	cmpl	$2, -44(%rbp)
	jg	.L1094
	.loc 1 3780 34 discriminator 2
	cmpl	$0, -48(%rbp)
	jne	.L1094
	.loc 1 3781 16
	movl	$1, -20(%rbp)
	jmp	.L1095
.L1094:
	.loc 1 3783 19
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3783 16
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
.L1095:
.LBB1547:
	.loc 1 3790 16
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	.loc 1 3794 13
	movl	$0, -24(%rbp)
	.loc 1 3794 7
	jmp	.L1096
.L1104:
.LBB1548:
	.loc 1 3795 26
	leaq	-304(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	.loc 1 3799 61
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3799 64
	movl	(%rax), %eax
	.loc 1 3799 72
	addl	$3, %eax
	.loc 1 3799 47
	movl	%eax, %eax
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, %rdx
	.loc 1 3799 33
	movq	-344(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18152, %rax
	movq	%rdx, (%rax)
	.loc 1 3800 29
	movq	-344(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	.loc 1 3800 13
	testq	%rax, %rax
	jne	.L1097
	.loc 1 3800 41 discriminator 1
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	.loc 1 3800 71 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1085
.L1097:
	.loc 1 3802 24
	movq	-344(%rbp), %rax
	movl	18056(%rax), %edx
	.loc 1 3802 52
	movq	-344(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %ecx
	.loc 1 3802 36
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	.loc 1 3802 21
	movq	-112(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 1 3803 24
	movq	-344(%rbp), %rax
	movl	18060(%rax), %edx
	.loc 1 3803 52
	movq	-344(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %ecx
	.loc 1 3803 36
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	.loc 1 3803 21
	movq	-112(%rbp), %rax
	movl	%edx, 28(%rax)
	.loc 1 3804 24
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3804 29
	sarl	%eax
	movl	%eax, %edx
	.loc 1 3804 21
	movq	-112(%rbp), %rax
	movl	%edx, 36(%rax)
	.loc 1 3805 25
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3805 28
	movl	(%rax), %edx
	.loc 1 3805 39
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 3805 36
	addl	%edx, %eax
	.loc 1 3805 43
	leal	-1(%rax), %edx
	.loc 1 3805 50
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %ecx
	.loc 1 3805 47
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	.loc 1 3805 21
	movq	-112(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 1 3806 21
	movq	-112(%rbp), %rax
	movl	$0, 40(%rax)
	.loc 1 3807 48
	movq	-344(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	(%rax), %rdx
	.loc 1 3807 32
	movq	-112(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 3807 24
	movq	-112(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 3807 21
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 3809 20
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 3809 18
	cmpl	$1, %eax
	jne	.L1099
	.loc 1 3809 34 discriminator 1
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3809 30 discriminator 1
	cmpl	$1, %eax
	jne	.L1099
	.loc 1 3809 57 discriminator 2
	movq	-112(%rbp), %rax
	leaq	resample_row_1(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1100
.L1099:
	.loc 1 3810 20
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 3810 18
	cmpl	$1, %eax
	jne	.L1101
	.loc 1 3810 34 discriminator 1
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3810 30 discriminator 1
	cmpl	$2, %eax
	jne	.L1101
	.loc 1 3810 57 discriminator 2
	movq	-112(%rbp), %rax
	leaq	stbi__resample_row_v_2(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1100
.L1101:
	.loc 1 3811 20
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 3811 18
	cmpl	$2, %eax
	jne	.L1102
	.loc 1 3811 34 discriminator 1
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3811 30 discriminator 1
	cmpl	$1, %eax
	jne	.L1102
	.loc 1 3811 57 discriminator 2
	movq	-112(%rbp), %rax
	leaq	stbi__resample_row_h_2(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1100
.L1102:
	.loc 1 3812 20
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	.loc 1 3812 18
	cmpl	$2, %eax
	jne	.L1103
	.loc 1 3812 34 discriminator 1
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3812 30 discriminator 1
	cmpl	$2, %eax
	jne	.L1103
	.loc 1 3812 60 discriminator 2
	movq	-344(%rbp), %rax
	movq	18560(%rax), %rdx
	.loc 1 3812 57 discriminator 2
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L1100
.L1103:
	.loc 1 3813 57
	movq	-112(%rbp), %rax
	leaq	stbi__resample_row_generic(%rip), %rdx
	movq	%rdx, (%rax)
.L1100:
.LBE1548:
	.loc 1 3794 31 discriminator 2
	addl	$1, -24(%rbp)
.L1096:
	.loc 1 3794 7 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1104
	.loc 1 3817 63
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3817 66
	movl	4(%rax), %eax
	.loc 1 3817 28
	movl	%eax, %edx
	.loc 1 3817 50
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3817 53
	movl	(%rax), %eax
	.loc 1 3817 28
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -56(%rbp)
	.loc 1 3818 10
	cmpq	$0, -56(%rbp)
	jne	.L1105
	.loc 1 3818 22 discriminator 1
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	.loc 1 3818 52 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1085
.L1105:
	.loc 1 3821 13
	movl	$0, -32(%rbp)
	.loc 1 3821 7
	jmp	.L1106
.L1146:
.LBB1549:
	.loc 1 3822 39
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3822 42
	movl	(%rax), %edx
	.loc 1 3822 36
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	.loc 1 3822 50
	imull	-32(%rbp), %eax
	movl	%eax, %edx
	.loc 1 3822 19
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 3823 16
	movl	$0, -24(%rbp)
	.loc 1 3823 10
	jmp	.L1107
.L1113:
.LBB1550:
	.loc 1 3824 29
	leaq	-304(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	.loc 1 3825 26
	movq	-96(%rbp), %rax
	movl	36(%rax), %edx
	.loc 1 3825 39
	movq	-96(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3825 44
	sarl	%eax
	.loc 1 3825 34
	cmpl	%eax, %edx
	setge	%al
	.loc 1 3825 17
	movzbl	%al, %eax
	movl	%eax, -100(%rbp)
	.loc 1 3826 27
	movq	-96(%rbp), %rax
	movq	(%rax), %r9
	.loc 1 3826 26
	movq	-96(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-96(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	$0, -100(%rbp)
	je	.L1108
	.loc 1 3826 26 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L1109
.L1108:
	.loc 1 3826 26 discriminator 2
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
.L1109:
	.loc 1 3826 26 discriminator 4
	cmpl	$0, -100(%rbp)
	je	.L1110
	.loc 1 3826 26 discriminator 5
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	jmp	.L1111
.L1110:
	.loc 1 3826 26 discriminator 6
	movq	-96(%rbp), %rax
	movq	8(%rax), %rsi
.L1111:
	.loc 1 3826 26 discriminator 8
	movq	-344(%rbp), %r10
	movl	-24(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rdi, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	salq	$5, %rax
	addq	%r10, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%r9
.LVL7:
	.loc 1 3826 24 is_stmt 1 discriminator 8
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -336(%rbp,%rdx,8)
	.loc 1 3830 20 discriminator 8
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	.loc 1 3830 17 discriminator 8
	leal	1(%rax), %edx
	.loc 1 3830 16 discriminator 8
	movq	-96(%rbp), %rax
	movl	%edx, 36(%rax)
	.loc 1 3830 20 discriminator 8
	movq	-96(%rbp), %rax
	movl	36(%rax), %edx
	.loc 1 3830 32 discriminator 8
	movq	-96(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 3830 16 discriminator 8
	cmpl	%eax, %edx
	jl	.L1112
	.loc 1 3831 25
	movq	-96(%rbp), %rax
	movl	$0, 36(%rax)
	.loc 1 3832 28
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 3832 25
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 3833 23
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	.loc 1 3833 20
	leal	1(%rax), %edx
	.loc 1 3833 19
	movq	-96(%rbp), %rax
	movl	%edx, 40(%rax)
	.loc 1 3833 23
	movq	-96(%rbp), %rax
	movl	40(%rax), %ecx
	.loc 1 3833 46
	movq	-344(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	.loc 1 3833 19
	cmpl	%eax, %ecx
	jge	.L1112
	.loc 1 3834 28
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 3834 45
	movq	-344(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 3834 28
	leaq	(%rcx,%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 16(%rax)
.L1112:
.LBE1550:
	.loc 1 3823 34 discriminator 2
	addl	$1, -24(%rbp)
.L1107:
	.loc 1 3823 10 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L1113
	.loc 1 3837 13
	cmpl	$2, -44(%rbp)
	jle	.L1114
.LBB1551:
	.loc 1 3838 22
	movq	-336(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 1 3839 18
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3839 21
	movl	8(%rax), %eax
	.loc 1 3839 16
	cmpl	$3, %eax
	jne	.L1115
	.loc 1 3840 19
	cmpl	$0, -48(%rbp)
	je	.L1116
	.loc 1 3841 25
	movl	$0, -28(%rbp)
	.loc 1 3841 19
	jmp	.L1117
.L1118:
	.loc 1 3842 32 discriminator 3
	movl	-28(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 3842 29 discriminator 3
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3843 38 discriminator 3
	movq	-328(%rbp), %rdx
	.loc 1 3843 41 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	.loc 1 3843 25 discriminator 3
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	.loc 1 3843 41 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 3843 29 discriminator 3
	movb	%al, (%rdx)
	.loc 1 3844 38 discriminator 3
	movq	-320(%rbp), %rdx
	.loc 1 3844 41 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	.loc 1 3844 25 discriminator 3
	movq	-40(%rbp), %rdx
	addq	$2, %rdx
	.loc 1 3844 41 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 3844 29 discriminator 3
	movb	%al, (%rdx)
	.loc 1 3845 25 discriminator 3
	movq	-40(%rbp), %rax
	addq	$3, %rax
	.loc 1 3845 29 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3846 26 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	.loc 1 3841 46 discriminator 3
	addl	$1, -28(%rbp)
.L1117:
	.loc 1 3841 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3841 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3841 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1118
	jmp	.L1119
.L1116:
	.loc 1 3849 20
	movq	-344(%rbp), %rax
	movq	18552(%rax), %r10
	.loc 1 3849 75
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3849 78
	movl	(%rax), %eax
	.loc 1 3849 19
	movl	%eax, %r8d
	.loc 1 3849 69
	movq	-320(%rbp), %rcx
	.loc 1 3849 57
	movq	-328(%rbp), %rdx
	.loc 1 3849 19
	movl	-44(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
.LVL8:
	jmp	.L1119
.L1115:
	.loc 1 3851 25
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3851 28
	movl	8(%rax), %eax
	.loc 1 3851 23
	cmpl	$4, %eax
	jne	.L1120
	.loc 1 3852 21
	movq	-344(%rbp), %rax
	movl	18508(%rax), %eax
	.loc 1 3852 19
	testl	%eax, %eax
	jne	.L1121
	.loc 1 3853 25
	movl	$0, -28(%rbp)
	.loc 1 3853 19
	jmp	.L1122
.L1123:
.LBB1552:
	.loc 1 3854 41 discriminator 3
	movq	-312(%rbp), %rdx
	.loc 1 3854 44 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	.loc 1 3854 30 discriminator 3
	movzbl	(%rax), %eax
	movb	%al, -82(%rbp)
	.loc 1 3855 31 discriminator 3
	movzbl	-82(%rbp), %edx
	.loc 1 3855 54 discriminator 3
	movq	-336(%rbp), %rcx
	.loc 1 3855 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3855 31 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3855 29 discriminator 3
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 3856 31 discriminator 3
	movzbl	-82(%rbp), %edx
	.loc 1 3856 54 discriminator 3
	movq	-328(%rbp), %rcx
	.loc 1 3856 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3856 31 discriminator 3
	movzbl	%al, %eax
	.loc 1 3856 25 discriminator 3
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rbx
	.loc 1 3856 31 discriminator 3
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3856 29 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3857 31 discriminator 3
	movzbl	-82(%rbp), %edx
	.loc 1 3857 54 discriminator 3
	movq	-320(%rbp), %rcx
	.loc 1 3857 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3857 31 discriminator 3
	movzbl	%al, %eax
	.loc 1 3857 25 discriminator 3
	movq	-40(%rbp), %rcx
	leaq	2(%rcx), %rbx
	.loc 1 3857 31 discriminator 3
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3857 29 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3858 25 discriminator 3
	movq	-40(%rbp), %rax
	addq	$3, %rax
	.loc 1 3858 29 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3859 26 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
.LBE1552:
	.loc 1 3853 46 discriminator 3
	addl	$1, -28(%rbp)
.L1122:
	.loc 1 3853 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3853 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3853 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1123
	jmp	.L1119
.L1121:
	.loc 1 3861 28
	movq	-344(%rbp), %rax
	movl	18508(%rax), %eax
	.loc 1 3861 26
	cmpl	$2, %eax
	jne	.L1124
	.loc 1 3862 20
	movq	-344(%rbp), %rax
	movq	18552(%rax), %r10
	.loc 1 3862 75
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3862 78
	movl	(%rax), %eax
	.loc 1 3862 19
	movl	%eax, %r8d
	.loc 1 3862 69
	movq	-320(%rbp), %rcx
	.loc 1 3862 57
	movq	-328(%rbp), %rdx
	.loc 1 3862 19
	movl	-44(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
.LVL9:
	.loc 1 3863 25
	movl	$0, -28(%rbp)
	.loc 1 3863 19
	jmp	.L1125
.L1126:
.LBB1553:
	.loc 1 3864 41 discriminator 3
	movq	-312(%rbp), %rdx
	.loc 1 3864 44 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	.loc 1 3864 30 discriminator 3
	movzbl	(%rax), %eax
	movb	%al, -81(%rbp)
	.loc 1 3865 31 discriminator 3
	movzbl	-81(%rbp), %edx
	.loc 1 3865 56 discriminator 3
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 3865 51 discriminator 3
	notl	%eax
	.loc 1 3865 31 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3865 29 discriminator 3
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 3866 31 discriminator 3
	movzbl	-81(%rbp), %edx
	.loc 1 3866 56 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 3866 51 discriminator 3
	notl	%eax
	.loc 1 3866 31 discriminator 3
	movzbl	%al, %eax
	.loc 1 3866 25 discriminator 3
	movq	-40(%rbp), %rcx
	leaq	1(%rcx), %rbx
	.loc 1 3866 31 discriminator 3
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3866 29 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3867 31 discriminator 3
	movzbl	-81(%rbp), %edx
	.loc 1 3867 56 discriminator 3
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 3867 51 discriminator 3
	notl	%eax
	.loc 1 3867 31 discriminator 3
	movzbl	%al, %eax
	.loc 1 3867 25 discriminator 3
	movq	-40(%rbp), %rcx
	leaq	2(%rcx), %rbx
	.loc 1 3867 31 discriminator 3
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3867 29 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3868 26 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
.LBE1553:
	.loc 1 3863 46 discriminator 3
	addl	$1, -28(%rbp)
.L1125:
	.loc 1 3863 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3863 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3863 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1126
	jmp	.L1119
.L1124:
	.loc 1 3871 20
	movq	-344(%rbp), %rax
	movq	18552(%rax), %r10
	.loc 1 3871 75
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3871 78
	movl	(%rax), %eax
	.loc 1 3871 19
	movl	%eax, %r8d
	.loc 1 3871 69
	movq	-320(%rbp), %rcx
	.loc 1 3871 57
	movq	-328(%rbp), %rdx
	.loc 1 3871 19
	movl	-44(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
.LVL10:
	jmp	.L1119
.L1120:
	.loc 1 3874 22
	movl	$0, -28(%rbp)
	.loc 1 3874 16
	jmp	.L1127
.L1128:
	.loc 1 3875 47 discriminator 3
	movl	-28(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3875 40 discriminator 3
	movq	-40(%rbp), %rdx
	addq	$2, %rdx
	.loc 1 3875 47 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 3875 44 discriminator 3
	movb	%al, (%rdx)
	.loc 1 3875 31 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3875 40 discriminator 3
	movzbl	(%rdx), %edx
	.loc 1 3875 35 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3875 31 discriminator 3
	movzbl	(%rax), %edx
	.loc 1 3875 26 discriminator 3
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 3876 22 discriminator 3
	movq	-40(%rbp), %rax
	addq	$3, %rax
	.loc 1 3876 26 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3877 23 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	.loc 1 3874 43 discriminator 3
	addl	$1, -28(%rbp)
.L1127:
	.loc 1 3874 31 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3874 34 discriminator 1
	movl	(%rax), %eax
	.loc 1 3874 16 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1128
	jmp	.L1119
.L1114:
.LBE1551:
	.loc 1 3880 16
	cmpl	$0, -48(%rbp)
	je	.L1129
	.loc 1 3881 19
	cmpl	$1, -44(%rbp)
	jne	.L1130
	.loc 1 3882 25
	movl	$0, -28(%rbp)
	.loc 1 3882 19
	jmp	.L1131
.L1132:
	.loc 1 3883 84 discriminator 3
	movq	-320(%rbp), %rdx
	.loc 1 3883 87 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 3883 31 discriminator 3
	movzbl	%al, %edx
	.loc 1 3883 69 discriminator 3
	movq	-328(%rbp), %rcx
	.loc 1 3883 72 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3883 31 discriminator 3
	movzbl	%al, %ecx
	.loc 1 3883 54 discriminator 3
	movq	-336(%rbp), %rsi
	.loc 1 3883 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	.loc 1 3883 31 discriminator 3
	movzbl	%al, %eax
	.loc 1 3883 26 discriminator 3
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rsi
	movq	%rsi, -40(%rbp)
	.loc 1 3883 31 discriminator 3
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 3883 29 discriminator 3
	movb	%al, (%rbx)
	.loc 1 3882 46 discriminator 3
	addl	$1, -28(%rbp)
.L1131:
	.loc 1 3882 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3882 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3882 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1132
	jmp	.L1119
.L1130:
	.loc 1 3885 25
	movl	$0, -28(%rbp)
	.loc 1 3885 19
	jmp	.L1133
.L1134:
	.loc 1 3886 84 discriminator 3
	movq	-320(%rbp), %rdx
	.loc 1 3886 87 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 3886 31 discriminator 3
	movzbl	%al, %edx
	.loc 1 3886 69 discriminator 3
	movq	-328(%rbp), %rcx
	.loc 1 3886 72 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3886 31 discriminator 3
	movzbl	%al, %ecx
	.loc 1 3886 54 discriminator 3
	movq	-336(%rbp), %rsi
	.loc 1 3886 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	.loc 1 3886 31 discriminator 3
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 3886 29 discriminator 3
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 3887 25 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3887 29 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3885 46 discriminator 3
	addl	$1, -28(%rbp)
	.loc 1 3885 55 discriminator 3
	addq	$2, -40(%rbp)
.L1133:
	.loc 1 3885 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3885 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3885 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1134
	jmp	.L1119
.L1129:
	.loc 1 3890 25
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3890 28
	movl	8(%rax), %eax
	.loc 1 3890 23
	cmpl	$4, %eax
	jne	.L1135
	.loc 1 3890 45 discriminator 1
	movq	-344(%rbp), %rax
	movl	18508(%rax), %eax
	.loc 1 3890 41 discriminator 1
	testl	%eax, %eax
	jne	.L1135
	.loc 1 3891 22
	movl	$0, -28(%rbp)
	.loc 1 3891 16
	jmp	.L1136
.L1137:
.LBB1554:
	.loc 1 3892 38 discriminator 3
	movq	-312(%rbp), %rdx
	.loc 1 3892 41 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	.loc 1 3892 27 discriminator 3
	movzbl	(%rax), %eax
	movb	%al, -57(%rbp)
	.loc 1 3893 31 discriminator 3
	movzbl	-57(%rbp), %edx
	.loc 1 3893 54 discriminator 3
	movq	-336(%rbp), %rcx
	.loc 1 3893 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3893 31 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -58(%rbp)
	.loc 1 3894 31 discriminator 3
	movzbl	-57(%rbp), %edx
	.loc 1 3894 54 discriminator 3
	movq	-328(%rbp), %rcx
	.loc 1 3894 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3894 31 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -59(%rbp)
	.loc 1 3895 31 discriminator 3
	movzbl	-57(%rbp), %edx
	.loc 1 3895 54 discriminator 3
	movq	-320(%rbp), %rcx
	.loc 1 3895 57 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3895 31 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -60(%rbp)
	.loc 1 3896 28 discriminator 3
	movzbl	-60(%rbp), %edx
	movzbl	-59(%rbp), %ecx
	movzbl	-58(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	.loc 1 3896 26 discriminator 3
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 3897 22 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3897 26 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3898 23 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
.LBE1554:
	.loc 1 3891 43 discriminator 3
	addl	$1, -28(%rbp)
.L1136:
	.loc 1 3891 31 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3891 34 discriminator 1
	movl	(%rax), %eax
	.loc 1 3891 16 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1137
	.loc 1 3890 23
	jmp	.L1119
.L1135:
	.loc 1 3900 25
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3900 28
	movl	8(%rax), %eax
	.loc 1 3900 23
	cmpl	$4, %eax
	jne	.L1138
	.loc 1 3900 45 discriminator 1
	movq	-344(%rbp), %rax
	movl	18508(%rax), %eax
	.loc 1 3900 41 discriminator 1
	cmpl	$2, %eax
	jne	.L1138
	.loc 1 3901 22
	movl	$0, -28(%rbp)
	.loc 1 3901 16
	jmp	.L1139
.L1140:
	.loc 1 3902 72 discriminator 3
	movq	-312(%rbp), %rdx
	.loc 1 3902 75 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 3902 28 discriminator 3
	movzbl	%al, %edx
	.loc 1 3902 57 discriminator 3
	movq	-336(%rbp), %rcx
	.loc 1 3902 60 discriminator 3
	movl	-28(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 1 3902 48 discriminator 3
	notl	%eax
	.loc 1 3902 28 discriminator 3
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	.loc 1 3902 26 discriminator 3
	movq	-40(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 3903 22 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 1 3903 26 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3904 23 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	.loc 1 3901 43 discriminator 3
	addl	$1, -28(%rbp)
.L1139:
	.loc 1 3901 31 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3901 34 discriminator 1
	movl	(%rax), %eax
	.loc 1 3901 16 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1140
	.loc 1 3900 23
	jmp	.L1119
.L1138:
.LBB1555:
	.loc 1 3907 25
	movq	-336(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 1 3908 19
	cmpl	$1, -44(%rbp)
	jne	.L1141
	.loc 1 3909 25
	movl	$0, -28(%rbp)
	.loc 1 3909 19
	jmp	.L1142
.L1143:
	.loc 1 3909 61 discriminator 3
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 3909 54 discriminator 3
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 3909 61 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 3909 58 discriminator 3
	movb	%al, (%rdx)
	.loc 1 3909 46 discriminator 3
	addl	$1, -28(%rbp)
.L1142:
	.loc 1 3909 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3909 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3909 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1143
	jmp	.L1119
.L1141:
	.loc 1 3911 25
	movl	$0, -28(%rbp)
	.loc 1 3911 19
	jmp	.L1144
.L1145:
	.loc 1 3911 63 discriminator 3
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 3911 57 discriminator 3
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 1 3911 63 discriminator 3
	movzbl	(%rcx), %edx
	.loc 1 3911 60 discriminator 3
	movb	%dl, (%rax)
	.loc 1 3911 72 discriminator 3
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 1 3911 75 discriminator 3
	movb	$-1, (%rax)
	.loc 1 3911 46 discriminator 3
	addl	$1, -28(%rbp)
.L1144:
	.loc 1 3911 34 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3911 37 discriminator 1
	movl	(%rax), %eax
	.loc 1 3911 19 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L1145
.L1119:
.LBE1555:
.LBE1549:
	.loc 1 3821 34 discriminator 2
	addl	$1, -32(%rbp)
.L1106:
	.loc 1 3821 22 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3821 25 discriminator 1
	movl	4(%rax), %eax
	.loc 1 3821 7 discriminator 1
	cmpl	%eax, -32(%rbp)
	jb	.L1146
	.loc 1 3915 7
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	.loc 1 3916 17
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3916 20
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 3916 14
	movq	-352(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 3917 17
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3917 20
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 3917 14
	movq	-360(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 3918 10
	cmpq	$0, -368(%rbp)
	je	.L1147
	.loc 1 3918 26 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3918 29 discriminator 1
	movl	8(%rax), %eax
	.loc 1 3918 46 discriminator 1
	cmpl	$2, %eax
	jle	.L1148
	.loc 1 3918 46 is_stmt 0 discriminator 2
	movl	$3, %edx
	jmp	.L1149
.L1148:
	.loc 1 3918 46 discriminator 3
	movl	$1, %edx
.L1149:
	.loc 1 3918 23 is_stmt 1 discriminator 5
	movq	-368(%rbp), %rax
	movl	%edx, (%rax)
.L1147:
	.loc 1 3919 14
	movq	-56(%rbp), %rax
.L1085:
.LBE1547:
	.loc 1 3921 1 discriminator 7
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	load_jpeg_image, .-load_jpeg_image
	.type	stbi__jpeg_load, @function
stbi__jpeg_load:
.LFB609:
	.loc 1 3924 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 3926 34
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 3928 9
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 3929 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__setup_jpeg
	.loc 1 3930 13
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	load_jpeg_image
	movq	%rax, -16(%rbp)
	.loc 1 3931 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3932 11
	movq	-16(%rbp), %rax
	.loc 1 3933 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	stbi__jpeg_load, .-stbi__jpeg_load
	.type	stbi__jpeg_test, @function
stbi__jpeg_test:
.LFB610:
	.loc 1 3936 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 3938 33
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 3939 9
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 3940 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__setup_jpeg
	.loc 1 3941 8
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	movl	%eax, -12(%rbp)
	.loc 1 3942 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 3943 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3944 11
	movl	-12(%rbp), %eax
	.loc 1 3945 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	stbi__jpeg_test, .-stbi__jpeg_test
	.type	stbi__jpeg_info_raw, @function
stbi__jpeg_info_raw:
.LFB611:
	.loc 1 3948 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 3949 9
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	.loc 1 3949 7
	testl	%eax, %eax
	jne	.L1155
	.loc 1 3950 7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 3951 14
	movl	$0, %eax
	jmp	.L1156
.L1155:
	.loc 1 3953 7
	cmpq	$0, -16(%rbp)
	je	.L1157
	.loc 1 3953 17 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3953 20 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 3953 14 discriminator 1
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L1157:
	.loc 1 3954 7
	cmpq	$0, -24(%rbp)
	je	.L1158
	.loc 1 3954 17 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3954 20 discriminator 1
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 3954 14 discriminator 1
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L1158:
	.loc 1 3955 7
	cmpq	$0, -32(%rbp)
	je	.L1159
	.loc 1 3955 23 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 3955 26 discriminator 1
	movl	8(%rax), %eax
	.loc 1 3955 43 discriminator 1
	cmpl	$2, %eax
	jle	.L1160
	.loc 1 3955 43 is_stmt 0 discriminator 2
	movl	$3, %edx
	jmp	.L1161
.L1160:
	.loc 1 3955 43 discriminator 3
	movl	$1, %edx
.L1161:
	.loc 1 3955 20 is_stmt 1 discriminator 5
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L1159:
	.loc 1 3956 11
	movl	$1, %eax
.L1156:
	.loc 1 3957 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	stbi__jpeg_info_raw, .-stbi__jpeg_info_raw
	.type	stbi__jpeg_info, @function
stbi__jpeg_info:
.LFB612:
	.loc 1 3960 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 3962 35
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 3963 9
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 3964 13
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_info_raw
	movl	%eax, -12(%rbp)
	.loc 1 3965 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 3966 11
	movl	-12(%rbp), %eax
	.loc 1 3967 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	stbi__jpeg_info, .-stbi__jpeg_info
	.type	stbi__bitreverse16, @function
stbi__bitreverse16:
.LFB613:
	.loc 1 3996 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 3997 21
	movl	-4(%rbp), %eax
	sarl	%eax
	andl	$21845, %eax
	movl	%eax, %edx
	.loc 1 3997 44
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	andl	$43690, %eax
	.loc 1 3997 5
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3998 21
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	andl	$13107, %eax
	movl	%eax, %edx
	.loc 1 3998 44
	movl	-4(%rbp), %eax
	sall	$2, %eax
	andl	$52428, %eax
	.loc 1 3998 5
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 3999 21
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	andl	$3855, %eax
	movl	%eax, %edx
	.loc 1 3999 44
	movl	-4(%rbp), %eax
	sall	$4, %eax
	andl	$61680, %eax
	.loc 1 3999 5
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 4000 21
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	.loc 1 4000 44
	movl	-4(%rbp), %eax
	sall	$8, %eax
	movzwl	%ax, %eax
	.loc 1 4000 5
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 4001 10
	movl	-4(%rbp), %eax
	.loc 1 4002 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	stbi__bitreverse16, .-stbi__bitreverse16
	.section	.rodata
.LC43:
	.string	"bits <= 16"
	.text
	.type	stbi__bit_reverse, @function
stbi__bit_reverse:
.LFB614:
	.loc 1 4005 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 4006 4
	cmpl	$16, -8(%rbp)
	jle	.L1167
	.loc 1 4006 4 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx
	movl	$4006, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC43(%rip), %rdi
	call	__assert_fail@PLT
.L1167:
	.loc 1 4009 11 is_stmt 1
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitreverse16
	movl	%eax, %edx
	.loc 1 4009 39
	movl	$16, %eax
	subl	-8(%rbp), %eax
	.loc 1 4009 33
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	.loc 1 4010 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	stbi__bit_reverse, .-stbi__bit_reverse
	.section	.rodata
.LC44:
	.string	"bad sizes"
.LC45:
	.string	"bad codelengths"
	.text
	.type	stbi__zbuild_huffman, @function
stbi__zbuild_huffman:
.LFB615:
	.loc 1 4013 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	.loc 1 4014 10
	movl	$0, -8(%rbp)
	.loc 1 4018 4
	leaq	-176(%rbp), %rax
	movl	$68, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 4019 12
	movq	-184(%rbp), %rax
	.loc 1 4019 4
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 4020 10
	movl	$0, -4(%rbp)
	.loc 1 4020 4
	jmp	.L1170
.L1171:
	.loc 1 4021 23 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 4021 14 discriminator 3
	movslq	%eax, %rdx
	movl	-176(%rbp,%rdx,4), %edx
	.loc 1 4021 7 discriminator 3
	addl	$1, %edx
	cltq
	movl	%edx, -176(%rbp,%rax,4)
	.loc 1 4020 23 discriminator 3
	addl	$1, -4(%rbp)
.L1170:
	.loc 1 4020 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L1171
	.loc 1 4022 13
	movl	$0, -176(%rbp)
	.loc 1 4023 10
	movl	$1, -4(%rbp)
	.loc 1 4023 4
	jmp	.L1172
.L1175:
	.loc 1 4024 16
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %edx
	.loc 1 4024 25
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 1 4024 10
	cmpl	%eax, %edx
	jle	.L1173
	.loc 1 4025 17
	leaq	.LC44(%rip), %rdi
	call	stbi__err
	jmp	.L1185
.L1173:
	.loc 1 4023 22 discriminator 2
	addl	$1, -4(%rbp)
.L1172:
	.loc 1 4023 4 discriminator 1
	cmpl	$15, -4(%rbp)
	jle	.L1175
	.loc 1 4026 9
	movl	$0, -12(%rbp)
	.loc 1 4027 10
	movl	$1, -4(%rbp)
	.loc 1 4027 4
	jmp	.L1176
.L1178:
	.loc 1 4028 20
	movl	-4(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, -96(%rbp,%rax,4)
	.loc 1 4029 25
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 4029 23
	movq	-184(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$512, %rdx
	movw	%cx, (%rax,%rdx,2)
	.loc 1 4030 27
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 4030 25
	movq	-184(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movw	%cx, 4(%rax,%rdx,2)
	.loc 1 4031 27
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	.loc 1 4031 12
	addl	%eax, -12(%rbp)
	.loc 1 4032 16
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	.loc 1 4032 10
	testl	%eax, %eax
	je	.L1177
	.loc 1 4033 27
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 4033 13
	cmpl	%eax, -12(%rbp)
	jle	.L1177
	.loc 1 4033 41 discriminator 1
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1185
.L1177:
	.loc 1 4034 34 discriminator 2
	movl	$16, %eax
	subl	-4(%rbp), %eax
	.loc 1 4034 28 discriminator 2
	movl	-12(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	.loc 1 4034 21 discriminator 2
	movq	-184(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$264, %rdx
	movl	%ecx, (%rax,%rdx,4)
	.loc 1 4035 12 discriminator 2
	sall	-12(%rbp)
	.loc 1 4036 17 discriminator 2
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	.loc 1 4036 9 discriminator 2
	addl	%eax, -8(%rbp)
	.loc 1 4027 22 discriminator 2
	addl	$1, -4(%rbp)
.L1176:
	.loc 1 4027 4 discriminator 1
	cmpl	$15, -4(%rbp)
	jle	.L1178
	.loc 1 4038 19
	movq	-184(%rbp), %rax
	movl	$65536, 1120(%rax)
	.loc 1 4039 10
	movl	$0, -4(%rbp)
	.loc 1 4039 4
	jmp	.L1179
.L1184:
.LBB1556:
	.loc 1 4040 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 4040 11
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 4041 10
	cmpl	$0, -20(%rbp)
	je	.L1180
.LBB1557:
	.loc 1 4042 27
	movl	-20(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	.loc 1 4042 45
	movq	-184(%rbp), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$512, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movzwl	%ax, %eax
	.loc 1 4042 31
	movl	%edx, %ecx
	subl	%eax, %ecx
	.loc 1 4042 65
	movq	-184(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	.loc 1 4042 14
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 4043 50
	movl	-20(%rbp), %eax
	sall	$9, %eax
	.loc 1 4043 56
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	orl	%edx, %eax
	.loc 1 4043 23
	movw	%ax, -26(%rbp)
	.loc 1 4044 24
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 4044 22
	movq	-184(%rbp), %rdx
	movl	-24(%rbp), %eax
	cltq
	movb	%cl, 1156(%rdx,%rax)
	.loc 1 4045 24
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 4045 22
	movq	-184(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$720, %rdx
	movw	%cx, 4(%rax,%rdx,2)
	.loc 1 4046 13
	cmpl	$9, -20(%rbp)
	jg	.L1181
.LBB1558:
	.loc 1 4047 21
	movl	-20(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__bit_reverse
	movl	%eax, -16(%rbp)
	.loc 1 4048 19
	jmp	.L1182
.L1183:
	.loc 1 4049 27
	movq	-184(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	-26(%rbp), %ecx
	movw	%cx, (%rax,%rdx,2)
	.loc 1 4050 24
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 4050 18
	addl	%eax, -16(%rbp)
.L1182:
	.loc 1 4048 19
	cmpl	$511, -16(%rbp)
	jle	.L1183
.L1181:
.LBE1558:
	.loc 1 4053 21
	movl	-20(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	.loc 1 4053 10
	leal	1(%rax), %edx
	movl	-20(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
.L1180:
.LBE1557:
.LBE1556:
	.loc 1 4039 23 discriminator 2
	addl	$1, -4(%rbp)
.L1179:
	.loc 1 4039 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L1184
	.loc 1 4056 11
	movl	$1, %eax
.L1185:
	.loc 1 4057 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	stbi__zbuild_huffman, .-stbi__zbuild_huffman
	.type	stbi__zeof, @function
stbi__zeof:
.LFB616:
	.loc 1 4080 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 4081 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 4081 27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 4081 23
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	.loc 1 4082 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	stbi__zeof, .-stbi__zeof
	.type	stbi__zget8, @function
stbi__zget8:
.LFB617:
	.loc 1 4085 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 4086 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	.loc 1 4086 29
	testl	%eax, %eax
	jne	.L1189
	.loc 1 4086 33 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4086 42 discriminator 1
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	.loc 1 4086 29 discriminator 1
	movzbl	(%rax), %eax
	jmp	.L1191
.L1189:
	.loc 1 4086 29 is_stmt 0 discriminator 2
	movl	$0, %eax
.L1191:
	.loc 1 4087 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	stbi__zget8, .-stbi__zget8
	.type	stbi__fill_bits, @function
stbi__fill_bits:
.LFB618:
	.loc 1 4090 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
.L1195:
	.loc 1 4092 12
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 4092 37
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4092 26
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	.loc 1 4092 10
	testl	%eax, %eax
	je	.L1193
	.loc 1 4093 23
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 4093 20
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 4094 9
	jmp	.L1192
.L1193:
	.loc 1 4096 40
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	.loc 1 4096 25
	movzbl	%al, %edx
	.loc 1 4096 59
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4096 55
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 4096 22
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 4097 19
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 4098 14
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4098 4
	cmpl	$24, %eax
	jle	.L1195
.L1192:
	.loc 1 4099 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	stbi__fill_bits, .-stbi__fill_bits
	.type	stbi__zreceive, @function
stbi__zreceive:
.LFB619:
	.loc 1 4102 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 4104 9
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4104 7
	cmpl	%eax, -28(%rbp)
	jle	.L1197
	.loc 1 4104 25 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__fill_bits
.L1197:
	.loc 1 4105 9
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 4105 29
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 1 4105 35
	subl	$1, %eax
	.loc 1 4105 6
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 4106 19
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 4107 16
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 4108 11
	movl	-4(%rbp), %eax
	.loc 1 4109 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	stbi__zreceive, .-stbi__zreceive
	.type	stbi__zhuffman_decode_slowpath, @function
stbi__zhuffman_decode_slowpath:
.LFB620:
	.loc 1 4112 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 4116 27
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 4116 8
	movl	$16, %esi
	movl	%eax, %edi
	call	stbi__bit_reverse
	movl	%eax, -8(%rbp)
	.loc 1 4117 10
	movl	$10, -4(%rbp)
.L1202:
	.loc 1 4118 25
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$264, %rdx
	movl	(%rax,%rdx,4), %eax
	.loc 1 4118 10
	cmpl	%eax, -8(%rbp)
	jl	.L1208
	.loc 1 4117 33
	addl	$1, -4(%rbp)
	.loc 1 4118 10
	jmp	.L1202
.L1208:
	.loc 1 4119 10
	nop
	.loc 1 4120 7
	cmpl	$15, -4(%rbp)
	jle	.L1203
	.loc 1 4120 24 discriminator 1
	movl	$-1, %eax
	jmp	.L1204
.L1203:
	.loc 1 4122 17
	movl	$16, %eax
	subl	-4(%rbp), %eax
	.loc 1 4122 11
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	.loc 1 4122 36
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$512, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	.loc 1 4122 22
	subl	%eax, %ecx
	.loc 1 4122 56
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	.loc 1 4122 6
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 4123 10
	movl	-12(%rbp), %eax
	.loc 1 4123 7
	cmpl	$287, %eax
	jbe	.L1205
	.loc 1 4123 38 discriminator 1
	movl	$-1, %eax
	jmp	.L1204
.L1205:
	.loc 1 4124 15
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1156(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 1 4124 7
	cmpl	%eax, -4(%rbp)
	je	.L1206
	.loc 1 4124 32 discriminator 1
	movl	$-1, %eax
	jmp	.L1204
.L1206:
	.loc 1 4125 19
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 4126 16
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 4127 19
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$720, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
.L1204:
	.loc 1 4128 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	stbi__zhuffman_decode_slowpath, .-stbi__zhuffman_decode_slowpath
	.type	stbi__zhuffman_decode, @function
stbi__zhuffman_decode:
.LFB621:
	.loc 1 4131 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 4133 9
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4133 7
	cmpl	$15, %eax
	jg	.L1210
	.loc 1 4134 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	.loc 1 4134 10
	testl	%eax, %eax
	je	.L1211
	.loc 1 4135 17
	movl	$-1, %eax
	jmp	.L1212
.L1211:
	.loc 1 4137 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__fill_bits
.L1210:
	.loc 1 4139 17
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 4139 31
	andl	$511, %eax
	movl	%eax, %edx
	.loc 1 4139 15
	movq	-32(%rbp), %rax
	movl	%edx, %edx
	movzwl	(%rax,%rdx,2), %eax
	.loc 1 4139 6
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	.loc 1 4140 7
	cmpl	$0, -4(%rbp)
	je	.L1213
	.loc 1 4141 9
	movl	-4(%rbp), %eax
	sarl	$9, %eax
	movl	%eax, -8(%rbp)
	.loc 1 4142 22
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 4143 19
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 4144 16
	movl	-4(%rbp), %eax
	andl	$511, %eax
	jmp	.L1212
.L1213:
	.loc 1 4146 11
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode_slowpath
.L1212:
	.loc 1 4147 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	stbi__zhuffman_decode, .-stbi__zhuffman_decode
	.section	.rodata
.LC46:
	.string	"output buffer limit"
	.text
	.type	stbi__zexpand, @function
stbi__zexpand:
.LFB622:
	.loc 1 4150 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 4153 12
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 4154 10
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 4154 7
	testl	%eax, %eax
	jne	.L1215
	.loc 1 4154 33 discriminator 1
	leaq	.LC46(%rip), %rdi
	call	stbi__err
	jmp	.L1216
.L1215:
	.loc 1 4155 29
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4155 39
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 1 4155 36
	movq	%rdx, %rax
	subq	%rcx, %rax
	.loc 1 4155 10
	movl	%eax, -8(%rbp)
	.loc 1 4156 37
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 1 4156 51
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 1 4156 48
	movq	%rdx, %rax
	subq	%rcx, %rax
	.loc 1 4156 22
	movl	%eax, -12(%rbp)
	.loc 1 4156 10
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 4157 17
	movl	-8(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	.loc 1 4157 25
	movl	-52(%rbp), %eax
	.loc 1 4157 7
	cmpl	%eax, %edx
	jnb	.L1218
	.loc 1 4157 46 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1216
.L1220:
	.loc 1 4159 16
	movl	-4(%rbp), %eax
	.loc 1 4159 9
	testl	%eax, %eax
	jns	.L1219
	.loc 1 4159 39 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1216
.L1219:
	.loc 1 4160 13
	sall	-4(%rbp)
.L1218:
	.loc 1 4158 15
	movl	-52(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	.loc 1 4158 10
	cmpl	%eax, -4(%rbp)
	jb	.L1220
	.loc 1 4162 17
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 4164 7
	cmpq	$0, -24(%rbp)
	jne	.L1221
	.loc 1 4164 26 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1216
.L1221:
	.loc 1 4165 18
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 4166 22
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 4166 18
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 4167 22
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 4167 18
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 1 4168 11
	movl	$1, %eax
.L1216:
	.loc 1 4169 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	stbi__zexpand, .-stbi__zexpand
	.section	.rodata
	.align 32
	.type	stbi__zlength_base, @object
	.size	stbi__zlength_base, 124
stbi__zlength_base:
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	15
	.long	17
	.long	19
	.long	23
	.long	27
	.long	31
	.long	35
	.long	43
	.long	51
	.long	59
	.long	67
	.long	83
	.long	99
	.long	115
	.long	131
	.long	163
	.long	195
	.long	227
	.long	258
	.long	0
	.long	0
	.align 32
	.type	stbi__zlength_extra, @object
	.size	stbi__zlength_extra, 124
stbi__zlength_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.align 32
	.type	stbi__zdist_base, @object
	.size	stbi__zdist_base, 128
stbi__zdist_base:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	9
	.long	13
	.long	17
	.long	25
	.long	33
	.long	49
	.long	65
	.long	97
	.long	129
	.long	193
	.long	257
	.long	385
	.long	513
	.long	769
	.long	1025
	.long	1537
	.long	2049
	.long	3073
	.long	4097
	.long	6145
	.long	8193
	.long	12289
	.long	16385
	.long	24577
	.long	0
	.long	0
	.align 32
	.type	stbi__zdist_extra, @object
	.size	stbi__zdist_extra, 128
stbi__zdist_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.zero	8
.LC47:
	.string	"bad dist"
	.text
	.type	stbi__parse_huffman_block, @function
stbi__parse_huffman_block:
.LFB623:
	.loc 1 4186 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 1 4187 10
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L1239:
.LBB1559:
	.loc 1 4189 15
	movq	-40(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -28(%rbp)
	.loc 1 4190 10
	cmpl	$255, -28(%rbp)
	jg	.L1223
	.loc 1 4191 13
	cmpl	$0, -28(%rbp)
	jns	.L1224
	.loc 1 4191 28 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L1225
.L1224:
	.loc 1 4192 23
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 4192 13
	cmpq	%rax, -8(%rbp)
	jb	.L1226
	.loc 1 4193 18
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	.loc 1 4193 16
	testl	%eax, %eax
	jne	.L1227
	.loc 1 4193 52 discriminator 1
	movl	$0, %eax
	jmp	.L1225
.L1227:
	.loc 1 4194 18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L1226:
	.loc 1 4196 15
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 4196 20
	movl	-28(%rbp), %edx
	.loc 1 4196 18
	movb	%dl, (%rax)
	jmp	.L1239
.L1223:
.LBB1560:
	.loc 1 4200 13
	cmpl	$256, -28(%rbp)
	jne	.L1229
	.loc 1 4201 21
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 4202 20
	movl	$1, %eax
	jmp	.L1225
.L1229:
	.loc 1 4204 12
	subl	$257, -28(%rbp)
	.loc 1 4205 14
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_base(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 4206 33
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_extra(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 4206 13
	testl	%eax, %eax
	je	.L1230
	.loc 1 4206 45 discriminator 1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_extra(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4206 42 discriminator 1
	movl	-20(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
.L1230:
	.loc 1 4207 14
	movq	-40(%rbp), %rax
	leaq	2072(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -28(%rbp)
	.loc 1 4208 13
	cmpl	$0, -28(%rbp)
	jns	.L1231
	.loc 1 4208 28 discriminator 1
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L1225
.L1231:
	.loc 1 4209 15
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_base(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 1 4210 31
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_extra(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 4210 13
	testl	%eax, %eax
	je	.L1232
	.loc 1 4210 44 discriminator 1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_extra(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4210 41 discriminator 1
	movl	-24(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
.L1232:
	.loc 1 4211 22
	movq	-40(%rbp), %rax
	movq	32(%rax), %rcx
	.loc 1 4211 19
	movq	-8(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	.loc 1 4211 35
	movl	-24(%rbp), %eax
	cltq
	.loc 1 4211 13
	cmpq	%rax, %rdx
	jge	.L1233
	.loc 1 4211 50 discriminator 1
	leaq	.LC47(%rip), %rdi
	call	stbi__err
	jmp	.L1225
.L1233:
	.loc 1 4212 19
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 4212 28
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 4212 13
	cmpq	%rax, %rdx
	jbe	.L1234
	.loc 1 4213 18
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	.loc 1 4213 16
	testl	%eax, %eax
	jne	.L1235
	.loc 1 4213 54 discriminator 1
	movl	$0, %eax
	jmp	.L1225
.L1235:
	.loc 1 4214 18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L1234:
	.loc 1 4216 32
	movl	-24(%rbp), %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	.loc 1 4216 12
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 4217 13
	cmpl	$1, -24(%rbp)
	jne	.L1236
.LBB1561:
	.loc 1 4218 21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	.loc 1 4219 16
	cmpl	$0, -20(%rbp)
	je	.L1239
.L1237:
	.loc 1 4219 32 discriminator 2
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 4219 35 discriminator 2
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 4219 13 discriminator 2
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L1237
	jmp	.L1239
.L1236:
.LBE1561:
	.loc 1 4221 16
	cmpl	$0, -20(%rbp)
	je	.L1239
.L1238:
	.loc 1 4221 39 discriminator 2
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 1 4221 37 discriminator 2
	movzbl	(%rax), %ecx
	.loc 1 4221 32 discriminator 2
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 1 4221 37 discriminator 2
	movl	%ecx, %edx
	.loc 1 4221 35 discriminator 2
	movb	%dl, (%rax)
	.loc 1 4221 13 discriminator 2
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L1238
.LBE1560:
.LBE1559:
	.loc 1 4188 12 discriminator 1
	jmp	.L1239
.L1225:
	.loc 1 4225 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	stbi__parse_huffman_block, .-stbi__parse_huffman_block
	.type	stbi__compute_huffman_codes, @function
stbi__compute_huffman_codes:
.LFB624:
	.loc 1 4228 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2576, %rsp
	movq	%rdi, -2568(%rbp)
	.loc 1 4235 16
	movq	-2568(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4235 36
	addl	$257, %eax
	.loc 1 4235 8
	movl	%eax, -20(%rbp)
	.loc 1 4236 16
	movq	-2568(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4236 36
	addl	$1, %eax
	.loc 1 4236 8
	movl	%eax, -24(%rbp)
	.loc 1 4237 16
	movq	-2568(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4237 36
	addl	$4, %eax
	.loc 1 4237 8
	movl	%eax, -28(%rbp)
	.loc 1 4238 8
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	.loc 1 4240 4
	leaq	-2560(%rbp), %rax
	movl	$19, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 4241 10
	movl	$0, -4(%rbp)
	.loc 1 4241 4
	jmp	.L1241
.L1242:
.LBB1562:
	.loc 1 4242 15 discriminator 3
	movq	-2568(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4242 11 discriminator 3
	movl	%eax, -36(%rbp)
	.loc 1 4243 39 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	length_dezigzag.12(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 1 4243 46 discriminator 3
	movl	-36(%rbp), %edx
	.loc 1 4243 44 discriminator 3
	cltq
	movb	%dl, -2560(%rbp,%rax)
.LBE1562:
	.loc 1 4241 25 discriminator 3
	addl	$1, -4(%rbp)
.L1241:
	.loc 1 4241 4 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L1242
	.loc 1 4245 9
	leaq	-2560(%rbp), %rcx
	leaq	-2064(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	.loc 1 4245 7
	testl	%eax, %eax
	jne	.L1243
	.loc 1 4245 75 discriminator 1
	movl	$0, %eax
	jmp	.L1259
.L1243:
	.loc 1 4247 6
	movl	$0, -8(%rbp)
	.loc 1 4248 10
	jmp	.L1245
.L1255:
.LBB1563:
	.loc 1 4249 15
	leaq	-2064(%rbp), %rdx
	movq	-2568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -12(%rbp)
	.loc 1 4250 10
	cmpl	$0, -12(%rbp)
	js	.L1246
	.loc 1 4250 17 discriminator 2
	cmpl	$18, -12(%rbp)
	jle	.L1247
.L1246:
	.loc 1 4250 36 discriminator 3
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1259
.L1247:
	.loc 1 4251 10
	cmpl	$15, -12(%rbp)
	jg	.L1248
	.loc 1 4252 20
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	.loc 1 4252 26
	movl	-12(%rbp), %edx
	.loc 1 4252 24
	cltq
	movb	%dl, -2528(%rbp,%rax)
	jmp	.L1245
.L1248:
.LBB1564:
	.loc 1 4254 18
	movb	$0, -13(%rbp)
	.loc 1 4255 13
	cmpl	$16, -12(%rbp)
	jne	.L1249
	.loc 1 4256 17
	movq	-2568(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4256 36
	addl	$3, %eax
	.loc 1 4256 15
	movl	%eax, -12(%rbp)
	.loc 1 4257 16
	cmpl	$0, -8(%rbp)
	jne	.L1250
	.loc 1 4257 32 discriminator 1
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1259
.L1250:
	.loc 1 4258 30
	movl	-8(%rbp), %eax
	subl	$1, %eax
	.loc 1 4258 18
	cltq
	movzbl	-2528(%rbp,%rax), %eax
	movb	%al, -13(%rbp)
	jmp	.L1251
.L1249:
	.loc 1 4259 20
	cmpl	$17, -12(%rbp)
	jne	.L1252
	.loc 1 4260 17
	movq	-2568(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4260 36
	addl	$3, %eax
	.loc 1 4260 15
	movl	%eax, -12(%rbp)
	jmp	.L1251
.L1252:
	.loc 1 4261 20
	cmpl	$18, -12(%rbp)
	jne	.L1253
	.loc 1 4262 17
	movq	-2568(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4262 36
	addl	$11, %eax
	.loc 1 4262 15
	movl	%eax, -12(%rbp)
	jmp	.L1251
.L1253:
	.loc 1 4264 20
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1259
.L1251:
	.loc 1 4266 19
	movl	-32(%rbp), %eax
	subl	-8(%rbp), %eax
	.loc 1 4266 13
	cmpl	%eax, -12(%rbp)
	jle	.L1254
	.loc 1 4266 35 discriminator 1
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1259
.L1254:
	.loc 1 4267 10
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-13(%rbp), %eax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-2528(%rbp), %rsi
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	.loc 1 4268 12
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
.L1245:
.LBE1564:
.LBE1563:
	.loc 1 4248 10
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1255
	.loc 1 4271 7
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L1256
	.loc 1 4271 26 discriminator 1
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1259
.L1256:
	.loc 1 4272 9
	movq	-2568(%rbp), %rax
	leaq	52(%rax), %rcx
	movl	-20(%rbp), %edx
	leaq	-2528(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	stbi__zbuild_huffman
	.loc 1 4272 7
	testl	%eax, %eax
	jne	.L1257
	.loc 1 4272 68 discriminator 1
	movl	$0, %eax
	jmp	.L1259
.L1257:
	.loc 1 4273 9
	movl	-20(%rbp), %eax
	cltq
	leaq	-2528(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	movq	-2568(%rbp), %rax
	leaq	2072(%rax), %rcx
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	stbi__zbuild_huffman
	.loc 1 4273 7
	testl	%eax, %eax
	jne	.L1258
	.loc 1 4273 76 discriminator 1
	movl	$0, %eax
	jmp	.L1259
.L1258:
	.loc 1 4274 11
	movl	$1, %eax
.L1259:
	.loc 1 4275 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	stbi__compute_huffman_codes, .-stbi__compute_huffman_codes
	.section	.rodata
.LC48:
	.string	"zlib corrupt"
.LC49:
	.string	"read past buffer"
	.text
	.type	stbi__parse_uncompressed_block, @function
stbi__parse_uncompressed_block:
.LFB625:
	.loc 1 4278 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 1 4281 9
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4281 20
	andl	$7, %eax
	.loc 1 4281 7
	testl	%eax, %eax
	je	.L1261
	.loc 1 4282 26
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4282 7
	andl	$7, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
.L1261:
	.loc 1 4284 6
	movl	$0, -20(%rbp)
	.loc 1 4285 10
	jmp	.L1262
.L1263:
	.loc 1 4286 33
	movq	-40(%rbp), %rax
	movl	20(%rax), %ecx
	.loc 1 4286 15
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	.loc 1 4286 21
	movl	%ecx, %edx
	.loc 1 4286 19
	cltq
	movb	%dl, -32(%rbp,%rax)
	.loc 1 4287 22
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 4288 19
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	leal	-8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
.L1262:
	.loc 1 4285 12
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4285 10
	testl	%eax, %eax
	jg	.L1263
	.loc 1 4290 9
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 4290 7
	testl	%eax, %eax
	jns	.L1266
	.loc 1 4290 32 discriminator 1
	leaq	.LC48(%rip), %rdi
	call	stbi__err
	jmp	.L1271
.L1267:
	.loc 1 4293 15
	movl	-20(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -20(%rbp)
	.loc 1 4293 21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	.loc 1 4293 19
	movslq	%ebx, %rdx
	movb	%al, -32(%rbp,%rdx)
.L1266:
	.loc 1 4292 10
	cmpl	$3, -20(%rbp)
	jle	.L1267
	.loc 1 4294 17
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 4294 21
	sall	$8, %eax
	movl	%eax, %edx
	.loc 1 4294 35
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 4294 9
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 1 4295 17
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 4295 21
	sall	$8, %eax
	movl	%eax, %edx
	.loc 1 4295 35
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 4295 9
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 4296 21
	movl	-24(%rbp), %eax
	xorl	$65535, %eax
	.loc 1 4296 7
	cmpl	%eax, -28(%rbp)
	je	.L1268
	.loc 1 4296 39 discriminator 1
	leaq	.LC48(%rip), %rdi
	call	stbi__err
	jmp	.L1271
.L1268:
	.loc 1 4297 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 4297 19
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rdx
	.loc 1 4297 28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 4297 7
	cmpq	%rax, %rdx
	jbe	.L1269
	.loc 1 4297 50 discriminator 1
	leaq	.LC49(%rip), %rdi
	call	stbi__err
	jmp	.L1271
.L1269:
	.loc 1 4298 9
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4298 16
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rdx
	.loc 1 4298 25
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 4298 7
	cmpq	%rax, %rdx
	jbe	.L1270
	.loc 1 4299 12
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	.loc 1 4299 10
	testl	%eax, %eax
	jne	.L1270
	.loc 1 4299 51 discriminator 1
	movl	$0, %eax
	jmp	.L1271
.L1270:
	.loc 1 4300 4
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 4300 21
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	.loc 1 4300 12
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 4300 4
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 4301 15
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 4302 12
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 4303 11
	movl	$1, %eax
.L1271:
	.loc 1 4304 1 discriminator 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	stbi__parse_uncompressed_block, .-stbi__parse_uncompressed_block
	.section	.rodata
.LC50:
	.string	"bad zlib header"
.LC51:
	.string	"no preset dict"
.LC52:
	.string	"bad compression"
	.text
	.type	stbi__parse_zlib_header, @function
stbi__parse_zlib_header:
.LFB626:
	.loc 1 4307 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 4308 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	.loc 1 4308 8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 4309 8
	movl	-4(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -8(%rbp)
	.loc 1 4311 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	.loc 1 4311 8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 4312 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	.loc 1 4312 7
	testl	%eax, %eax
	je	.L1273
	.loc 1 4312 30 discriminator 1
	leaq	.LC50(%rip), %rdi
	call	stbi__err
	jmp	.L1274
.L1273:
	.loc 1 4313 12
	movl	-4(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	.loc 1 4313 16
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	.loc 1 4313 22
	movslq	%edx, %rax
	imulq	$-2078209981, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$4, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	subl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	.loc 1 4313 7
	testl	%eax, %eax
	je	.L1275
	.loc 1 4313 40 discriminator 1
	leaq	.LC50(%rip), %rdi
	call	stbi__err
	jmp	.L1274
.L1275:
	.loc 1 4314 12
	movl	-12(%rbp), %eax
	andl	$32, %eax
	.loc 1 4314 7
	testl	%eax, %eax
	je	.L1276
	.loc 1 4314 25 discriminator 1
	leaq	.LC51(%rip), %rdi
	call	stbi__err
	jmp	.L1274
.L1276:
	.loc 1 4315 7
	cmpl	$8, -8(%rbp)
	je	.L1277
	.loc 1 4315 24 discriminator 1
	leaq	.LC52(%rip), %rdi
	call	stbi__err
	jmp	.L1274
.L1277:
	.loc 1 4317 11
	movl	$1, %eax
.L1274:
	.loc 1 4318 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	stbi__parse_zlib_header, .-stbi__parse_zlib_header
	.section	.rodata
	.align 32
	.type	stbi__zdefault_length, @object
	.size	stbi__zdefault_length, 288
stbi__zdefault_length:
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\007\007\007\007\007\007\007"
	.ascii	"\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007"
	.ascii	"\007\007\b\b\b\b\b\b\b\b"
	.align 32
	.type	stbi__zdefault_distance, @object
	.size	stbi__zdefault_distance, 32
stbi__zdefault_distance:
	.ascii	"\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005"
	.ascii	"\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005"
	.ascii	"\005\005"
	.text
	.type	stbi__parse_zlib, @function
stbi__parse_zlib:
.LFB627:
	.loc 1 4350 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 4352 7
	cmpl	$0, -28(%rbp)
	je	.L1279
	.loc 1 4353 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_zlib_header
	.loc 1 4353 10
	testl	%eax, %eax
	jne	.L1279
	.loc 1 4353 47 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1279:
	.loc 1 4354 16
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 1 4355 19
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
.L1287:
	.loc 1 4357 15
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4357 13
	movl	%eax, -4(%rbp)
	.loc 1 4358 14
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	.loc 1 4358 12
	movl	%eax, -8(%rbp)
	.loc 1 4359 10
	cmpl	$0, -8(%rbp)
	jne	.L1281
	.loc 1 4360 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_uncompressed_block
	.loc 1 4360 13
	testl	%eax, %eax
	jne	.L1282
	.loc 1 4360 57 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1281:
	.loc 1 4361 17
	cmpl	$3, -8(%rbp)
	jne	.L1283
	.loc 1 4362 17
	movl	$0, %eax
	jmp	.L1280
.L1283:
	.loc 1 4364 13
	cmpl	$1, -8(%rbp)
	jne	.L1284
	.loc 1 4366 18
	movq	-24(%rbp), %rax
	addq	$52, %rax
	movl	$288, %edx
	leaq	stbi__zdefault_length(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	.loc 1 4366 16
	testl	%eax, %eax
	jne	.L1285
	.loc 1 4366 93 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1285:
	.loc 1 4367 18
	movq	-24(%rbp), %rax
	addq	$2072, %rax
	movl	$32, %edx
	leaq	stbi__zdefault_distance(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	.loc 1 4367 16
	testl	%eax, %eax
	jne	.L1286
	.loc 1 4367 93 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1284:
	.loc 1 4369 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__compute_huffman_codes
	.loc 1 4369 16
	testl	%eax, %eax
	jne	.L1286
	.loc 1 4369 57 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1286:
	.loc 1 4371 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_huffman_block
	.loc 1 4371 13
	testl	%eax, %eax
	jne	.L1282
	.loc 1 4371 52 discriminator 1
	movl	$0, %eax
	jmp	.L1280
.L1282:
	.loc 1 4373 4
	cmpl	$0, -4(%rbp)
	je	.L1287
	.loc 1 4374 11
	movl	$1, %eax
.L1280:
	.loc 1 4375 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	stbi__parse_zlib, .-stbi__parse_zlib
	.type	stbi__do_zlib, @function
stbi__do_zlib:
.LFB628:
	.loc 1 4378 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 4379 18
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 4380 18
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 4381 25
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 4381 18
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 1 4382 20
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 48(%rax)
	.loc 1 4384 11
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__parse_zlib
	.loc 1 4385 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	stbi__do_zlib, .-stbi__do_zlib
	.globl	stbi_zlib_decode_malloc_guesssize
	.type	stbi_zlib_decode_malloc_guesssize, @function
stbi_zlib_decode_malloc_guesssize:
.LFB629:
	.loc 1 4388 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4144, %rsp
	movq	%rdi, -4120(%rbp)
	movl	%esi, -4124(%rbp)
	movl	%edx, -4128(%rbp)
	movq	%rcx, -4136(%rbp)
	.loc 1 4390 23
	movl	-4128(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 4391 7
	cmpq	$0, -8(%rbp)
	jne	.L1291
	.loc 1 4391 26 discriminator 1
	movl	$0, %eax
	jmp	.L1295
.L1291:
	.loc 1 4392 14
	movq	-4120(%rbp), %rax
	movq	%rax, -4112(%rbp)
	.loc 1 4393 39
	movl	-4124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4393 18
	movq	%rax, -4104(%rbp)
	.loc 1 4394 8
	movl	-4128(%rbp), %edx
	movq	-8(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	.loc 1 4394 7
	testl	%eax, %eax
	je	.L1293
	.loc 1 4395 10
	cmpq	$0, -4136(%rbp)
	je	.L1294
	.loc 1 4395 37 discriminator 1
	movq	-4088(%rbp), %rax
	.loc 1 4395 46 discriminator 1
	movq	-4080(%rbp), %rdx
	.loc 1 4395 43 discriminator 1
	subq	%rdx, %rax
	.loc 1 4395 29 discriminator 1
	movl	%eax, %edx
	.loc 1 4395 27 discriminator 1
	movq	-4136(%rbp), %rax
	movl	%edx, (%rax)
.L1294:
	.loc 1 4396 15
	movq	-4080(%rbp), %rax
	jmp	.L1295
.L1293:
	.loc 1 4398 7
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4399 14
	movl	$0, %eax
.L1295:
	.loc 1 4401 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	stbi_zlib_decode_malloc_guesssize, .-stbi_zlib_decode_malloc_guesssize
	.globl	stbi_zlib_decode_malloc
	.type	stbi_zlib_decode_malloc, @function
stbi_zlib_decode_malloc:
.LFB630:
	.loc 1 4404 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 4405 11
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	stbi_zlib_decode_malloc_guesssize
	.loc 1 4406 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	stbi_zlib_decode_malloc, .-stbi_zlib_decode_malloc
	.globl	stbi_zlib_decode_malloc_guesssize_headerflag
	.type	stbi_zlib_decode_malloc_guesssize_headerflag, @function
stbi_zlib_decode_malloc_guesssize_headerflag:
.LFB631:
	.loc 1 4409 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4144, %rsp
	movq	%rdi, -4120(%rbp)
	movl	%esi, -4124(%rbp)
	movl	%edx, -4128(%rbp)
	movq	%rcx, -4136(%rbp)
	movl	%r8d, -4140(%rbp)
	.loc 1 4411 23
	movl	-4128(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 4412 7
	cmpq	$0, -8(%rbp)
	jne	.L1299
	.loc 1 4412 26 discriminator 1
	movl	$0, %eax
	jmp	.L1303
.L1299:
	.loc 1 4413 14
	movq	-4120(%rbp), %rax
	movq	%rax, -4112(%rbp)
	.loc 1 4414 39
	movl	-4124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4414 18
	movq	%rax, -4104(%rbp)
	.loc 1 4415 8
	movl	-4140(%rbp), %ecx
	movl	-4128(%rbp), %edx
	movq	-8(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	%ecx, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	.loc 1 4415 7
	testl	%eax, %eax
	je	.L1301
	.loc 1 4416 10
	cmpq	$0, -4136(%rbp)
	je	.L1302
	.loc 1 4416 37 discriminator 1
	movq	-4088(%rbp), %rax
	.loc 1 4416 46 discriminator 1
	movq	-4080(%rbp), %rdx
	.loc 1 4416 43 discriminator 1
	subq	%rdx, %rax
	.loc 1 4416 29 discriminator 1
	movl	%eax, %edx
	.loc 1 4416 27 discriminator 1
	movq	-4136(%rbp), %rax
	movl	%edx, (%rax)
.L1302:
	.loc 1 4417 15
	movq	-4080(%rbp), %rax
	jmp	.L1303
.L1301:
	.loc 1 4419 7
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4420 14
	movl	$0, %eax
.L1303:
	.loc 1 4422 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	stbi_zlib_decode_malloc_guesssize_headerflag, .-stbi_zlib_decode_malloc_guesssize_headerflag
	.globl	stbi_zlib_decode_buffer
	.type	stbi_zlib_decode_buffer, @function
stbi_zlib_decode_buffer:
.LFB632:
	.loc 1 4425 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4128, %rsp
	movq	%rdi, -4104(%rbp)
	movl	%esi, -4108(%rbp)
	movq	%rdx, -4120(%rbp)
	movl	%ecx, -4112(%rbp)
	.loc 1 4427 14
	movq	-4120(%rbp), %rax
	movq	%rax, -4096(%rbp)
	.loc 1 4428 40
	movl	-4112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4428 18
	movq	%rax, -4088(%rbp)
	.loc 1 4429 8
	movl	-4108(%rbp), %edx
	movq	-4104(%rbp), %rsi
	leaq	-4096(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	.loc 1 4429 7
	testl	%eax, %eax
	je	.L1305
	.loc 1 4430 22
	movq	-4072(%rbp), %rax
	.loc 1 4430 31
	movq	-4064(%rbp), %rdx
	.loc 1 4430 28
	subq	%rdx, %rax
	.loc 1 4430 14
	jmp	.L1307
.L1305:
	.loc 1 4432 14
	movl	$-1, %eax
.L1307:
	.loc 1 4433 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	stbi_zlib_decode_buffer, .-stbi_zlib_decode_buffer
	.globl	stbi_zlib_decode_noheader_malloc
	.type	stbi_zlib_decode_noheader_malloc, @function
stbi_zlib_decode_noheader_malloc:
.LFB633:
	.loc 1 4436 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4144, %rsp
	movq	%rdi, -4120(%rbp)
	movl	%esi, -4124(%rbp)
	movq	%rdx, -4136(%rbp)
	.loc 1 4438 23
	movl	$16384, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 4439 7
	cmpq	$0, -8(%rbp)
	jne	.L1309
	.loc 1 4439 26 discriminator 1
	movl	$0, %eax
	jmp	.L1313
.L1309:
	.loc 1 4440 14
	movq	-4120(%rbp), %rax
	movq	%rax, -4112(%rbp)
	.loc 1 4441 38
	movl	-4124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4441 18
	movq	%rax, -4104(%rbp)
	.loc 1 4442 8
	movq	-8(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	stbi__do_zlib
	.loc 1 4442 7
	testl	%eax, %eax
	je	.L1311
	.loc 1 4443 10
	cmpq	$0, -4136(%rbp)
	je	.L1312
	.loc 1 4443 37 discriminator 1
	movq	-4088(%rbp), %rax
	.loc 1 4443 46 discriminator 1
	movq	-4080(%rbp), %rdx
	.loc 1 4443 43 discriminator 1
	subq	%rdx, %rax
	.loc 1 4443 29 discriminator 1
	movl	%eax, %edx
	.loc 1 4443 27 discriminator 1
	movq	-4136(%rbp), %rax
	movl	%edx, (%rax)
.L1312:
	.loc 1 4444 15
	movq	-4080(%rbp), %rax
	jmp	.L1313
.L1311:
	.loc 1 4446 7
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4447 14
	movl	$0, %eax
.L1313:
	.loc 1 4449 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	stbi_zlib_decode_noheader_malloc, .-stbi_zlib_decode_noheader_malloc
	.globl	stbi_zlib_decode_noheader_buffer
	.type	stbi_zlib_decode_noheader_buffer, @function
stbi_zlib_decode_noheader_buffer:
.LFB634:
	.loc 1 4452 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4128, %rsp
	movq	%rdi, -4104(%rbp)
	movl	%esi, -4108(%rbp)
	movq	%rdx, -4120(%rbp)
	movl	%ecx, -4112(%rbp)
	.loc 1 4454 14
	movq	-4120(%rbp), %rax
	movq	%rax, -4096(%rbp)
	.loc 1 4455 40
	movl	-4112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4455 18
	movq	%rax, -4088(%rbp)
	.loc 1 4456 8
	movl	-4108(%rbp), %edx
	movq	-4104(%rbp), %rsi
	leaq	-4096(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	.loc 1 4456 7
	testl	%eax, %eax
	je	.L1315
	.loc 1 4457 22
	movq	-4072(%rbp), %rax
	.loc 1 4457 31
	movq	-4064(%rbp), %rdx
	.loc 1 4457 28
	subq	%rdx, %rax
	.loc 1 4457 14
	jmp	.L1317
.L1315:
	.loc 1 4459 14
	movl	$-1, %eax
.L1317:
	.loc 1 4460 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	stbi_zlib_decode_noheader_buffer, .-stbi_zlib_decode_noheader_buffer
	.type	stbi__get_chunk_header, @function
stbi__get_chunk_header:
.LFB635:
	.loc 1 4481 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 4483 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 4483 13
	movl	%eax, -8(%rbp)
	.loc 1 4484 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 4484 13
	movl	%eax, -4(%rbp)
	.loc 1 4485 11
	movq	-8(%rbp), %rax
	.loc 1 4486 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	stbi__get_chunk_header, .-stbi__get_chunk_header
	.section	.rodata
.LC53:
	.string	"bad png sig"
	.text
	.type	stbi__check_png_header, @function
stbi__check_png_header:
.LFB636:
	.loc 1 4489 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 4492 10
	movl	$0, -4(%rbp)
	.loc 1 4492 4
	jmp	.L1321
.L1324:
	.loc 1 4493 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 4493 35
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	png_sig.11(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	.loc 1 4493 10
	cmpb	%dl, %al
	je	.L1322
	.loc 1 4493 47 discriminator 1
	leaq	.LC53(%rip), %rdi
	call	stbi__err
	jmp	.L1323
.L1322:
	.loc 1 4492 21 discriminator 2
	addl	$1, -4(%rbp)
.L1321:
	.loc 1 4492 4 discriminator 1
	cmpl	$7, -4(%rbp)
	jle	.L1324
	.loc 1 4494 11
	movl	$1, %eax
.L1323:
	.loc 1 4495 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	stbi__check_png_header, .-stbi__check_png_header
	.data
	.type	first_row_filter, @object
	.size	first_row_filter, 5
first_row_filter:
	.string	""
	.string	"\001"
	.ascii	"\005\006"
	.text
	.type	stbi__paeth, @function
stbi__paeth:
.LFB637:
	.loc 1 4526 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	.loc 1 4527 14
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 4527 8
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 1 4528 18
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	.loc 1 4528 8
	cltd
	xorl	%edx, %eax
	movl	%eax, -8(%rbp)
	subl	%edx, -8(%rbp)
	.loc 1 4529 18
	movl	-4(%rbp), %eax
	subl	-24(%rbp), %eax
	.loc 1 4529 8
	cltd
	xorl	%edx, %eax
	movl	%eax, -12(%rbp)
	subl	%edx, -12(%rbp)
	.loc 1 4530 18
	movl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	.loc 1 4530 8
	cltd
	xorl	%edx, %eax
	movl	%eax, -16(%rbp)
	subl	%edx, -16(%rbp)
	.loc 1 4531 7
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.L1326
	.loc 1 4531 17 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.L1326
	.loc 1 4531 37 discriminator 2
	movl	-20(%rbp), %eax
	jmp	.L1327
.L1326:
	.loc 1 4532 7
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.L1328
	.loc 1 4532 25 discriminator 1
	movl	-24(%rbp), %eax
	jmp	.L1327
.L1328:
	.loc 1 4533 11
	movl	-28(%rbp), %eax
.L1327:
	.loc 1 4534 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	stbi__paeth, .-stbi__paeth
	.section	.rodata
	.align 8
	.type	stbi__depth_scale_table, @object
	.size	stbi__depth_scale_table, 9
stbi__depth_scale_table:
	.string	""
	.string	"\377U"
	.string	"\021"
	.string	""
	.string	""
	.ascii	"\001"
	.align 8
.LC54:
	.string	"out_n == s->img_n || out_n == s->img_n+1"
.LC55:
	.string	"not enough pixels"
.LC56:
	.string	"invalid filter"
.LC57:
	.string	"invalid width"
.LC58:
	.string	"img_n+1 == out_n"
.LC59:
	.string	"img_n == 3"
	.text
	.type	stbi__create_png_image_raw, @function
stbi__create_png_image_raw:
.LFB638:
	.loc 1 4540 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movl	%ecx, -184(%rbp)
	movl	%r8d, -188(%rbp)
	movl	%r9d, -192(%rbp)
	.loc 1 4541 32
	cmpl	$16, 16(%rbp)
	jne	.L1330
	.loc 1 4541 32 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L1331
.L1330:
	.loc 1 4541 32 discriminator 2
	movl	$1, %eax
.L1331:
	.loc 1 4541 8 is_stmt 1 discriminator 4
	movl	%eax, -108(%rbp)
	.loc 1 4542 19 discriminator 4
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	.loc 1 4543 31 discriminator 4
	movl	-184(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, %edx
	.loc 1 4543 37 discriminator 4
	movl	-108(%rbp), %eax
	.loc 1 4543 21 discriminator 4
	imull	%edx, %eax
	movl	%eax, -124(%rbp)
	.loc 1 4546 8 discriminator 4
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -128(%rbp)
	.loc 1 4548 8 discriminator 4
	movl	-184(%rbp), %eax
	imull	-108(%rbp), %eax
	movl	%eax, -132(%rbp)
	.loc 1 4549 8 discriminator 4
	movl	-128(%rbp), %eax
	imull	-108(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 4550 8 discriminator 4
	movl	-188(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 1 4552 4 discriminator 4
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -184(%rbp)
	je	.L1332
	.loc 1 4552 4 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -184(%rbp)
	je	.L1332
	.loc 1 4552 4 discriminator 2
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx
	movl	$4552, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC54(%rip), %rdi
	call	__assert_fail@PLT
.L1332:
	.loc 1 4553 25 is_stmt 1
	movl	-192(%rbp), %esi
	movl	-188(%rbp), %eax
	movl	-132(%rbp), %edx
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	.loc 1 4553 11
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	.loc 1 4554 10
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 4554 7
	testq	%rax, %rax
	jne	.L1333
	.loc 1 4554 24 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1334
.L1333:
	.loc 1 4556 9
	movl	-188(%rbp), %esi
	movl	-128(%rbp), %eax
	movl	$7, %ecx
	movl	16(%rbp), %edx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 4556 7
	testl	%eax, %eax
	jne	.L1335
	.loc 1 4556 59 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1334
.L1335:
	.loc 1 4557 31
	movl	-128(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, %edx
	.loc 1 4557 35
	movl	16(%rbp), %eax
	imull	%edx, %eax
	.loc 1 4557 44
	addl	$7, %eax
	.loc 1 4557 20
	shrl	$3, %eax
	movl	%eax, -136(%rbp)
	.loc 1 4558 31
	movl	-136(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 4558 12
	movl	-192(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -140(%rbp)
	.loc 1 4563 7
	movl	-180(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jnb	.L1336
	.loc 1 4563 34 discriminator 1
	leaq	.LC55(%rip), %rdi
	call	stbi__err
	jmp	.L1334
.L1336:
	.loc 1 4565 10
	movl	$0, -24(%rbp)
	.loc 1 4565 4
	jmp	.L1337
.L1422:
.LBB1565:
	.loc 1 4566 23
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4566 37
	movl	-124(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4566 16
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 1 4568 24
	movq	-176(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -176(%rbp)
	.loc 1 4568 20
	movzbl	(%rax), %eax
	.loc 1 4568 11
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	.loc 1 4570 10
	cmpl	$4, -60(%rbp)
	jle	.L1338
	.loc 1 4571 17
	leaq	.LC56(%rip), %rdi
	call	stbi__err
	jmp	.L1334
.L1338:
	.loc 1 4573 10
	cmpl	$7, 16(%rbp)
	jg	.L1339
	.loc 1 4574 13
	movl	-136(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jbe	.L1340
	.loc 1 4574 42 discriminator 1
	leaq	.LC57(%rip), %rdi
	call	stbi__err
	jmp	.L1334
.L1340:
	.loc 1 4575 18
	movl	-184(%rbp), %eax
	imull	-188(%rbp), %eax
	.loc 1 4575 25
	subl	-136(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4575 14
	addq	%rax, -48(%rbp)
	.loc 1 4576 23
	movl	$1, -32(%rbp)
	.loc 1 4577 16
	movl	-136(%rbp), %eax
	movl	%eax, -36(%rbp)
.L1339:
	.loc 1 4579 19
	movl	-124(%rbp), %eax
	negq	%rax
	movq	%rax, %rdx
	.loc 1 4579 13
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 4582 10
	cmpl	$0, -24(%rbp)
	jne	.L1341
	.loc 1 4582 44 discriminator 1
	movl	-60(%rbp), %eax
	cltq
	leaq	first_row_filter(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 4582 26 discriminator 1
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
.L1341:
	.loc 1 4585 13
	movl	$0, -28(%rbp)
	.loc 1 4585 7
	jmp	.L1342
.L1352:
	cmpl	$6, -60(%rbp)
	ja	.L1343
	movl	-60(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1345(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1345(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1345:
	.long	.L1351-.L1345
	.long	.L1350-.L1345
	.long	.L1349-.L1345
	.long	.L1348-.L1345
	.long	.L1347-.L1345
	.long	.L1346-.L1345
	.long	.L1344-.L1345
	.text
.L1351:
	.loc 1 4587 51
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4587 42
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4587 51
	movzbl	(%rax), %eax
	.loc 1 4587 46
	movb	%al, (%rdx)
	.loc 1 4587 13
	jmp	.L1343
.L1350:
	.loc 1 4588 51
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4588 42
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4588 51
	movzbl	(%rax), %eax
	.loc 1 4588 46
	movb	%al, (%rdx)
	.loc 1 4588 13
	jmp	.L1343
.L1349:
	.loc 1 4589 48
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4589 42
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 4589 48
	addl	%ecx, %edx
	.loc 1 4589 46
	movb	%dl, (%rax)
	.loc 1 4589 13
	jmp	.L1343
.L1348:
	.loc 1 4590 48
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	.loc 1 4590 42
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 4590 48
	addl	%esi, %edx
	.loc 1 4590 46
	movb	%dl, (%rax)
	.loc 1 4590 13
	jmp	.L1343
.L1347:
	.loc 1 4591 48
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	.loc 1 4591 42
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4591 48
	leal	(%rbx,%rcx), %edx
	.loc 1 4591 46
	movb	%dl, (%rax)
	.loc 1 4591 13
	jmp	.L1343
.L1346:
	.loc 1 4592 51
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4592 42
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4592 51
	movzbl	(%rax), %eax
	.loc 1 4592 46
	movb	%al, (%rdx)
	.loc 1 4592 13
	jmp	.L1343
.L1344:
	.loc 1 4593 51
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4593 42
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4593 51
	movzbl	(%rax), %eax
	.loc 1 4593 46
	movb	%al, (%rdx)
	.loc 1 4593 13
	nop
.L1343:
	.loc 1 4585 35 discriminator 2
	addl	$1, -28(%rbp)
.L1342:
	.loc 1 4585 7 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1352
	.loc 1 4597 10
	cmpl	$8, 16(%rbp)
	jne	.L1353
	.loc 1 4598 13
	movl	-128(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L1354
	.loc 1 4599 16
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4599 24
	movb	$-1, (%rax)
.L1354:
	.loc 1 4600 14
	movl	-128(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	.loc 1 4601 14
	movl	-184(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	.loc 1 4602 16
	movl	-184(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
	jmp	.L1355
.L1353:
	.loc 1 4603 17
	cmpl	$16, 16(%rbp)
	jne	.L1356
	.loc 1 4604 13
	movl	-128(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L1357
	.loc 1 4605 16
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4605 33
	movb	$-1, (%rax)
	.loc 1 4606 16
	movl	-32(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4606 33
	movb	$-1, (%rax)
.L1357:
	.loc 1 4608 14
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	.loc 1 4609 14
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	.loc 1 4610 16
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
	jmp	.L1355
.L1356:
	.loc 1 4612 14
	addq	$1, -176(%rbp)
	.loc 1 4613 14
	addq	$1, -48(%rbp)
	.loc 1 4614 16
	addq	$1, -56(%rbp)
.L1355:
	.loc 1 4618 10
	cmpl	$7, 16(%rbp)
	jle	.L1358
	.loc 1 4618 21 discriminator 1
	movl	-128(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jne	.L1359
.L1358:
.LBB1566:
	.loc 1 4619 26
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	.loc 1 4619 14
	movl	-32(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -148(%rbp)
	cmpl	$6, -60(%rbp)
	ja	.L1360
	movl	-60(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1362(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1362(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1362:
	.long	.L1368-.L1362
	.long	.L1367-.L1362
	.long	.L1366-.L1362
	.long	.L1365-.L1362
	.long	.L1364-.L1362
	.long	.L1363-.L1362
	.long	.L1361-.L1362
	.text
.L1368:
	.loc 1 4625 40
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 4625 13
	jmp	.L1360
.L1367:
	.loc 1 4626 13
	movl	$0, -28(%rbp)
	jmp	.L1369
.L1370:
	.loc 1 4626 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4626 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 4626 57 discriminator 3
	addl	%ecx, %edx
	.loc 1 4626 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4626 13 discriminator 3
	addl	$1, -28(%rbp)
.L1369:
	.loc 1 4626 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1370
	.loc 1 4626 13
	jmp	.L1360
.L1366:
	.loc 1 4627 13 is_stmt 1
	movl	$0, -28(%rbp)
	jmp	.L1371
.L1372:
	.loc 1 4627 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4627 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 4627 57 discriminator 3
	addl	%ecx, %edx
	.loc 1 4627 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4627 13 discriminator 3
	addl	$1, -28(%rbp)
.L1371:
	.loc 1 4627 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1372
	.loc 1 4627 13
	jmp	.L1360
.L1365:
	.loc 1 4628 13 is_stmt 1
	movl	$0, -28(%rbp)
	jmp	.L1373
.L1374:
	.loc 1 4628 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %esi
	.loc 1 4628 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 4628 57 discriminator 3
	addl	%esi, %edx
	.loc 1 4628 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4628 13 discriminator 3
	addl	$1, -28(%rbp)
.L1373:
	.loc 1 4628 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1374
	.loc 1 4628 13
	jmp	.L1360
.L1364:
	.loc 1 4629 13 is_stmt 1
	movl	$0, -28(%rbp)
	jmp	.L1375
.L1376:
	.loc 1 4629 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	.loc 1 4629 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4629 57 discriminator 3
	leal	(%rbx,%rcx), %edx
	.loc 1 4629 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4629 13 discriminator 3
	addl	$1, -28(%rbp)
.L1375:
	.loc 1 4629 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1376
	.loc 1 4629 13
	jmp	.L1360
.L1363:
	.loc 1 4630 13 is_stmt 1
	movl	$0, -28(%rbp)
	jmp	.L1377
.L1378:
	.loc 1 4630 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	.loc 1 4630 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 4630 57 discriminator 3
	addl	%esi, %edx
	.loc 1 4630 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4630 13 discriminator 3
	addl	$1, -28(%rbp)
.L1377:
	.loc 1 4630 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1378
	.loc 1 4630 13
	jmp	.L1360
.L1361:
	.loc 1 4631 13 is_stmt 1
	movl	$0, -28(%rbp)
	jmp	.L1379
.L1380:
	.loc 1 4631 57 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	.loc 1 4631 51 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4631 57 discriminator 3
	leal	(%rbx,%rcx), %edx
	.loc 1 4631 55 discriminator 3
	movb	%dl, (%rax)
	.loc 1 4631 13 discriminator 3
	addl	$1, -28(%rbp)
.L1379:
	.loc 1 4631 13 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L1380
	.loc 1 4631 13
	nop
.L1360:
	.loc 1 4634 14 is_stmt 1
	movl	-148(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
.LBE1566:
	.loc 1 4618 40
	jmp	.L1381
.L1359:
	.loc 1 4636 10
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -184(%rbp)
	je	.L1382
	.loc 1 4636 10 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx
	movl	$4636, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L1382:
	cmpl	$6, -60(%rbp)
	ja	.L1383
	movl	-60(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1385(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1385(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1385:
	.long	.L1391-.L1385
	.long	.L1390-.L1385
	.long	.L1389-.L1385
	.long	.L1388-.L1385
	.long	.L1387-.L1385
	.long	.L1386-.L1385
	.long	.L1384-.L1385
	.text
.L1391:
	.loc 1 4642 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1392
.L1395:
	.loc 1 4642 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1393
.L1394:
	.loc 1 4642 60 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4642 51 discriminator 4
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4642 60 discriminator 4
	movzbl	(%rax), %eax
	.loc 1 4642 55 discriminator 4
	movb	%al, (%rdx)
	.loc 1 4642 13 discriminator 4
	addl	$1, -28(%rbp)
.L1393:
	.loc 1 4642 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1394
	.loc 1 4642 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1392:
	.loc 1 4642 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1395
	.loc 1 4642 13
	jmp	.L1383
.L1390:
	.loc 1 4643 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1396
.L1399:
	.loc 1 4643 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1397
.L1398:
	.loc 1 4643 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4643 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 4643 57 discriminator 4
	addl	%ecx, %edx
	.loc 1 4643 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4643 13 discriminator 4
	addl	$1, -28(%rbp)
.L1397:
	.loc 1 4643 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1398
	.loc 1 4643 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1396:
	.loc 1 4643 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1399
	.loc 1 4643 13
	jmp	.L1383
.L1389:
	.loc 1 4644 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1400
.L1403:
	.loc 1 4644 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1401
.L1402:
	.loc 1 4644 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4644 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 4644 57 discriminator 4
	addl	%ecx, %edx
	.loc 1 4644 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4644 13 discriminator 4
	addl	$1, -28(%rbp)
.L1401:
	.loc 1 4644 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1402
	.loc 1 4644 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1400:
	.loc 1 4644 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1403
	.loc 1 4644 13
	jmp	.L1383
.L1388:
	.loc 1 4645 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1404
.L1407:
	.loc 1 4645 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1405
.L1406:
	.loc 1 4645 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %esi
	.loc 1 4645 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 4645 57 discriminator 4
	addl	%esi, %edx
	.loc 1 4645 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4645 13 discriminator 4
	addl	$1, -28(%rbp)
.L1405:
	.loc 1 4645 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1406
	.loc 1 4645 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1404:
	.loc 1 4645 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1407
	.loc 1 4645 13
	jmp	.L1383
.L1387:
	.loc 1 4646 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1408
.L1411:
	.loc 1 4646 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1409
.L1410:
	.loc 1 4646 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	.loc 1 4646 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4646 57 discriminator 4
	leal	(%rbx,%rcx), %edx
	.loc 1 4646 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4646 13 discriminator 4
	addl	$1, -28(%rbp)
.L1409:
	.loc 1 4646 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1410
	.loc 1 4646 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1408:
	.loc 1 4646 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1411
	.loc 1 4646 13
	jmp	.L1383
.L1386:
	.loc 1 4647 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1412
.L1415:
	.loc 1 4647 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1413
.L1414:
	.loc 1 4647 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	.loc 1 4647 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 4647 57 discriminator 4
	addl	%esi, %edx
	.loc 1 4647 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4647 13 discriminator 4
	addl	$1, -28(%rbp)
.L1413:
	.loc 1 4647 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1414
	.loc 1 4647 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1412:
	.loc 1 4647 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1415
	.loc 1 4647 13
	jmp	.L1383
.L1384:
	.loc 1 4648 13 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L1416
.L1419:
	.loc 1 4648 13 is_stmt 0 discriminator 7
	movl	$0, -28(%rbp)
	jmp	.L1417
.L1418:
	.loc 1 4648 57 is_stmt 1 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-28(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	.loc 1 4648 51 discriminator 4
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4648 57 discriminator 4
	leal	(%rbx,%rcx), %edx
	.loc 1 4648 55 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4648 13 discriminator 4
	addl	$1, -28(%rbp)
.L1417:
	.loc 1 4648 13 is_stmt 0 discriminator 2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1418
	.loc 1 4648 13 discriminator 5
	subl	$1, -20(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
.L1416:
	.loc 1 4648 13 discriminator 6
	cmpl	$0, -20(%rbp)
	jne	.L1419
	.loc 1 4648 13
	nop
.L1383:
	.loc 1 4654 13 is_stmt 1
	cmpl	$16, 16(%rbp)
	jne	.L1381
	.loc 1 4655 20
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4655 34
	movl	-124(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4655 17
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 1 4656 19
	movl	$0, -20(%rbp)
	.loc 1 4656 13
	jmp	.L1420
.L1421:
	.loc 1 4657 19 discriminator 3
	movl	-32(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4657 36 discriminator 3
	movb	$-1, (%rax)
	.loc 1 4656 30 discriminator 3
	addl	$1, -20(%rbp)
	.loc 1 4656 37 discriminator 3
	movl	-132(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
.L1420:
	.loc 1 4656 13 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jb	.L1421
.L1381:
.LBE1565:
	.loc 1 4565 21 discriminator 2
	addl	$1, -24(%rbp)
.L1337:
	.loc 1 4565 4 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jb	.L1422
	.loc 1 4666 7
	cmpl	$7, 16(%rbp)
	jg	.L1423
	.loc 1 4667 13
	movl	$0, -24(%rbp)
	.loc 1 4667 7
	jmp	.L1424
.L1451:
.LBB1567:
	.loc 1 4668 26
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4668 40
	movl	-124(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4668 19
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 4669 26
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4669 40
	movl	-124(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 4669 46
	movl	-184(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4669 43
	addq	%rcx, %rax
	.loc 1 4669 53
	movl	-136(%rbp), %ecx
	subq	%rcx, %rax
	.loc 1 4669 19
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	.loc 1 4672 18
	cmpl	$0, 24(%rbp)
	jne	.L1425
	.loc 1 4672 18 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax
	cltq
	leaq	stbi__depth_scale_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	jmp	.L1426
.L1425:
	.loc 1 4672 18 discriminator 2
	movl	$1, %eax
.L1426:
	.loc 1 4672 18 discriminator 4
	movb	%al, -141(%rbp)
	.loc 1 4680 13 is_stmt 1 discriminator 4
	cmpl	$4, 16(%rbp)
	jne	.L1427
	.loc 1 4681 21
	movl	-128(%rbp), %eax
	imull	-188(%rbp), %eax
	.loc 1 4681 19
	movl	%eax, -28(%rbp)
	.loc 1 4681 13
	jmp	.L1428
.L1429:
	.loc 1 4682 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4682 31 discriminator 3
	shrb	$4, %al
	movl	%eax, %ecx
	.loc 1 4682 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4682 31 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4682 23 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4683 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4683 23 discriminator 3
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 1 4683 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4683 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4681 38 discriminator 3
	subl	$2, -28(%rbp)
	.loc 1 4681 43 discriminator 3
	addq	$1, -80(%rbp)
.L1428:
	.loc 1 4681 13 discriminator 1
	cmpl	$1, -28(%rbp)
	jg	.L1429
	.loc 1 4685 16
	cmpl	$0, -28(%rbp)
	jle	.L1430
	.loc 1 4685 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4685 39 discriminator 1
	shrb	$4, %al
	movl	%eax, %ecx
	.loc 1 4685 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4685 39 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4685 31 discriminator 1
	movb	%al, (%rdx)
	jmp	.L1430
.L1427:
	.loc 1 4686 20
	cmpl	$2, 16(%rbp)
	jne	.L1431
	.loc 1 4687 21
	movl	-128(%rbp), %eax
	imull	-188(%rbp), %eax
	.loc 1 4687 19
	movl	%eax, -28(%rbp)
	.loc 1 4687 13
	jmp	.L1432
.L1433:
	.loc 1 4688 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4688 31 discriminator 3
	shrb	$6, %al
	movl	%eax, %ecx
	.loc 1 4688 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4688 31 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4688 23 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4689 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4689 23 discriminator 3
	shrb	$4, %al
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 1 4689 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4689 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4690 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4690 23 discriminator 3
	shrb	$2, %al
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 1 4690 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4690 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4691 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4691 23 discriminator 3
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 1 4691 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4691 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4687 38 discriminator 3
	subl	$4, -28(%rbp)
	.loc 1 4687 43 discriminator 3
	addq	$1, -80(%rbp)
.L1432:
	.loc 1 4687 13 discriminator 1
	cmpl	$3, -28(%rbp)
	jg	.L1433
	.loc 1 4693 16
	cmpl	$0, -28(%rbp)
	jle	.L1434
	.loc 1 4693 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4693 39 discriminator 1
	shrb	$6, %al
	movl	%eax, %ecx
	.loc 1 4693 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4693 39 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4693 31 discriminator 1
	movb	%al, (%rdx)
.L1434:
	.loc 1 4694 16
	cmpl	$1, -28(%rbp)
	jle	.L1435
	.loc 1 4694 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4694 31 discriminator 1
	shrb	$4, %al
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 1 4694 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4694 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1435:
	.loc 1 4695 16
	cmpl	$2, -28(%rbp)
	jle	.L1430
	.loc 1 4695 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4695 31 discriminator 1
	shrb	$2, %al
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 1 4695 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4695 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	jmp	.L1430
.L1431:
	.loc 1 4696 20
	cmpl	$1, 16(%rbp)
	jne	.L1430
	.loc 1 4697 21
	movl	-128(%rbp), %eax
	imull	-188(%rbp), %eax
	.loc 1 4697 19
	movl	%eax, -28(%rbp)
	.loc 1 4697 13
	jmp	.L1436
.L1437:
	.loc 1 4698 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4698 31 discriminator 3
	shrb	$7, %al
	movl	%eax, %ecx
	.loc 1 4698 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4698 31 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4698 23 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4699 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4699 23 discriminator 3
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4699 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4699 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4700 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4700 23 discriminator 3
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4700 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4700 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4701 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4701 23 discriminator 3
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4701 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4701 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4702 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4702 23 discriminator 3
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4702 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4702 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4703 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4703 23 discriminator 3
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4703 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4703 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4704 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4704 23 discriminator 3
	shrb	%al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4704 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4704 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4705 35 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4705 23 discriminator 3
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4705 20 discriminator 3
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4705 23 discriminator 3
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
	.loc 1 4697 38 discriminator 3
	subl	$8, -28(%rbp)
	.loc 1 4697 43 discriminator 3
	addq	$1, -80(%rbp)
.L1436:
	.loc 1 4697 13 discriminator 1
	cmpl	$7, -28(%rbp)
	jg	.L1437
	.loc 1 4707 16
	cmpl	$0, -28(%rbp)
	jle	.L1438
	.loc 1 4707 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4707 39 discriminator 1
	shrb	$7, %al
	movl	%eax, %ecx
	.loc 1 4707 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4707 39 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	.loc 1 4707 31 discriminator 1
	movb	%al, (%rdx)
.L1438:
	.loc 1 4708 16
	cmpl	$1, -28(%rbp)
	jle	.L1439
	.loc 1 4708 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4708 31 discriminator 1
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4708 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4708 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1439:
	.loc 1 4709 16
	cmpl	$2, -28(%rbp)
	jle	.L1440
	.loc 1 4709 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4709 31 discriminator 1
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4709 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4709 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1440:
	.loc 1 4710 16
	cmpl	$3, -28(%rbp)
	jle	.L1441
	.loc 1 4710 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4710 31 discriminator 1
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4710 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4710 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1441:
	.loc 1 4711 16
	cmpl	$4, -28(%rbp)
	jle	.L1442
	.loc 1 4711 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4711 31 discriminator 1
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4711 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4711 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1442:
	.loc 1 4712 16
	cmpl	$5, -28(%rbp)
	jle	.L1443
	.loc 1 4712 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4712 31 discriminator 1
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4712 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4712 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1443:
	.loc 1 4713 16
	cmpl	$6, -28(%rbp)
	jle	.L1430
	.loc 1 4713 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4713 31 discriminator 1
	shrb	%al
	andl	$1, %eax
	movl	%eax, %ecx
	.loc 1 4713 28 discriminator 1
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -72(%rbp)
	.loc 1 4713 31 discriminator 1
	movl	%ecx, %eax
	mulb	-141(%rbp)
	movb	%al, (%rdx)
.L1430:
	.loc 1 4715 13
	movl	-128(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L1444
.LBB1568:
	.loc 1 4718 20
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 4718 34
	movl	-124(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 1 4718 17
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 4719 16
	cmpl	$1, -128(%rbp)
	jne	.L1445
	.loc 1 4720 24
	movl	-188(%rbp), %eax
	subl	$1, %eax
	.loc 1 4720 22
	movl	%eax, -84(%rbp)
	.loc 1 4720 16
	jmp	.L1446
.L1447:
	.loc 1 4721 24 discriminator 3
	movl	-84(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 4721 22 discriminator 3
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4721 30 discriminator 3
	movb	$-1, (%rax)
	.loc 1 4722 35 discriminator 3
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4722 24 discriminator 3
	movl	-84(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rcx
	.loc 1 4722 22 discriminator 3
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4722 35 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4722 30 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4720 36 discriminator 3
	subl	$1, -84(%rbp)
.L1446:
	.loc 1 4720 16 discriminator 1
	cmpl	$0, -84(%rbp)
	jns	.L1447
	jmp	.L1444
.L1445:
	.loc 1 4725 16
	cmpl	$3, -128(%rbp)
	je	.L1448
	.loc 1 4725 16 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx
	movl	$4725, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC59(%rip), %rdi
	call	__assert_fail@PLT
.L1448:
	.loc 1 4726 24 is_stmt 1
	movl	-188(%rbp), %eax
	subl	$1, %eax
	.loc 1 4726 22
	movl	%eax, -84(%rbp)
	.loc 1 4726 16
	jmp	.L1449
.L1450:
	.loc 1 4727 24 discriminator 3
	movl	-84(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 4727 22 discriminator 3
	leaq	3(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4727 30 discriminator 3
	movb	$-1, (%rax)
	.loc 1 4728 37 discriminator 3
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 1 4728 35 discriminator 3
	leaq	2(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4728 24 discriminator 3
	movl	-84(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rdx
	.loc 1 4728 22 discriminator 3
	leaq	2(%rdx), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4728 35 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4728 30 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4729 37 discriminator 3
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 1 4729 35 discriminator 3
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4729 24 discriminator 3
	movl	-84(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rdx
	.loc 1 4729 22 discriminator 3
	leaq	1(%rdx), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4729 35 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4729 30 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4730 37 discriminator 3
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 4730 35 discriminator 3
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4730 24 discriminator 3
	movl	-84(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rcx
	.loc 1 4730 22 discriminator 3
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 4730 35 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4730 30 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4726 36 discriminator 3
	subl	$1, -84(%rbp)
.L1449:
	.loc 1 4726 16 discriminator 1
	cmpl	$0, -84(%rbp)
	jns	.L1450
.L1444:
.LBE1568:
.LBE1567:
	.loc 1 4667 24 discriminator 2
	addl	$1, -24(%rbp)
.L1424:
	.loc 1 4667 7 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jb	.L1451
	jmp	.L1452
.L1423:
	.loc 1 4735 14
	cmpl	$16, 16(%rbp)
	jne	.L1452
.LBB1569:
	.loc 1 4740 16
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 1 4741 21
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 1 4743 12
	movl	$0, -20(%rbp)
	.loc 1 4743 7
	jmp	.L1453
.L1454:
	.loc 1 4744 23 discriminator 3
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 4744 27 discriminator 3
	sall	$8, %eax
	.loc 1 4744 33 discriminator 3
	movl	%eax, %edx
	.loc 1 4744 38 discriminator 3
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 4744 33 discriminator 3
	orl	%edx, %eax
	movl	%eax, %edx
	.loc 1 4744 17 discriminator 3
	movq	-104(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 4743 31 discriminator 3
	addl	$1, -20(%rbp)
	.loc 1 4743 40 discriminator 3
	addq	$2, -104(%rbp)
	.loc 1 4743 46 discriminator 3
	addq	$2, -96(%rbp)
.L1453:
	.loc 1 4743 21 discriminator 1
	movl	-188(%rbp), %eax
	imull	-192(%rbp), %eax
	movl	%eax, %edx
	.loc 1 4743 23 discriminator 1
	movl	-184(%rbp), %eax
	imull	%edx, %eax
	.loc 1 4743 7 discriminator 1
	cmpl	%eax, -20(%rbp)
	jb	.L1454
.L1452:
.LBE1569:
	.loc 1 4748 11
	movl	$1, %eax
.L1334:
	.loc 1 4749 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	stbi__create_png_image_raw, .-stbi__create_png_image_raw
	.type	stbi__create_png_image, @function
stbi__create_png_image:
.LFB639:
	.loc 1 4752 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	%ecx, -200(%rbp)
	movl	%r8d, -204(%rbp)
	movl	%r9d, -208(%rbp)
	.loc 1 4753 33
	cmpl	$16, -204(%rbp)
	jne	.L1456
	.loc 1 4753 33 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L1457
.L1456:
	.loc 1 4753 33 discriminator 2
	movl	$1, %eax
.L1457:
	.loc 1 4753 8 is_stmt 1 discriminator 4
	movl	%eax, -16(%rbp)
	.loc 1 4754 8 discriminator 4
	movl	-200(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 1 4757 7 discriminator 4
	cmpl	$0, 16(%rbp)
	jne	.L1458
	.loc 1 4758 93
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4758 14
	movl	4(%rax), %r9d
	.loc 1 4758 80
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4758 14
	movl	(%rax), %r8d
	movl	-200(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	-208(%rbp), %edi
	pushq	%rdi
	movl	-204(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image_raw
	addq	$16, %rsp
	jmp	.L1459
.L1458:
	.loc 1 4761 56
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4761 59
	movl	4(%rax), %eax
	.loc 1 4761 24
	movl	%eax, %esi
	.loc 1 4761 43
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4761 46
	movl	(%rax), %eax
	.loc 1 4761 24
	movl	%eax, %edi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edx
	call	stbi__malloc_mad3
	movq	%rax, -32(%rbp)
	.loc 1 4762 10
	movl	$0, -4(%rbp)
	.loc 1 4762 4
	jmp	.L1460
.L1467:
.LBB1570:
	.loc 1 4763 11
	movl	$0, -80(%rbp)
	movl	$4, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$2, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -56(%rbp)
	.loc 1 4764 11
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movl	$4, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$2, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$1, -88(%rbp)
	.loc 1 4765 11
	movl	$8, -144(%rbp)
	movl	$8, -140(%rbp)
	movl	$4, -136(%rbp)
	movl	$4, -132(%rbp)
	movl	$2, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$1, -120(%rbp)
	.loc 1 4766 11
	movl	$8, -176(%rbp)
	movl	$8, -172(%rbp)
	movl	$8, -168(%rbp)
	movl	$4, -164(%rbp)
	movl	$4, -160(%rbp)
	movl	$2, -156(%rbp)
	movl	$2, -152(%rbp)
	.loc 1 4769 13
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4769 16
	movl	(%rax), %edx
	.loc 1 4769 31
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	.loc 1 4769 24
	subl	%eax, %edx
	.loc 1 4769 41
	movl	-4(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	.loc 1 4769 35
	addl	%edx, %eax
	.loc 1 4769 44
	leal	-1(%rax), %edx
	.loc 1 4769 54
	movl	-4(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	movl	%eax, %ecx
	.loc 1 4769 48
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	.loc 1 4769 9
	movl	%eax, -36(%rbp)
	.loc 1 4770 13
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4770 16
	movl	4(%rax), %edx
	.loc 1 4770 31
	movl	-4(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	.loc 1 4770 24
	subl	%eax, %edx
	.loc 1 4770 41
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	.loc 1 4770 35
	addl	%edx, %eax
	.loc 1 4770 44
	leal	-1(%rax), %edx
	.loc 1 4770 54
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	movl	%eax, %ecx
	.loc 1 4770 48
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	.loc 1 4770 9
	movl	%eax, -40(%rbp)
	.loc 1 4771 10
	cmpl	$0, -36(%rbp)
	je	.L1461
	.loc 1 4771 13 discriminator 1
	cmpl	$0, -40(%rbp)
	je	.L1461
.LBB1571:
	.loc 1 4772 38
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4772 41
	movl	8(%rax), %eax
	.loc 1 4772 49
	imull	-36(%rbp), %eax
	.loc 1 4772 53
	imull	-204(%rbp), %eax
	.loc 1 4772 62
	addl	$7, %eax
	.loc 1 4772 67
	sarl	$3, %eax
	.loc 1 4772 73
	addl	$1, %eax
	.loc 1 4772 78
	imull	-40(%rbp), %eax
	.loc 1 4772 23
	movl	%eax, -44(%rbp)
	.loc 1 4773 15
	movl	-40(%rbp), %r9d
	movl	-36(%rbp), %r8d
	movl	-200(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	-208(%rbp), %edi
	pushq	%rdi
	movl	-204(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image_raw
	addq	$16, %rsp
	.loc 1 4773 13
	testl	%eax, %eax
	jne	.L1462
	.loc 1 4774 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4775 20
	movl	$0, %eax
	jmp	.L1459
.L1462:
	.loc 1 4777 16
	movl	$0, -12(%rbp)
	.loc 1 4777 10
	jmp	.L1463
.L1466:
	.loc 1 4778 19
	movl	$0, -8(%rbp)
	.loc 1 4778 13
	jmp	.L1464
.L1465:
.LBB1572:
	.loc 1 4779 34 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	.loc 1 4779 29 discriminator 3
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 4779 43 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	.loc 1 4779 20 discriminator 3
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	.loc 1 4780 34 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	.loc 1 4780 29 discriminator 3
	imull	-8(%rbp), %eax
	movl	%eax, %edx
	.loc 1 4780 43 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	.loc 1 4780 20 discriminator 3
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	.loc 1 4781 16 discriminator 3
	movl	-20(%rbp), %eax
	cltq
	.loc 1 4782 24 discriminator 3
	movq	-184(%rbp), %rdx
	movq	24(%rdx), %rcx
	.loc 1 4782 34 discriminator 3
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	imull	-36(%rbp), %esi
	.loc 1 4782 36 discriminator 3
	movl	-8(%rbp), %edx
	addl	%esi, %edx
	.loc 1 4782 39 discriminator 3
	imull	-20(%rbp), %edx
	movslq	%edx, %rdx
	.loc 1 4782 30 discriminator 3
	leaq	(%rcx,%rdx), %rsi
	.loc 1 4781 38 discriminator 3
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 1 4781 41 discriminator 3
	movl	(%rdx), %ecx
	.loc 1 4781 36 discriminator 3
	movl	-48(%rbp), %edx
	imull	%edx, %ecx
	.loc 1 4781 48 discriminator 3
	movl	-20(%rbp), %edx
	imull	%ecx, %edx
	movl	%edx, %ecx
	.loc 1 4781 66 discriminator 3
	movl	-52(%rbp), %edx
	imull	-20(%rbp), %edx
	movslq	%edx, %rdx
	.loc 1 4781 59 discriminator 3
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 1 4781 16 discriminator 3
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.LBE1572:
	.loc 1 4778 30 discriminator 3
	addl	$1, -8(%rbp)
.L1464:
	.loc 1 4778 13 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L1465
	.loc 1 4777 27 discriminator 2
	addl	$1, -12(%rbp)
.L1463:
	.loc 1 4777 10 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L1466
	.loc 1 4785 10
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4786 21
	movl	-44(%rbp), %eax
	addq	%rax, -192(%rbp)
	.loc 1 4787 25
	movl	-44(%rbp), %eax
	subl	%eax, -196(%rbp)
.L1461:
.LBE1571:
.LBE1570:
	.loc 1 4762 21
	addl	$1, -4(%rbp)
.L1460:
	.loc 1 4762 4 discriminator 1
	cmpl	$6, -4(%rbp)
	jle	.L1467
	.loc 1 4790 11
	movq	-184(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 4792 11
	movl	$1, %eax
.L1459:
	.loc 1 4793 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	stbi__create_png_image, .-stbi__create_png_image
	.section	.rodata
.LC60:
	.string	"out_n == 2 || out_n == 4"
	.text
	.type	stbi__compute_transparency, @function
stbi__compute_transparency:
.LFB640:
	.loc 1 4796 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 4797 19
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 4798 35
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 4798 46
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4798 20
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 4799 13
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 4803 4
	cmpl	$2, -52(%rbp)
	je	.L1469
	.loc 1 4803 4 is_stmt 0 discriminator 1
	cmpl	$4, -52(%rbp)
	je	.L1469
	.loc 1 4803 4 discriminator 2
	leaq	__PRETTY_FUNCTION__.9(%rip), %rcx
	movl	$4803, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L1469:
	.loc 1 4805 7 is_stmt 1
	cmpl	$2, -52(%rbp)
	jne	.L1470
	.loc 1 4806 13
	movl	$0, -4(%rbp)
	.loc 1 4806 7
	jmp	.L1471
.L1474:
	.loc 1 4807 19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 4807 28
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4807 15
	cmpb	%al, %dl
	jne	.L1472
	.loc 1 4807 15 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L1473
.L1472:
	.loc 1 4807 15 discriminator 2
	movl	$-1, %edx
.L1473:
	.loc 1 4807 11 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rax
	addq	$1, %rax
	.loc 1 4807 15 discriminator 4
	movb	%dl, (%rax)
	.loc 1 4808 12 discriminator 4
	addq	$2, -16(%rbp)
	.loc 1 4806 34 discriminator 4
	addl	$1, -4(%rbp)
.L1471:
	.loc 1 4806 7 discriminator 2
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1474
	jmp	.L1475
.L1470:
	.loc 1 4811 13
	movl	$0, -4(%rbp)
	.loc 1 4811 7
	jmp	.L1476
.L1478:
	.loc 1 4812 15
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 4812 24
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 4812 13
	cmpb	%al, %dl
	jne	.L1477
	.loc 1 4812 32 discriminator 1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	.loc 1 4812 41 discriminator 1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 4812 28 discriminator 1
	cmpb	%al, %dl
	jne	.L1477
	.loc 1 4812 49 discriminator 2
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	.loc 1 4812 58 discriminator 2
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 4812 45 discriminator 2
	cmpb	%al, %dl
	jne	.L1477
	.loc 1 4813 14
	movq	-16(%rbp), %rax
	addq	$3, %rax
	.loc 1 4813 18
	movb	$0, (%rax)
.L1477:
	.loc 1 4814 12 discriminator 2
	addq	$4, -16(%rbp)
	.loc 1 4811 34 discriminator 2
	addl	$1, -4(%rbp)
.L1476:
	.loc 1 4811 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1478
.L1475:
	.loc 1 4817 11
	movl	$1, %eax
	.loc 1 4818 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	stbi__compute_transparency, .-stbi__compute_transparency
	.type	stbi__compute_transparency16, @function
stbi__compute_transparency16:
.LFB641:
	.loc 1 4821 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 1 4822 19
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 4823 35
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 4823 46
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4823 20
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 4824 18
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 4828 4
	cmpl	$2, -52(%rbp)
	je	.L1481
	.loc 1 4828 4 is_stmt 0 discriminator 1
	cmpl	$4, -52(%rbp)
	je	.L1481
	.loc 1 4828 4 discriminator 2
	leaq	__PRETTY_FUNCTION__.8(%rip), %rcx
	movl	$4828, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L1481:
	.loc 1 4830 7 is_stmt 1
	cmpl	$2, -52(%rbp)
	jne	.L1482
	.loc 1 4831 14
	movl	$0, -4(%rbp)
	.loc 1 4831 7
	jmp	.L1483
.L1486:
	.loc 1 4832 19
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 4832 28
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 4832 15
	cmpw	%ax, %dx
	jne	.L1484
	.loc 1 4832 15 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L1485
.L1484:
	.loc 1 4832 15 discriminator 2
	movl	$-1, %edx
.L1485:
	.loc 1 4832 11 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rax
	addq	$2, %rax
	.loc 1 4832 15 discriminator 4
	movw	%dx, (%rax)
	.loc 1 4833 12 discriminator 4
	addq	$4, -16(%rbp)
	.loc 1 4831 36 discriminator 4
	addl	$1, -4(%rbp)
.L1483:
	.loc 1 4831 7 discriminator 2
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1486
	jmp	.L1487
.L1482:
	.loc 1 4836 14
	movl	$0, -4(%rbp)
	.loc 1 4836 7
	jmp	.L1488
.L1490:
	.loc 1 4837 15
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	.loc 1 4837 24
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 1 4837 13
	cmpw	%ax, %dx
	jne	.L1489
	.loc 1 4837 32 discriminator 1
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %edx
	.loc 1 4837 41 discriminator 1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	.loc 1 4837 28 discriminator 1
	cmpw	%ax, %dx
	jne	.L1489
	.loc 1 4837 49 discriminator 2
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %edx
	.loc 1 4837 58 discriminator 2
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	.loc 1 4837 45 discriminator 2
	cmpw	%ax, %dx
	jne	.L1489
	.loc 1 4838 14
	movq	-16(%rbp), %rax
	addq	$6, %rax
	.loc 1 4838 18
	movw	$0, (%rax)
.L1489:
	.loc 1 4839 12 discriminator 2
	addq	$8, -16(%rbp)
	.loc 1 4836 36 discriminator 2
	addl	$1, -4(%rbp)
.L1488:
	.loc 1 4836 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1490
.L1487:
	.loc 1 4842 11
	movl	$1, %eax
	.loc 1 4843 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	stbi__compute_transparency16, .-stbi__compute_transparency16
	.type	stbi__expand_png_palette, @function
stbi__expand_png_palette:
.LFB642:
	.loc 1 4846 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	.loc 1 4847 35
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4847 38
	movl	(%rax), %edx
	.loc 1 4847 49
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 4847 52
	movl	4(%rax), %eax
	.loc 1 4847 20
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 1 4848 28
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 4850 20
	movl	-20(%rbp), %eax
	movl	-72(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -16(%rbp)
	.loc 1 4851 7
	cmpq	$0, -16(%rbp)
	jne	.L1493
	.loc 1 4851 26 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1494
.L1493:
	.loc 1 4854 13
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 4856 7
	cmpl	$3, -72(%rbp)
	jne	.L1495
	.loc 1 4857 13
	movl	$0, -4(%rbp)
	.loc 1 4857 7
	jmp	.L1496
.L1497:
.LBB1573:
	.loc 1 4858 22 discriminator 3
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 4858 14 discriminator 3
	sall	$2, %eax
	movl	%eax, -48(%rbp)
	.loc 1 4859 24 discriminator 3
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4859 15 discriminator 3
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4860 24 discriminator 3
	movl	-48(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4860 11 discriminator 3
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	.loc 1 4860 24 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4860 15 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4861 24 discriminator 3
	movl	-48(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4861 11 discriminator 3
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	.loc 1 4861 24 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4861 15 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4862 12 discriminator 3
	addq	$3, -16(%rbp)
.LBE1573:
	.loc 1 4857 34 discriminator 3
	addl	$1, -4(%rbp)
.L1496:
	.loc 1 4857 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1497
	jmp	.L1498
.L1495:
	.loc 1 4865 13
	movl	$0, -4(%rbp)
	.loc 1 4865 7
	jmp	.L1499
.L1500:
.LBB1574:
	.loc 1 4866 22 discriminator 3
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 4866 14 discriminator 3
	sall	$2, %eax
	movl	%eax, -44(%rbp)
	.loc 1 4867 24 discriminator 3
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 4867 15 discriminator 3
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4868 24 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4868 11 discriminator 3
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	.loc 1 4868 24 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4868 15 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4869 24 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4869 11 discriminator 3
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	.loc 1 4869 24 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4869 15 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4870 24 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	leaq	3(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 4870 11 discriminator 3
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	.loc 1 4870 24 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 4870 15 discriminator 3
	movb	%al, (%rdx)
	.loc 1 4871 12 discriminator 3
	addq	$4, -16(%rbp)
.LBE1574:
	.loc 1 4865 34 discriminator 3
	addl	$1, -4(%rbp)
.L1499:
	.loc 1 4865 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1500
.L1498:
	.loc 1 4874 4
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 4875 11
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 1 4879 11
	movl	$1, %eax
.L1494:
	.loc 1 4880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	stbi__expand_png_palette, .-stbi__expand_png_palette
	.local	stbi__unpremultiply_on_load
	.comm	stbi__unpremultiply_on_load,4,4
	.local	stbi__de_iphone_flag
	.comm	stbi__de_iphone_flag,4,4
	.globl	stbi_set_unpremultiply_on_load
	.type	stbi_set_unpremultiply_on_load, @function
stbi_set_unpremultiply_on_load:
.LFB643:
	.loc 1 4886 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 4887 32
	movl	-4(%rbp), %eax
	movl	%eax, stbi__unpremultiply_on_load(%rip)
	.loc 1 4888 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	stbi_set_unpremultiply_on_load, .-stbi_set_unpremultiply_on_load
	.globl	stbi_convert_iphone_png_to_rgb
	.type	stbi_convert_iphone_png_to_rgb, @function
stbi_convert_iphone_png_to_rgb:
.LFB644:
	.loc 1 4891 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 4892 25
	movl	-4(%rbp), %eax
	movl	%eax, stbi__de_iphone_flag(%rip)
	.loc 1 4893 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	stbi_convert_iphone_png_to_rgb, .-stbi_convert_iphone_png_to_rgb
	.section	.rodata
.LC61:
	.string	"s->img_out_n == 4"
	.text
	.type	stbi__de_iphone, @function
stbi__de_iphone:
.LFB645:
	.loc 1 4896 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 1 4897 19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 1 4898 35
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 4898 46
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4898 20
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 4899 13
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 4901 9
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 4901 7
	cmpl	$3, %eax
	jne	.L1504
	.loc 1 4902 13
	movl	$0, -4(%rbp)
	.loc 1 4902 7
	jmp	.L1505
.L1506:
.LBB1575:
	.loc 1 4903 18 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	.loc 1 4904 15 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4905 11 discriminator 3
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 4905 15 discriminator 3
	movzbl	-33(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 4906 12 discriminator 3
	addq	$3, -16(%rbp)
.LBE1575:
	.loc 1 4902 34 discriminator 3
	addl	$1, -4(%rbp)
.L1505:
	.loc 1 4902 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1506
	.loc 1 4936 1
	jmp	.L1516
.L1504:
	.loc 1 4909 7
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$4, %eax
	je	.L1508
	.loc 1 4909 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7(%rip), %rcx
	movl	$4909, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC61(%rip), %rdi
	call	__assert_fail@PLT
.L1508:
	.loc 1 4910 11 is_stmt 1
	movl	stbi__unpremultiply_on_load(%rip), %eax
	.loc 1 4910 10
	testl	%eax, %eax
	je	.L1509
	.loc 1 4912 16
	movl	$0, -4(%rbp)
	.loc 1 4912 10
	jmp	.L1510
.L1513:
.LBB1576:
	.loc 1 4913 21
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -30(%rbp)
	.loc 1 4914 21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -31(%rbp)
	.loc 1 4915 16
	cmpb	$0, -30(%rbp)
	je	.L1511
.LBB1577:
	.loc 1 4916 24
	movzbl	-30(%rbp), %eax
	shrb	%al
	movb	%al, -32(%rbp)
	.loc 1 4917 25
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 4917 29
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	.loc 1 4917 35
	movzbl	-32(%rbp), %eax
	addl	%ecx, %eax
	.loc 1 4917 43
	movzbl	-30(%rbp), %esi
	cltd
	idivl	%esi
	.loc 1 4917 21
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4918 25
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 4918 29
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	.loc 1 4918 35
	movzbl	-32(%rbp), %eax
	addl	%ecx, %eax
	.loc 1 4918 43
	movzbl	-30(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	.loc 1 4918 17
	movq	-16(%rbp), %rax
	addq	$1, %rax
	.loc 1 4918 21
	movb	%dl, (%rax)
	.loc 1 4919 29
	movzbl	-31(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	.loc 1 4919 35
	movzbl	-32(%rbp), %eax
	addl	%ecx, %eax
	.loc 1 4919 43
	movzbl	-30(%rbp), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	.loc 1 4919 17
	movq	-16(%rbp), %rax
	addq	$2, %rax
	.loc 1 4919 21
	movb	%dl, (%rax)
.LBE1577:
	jmp	.L1512
.L1511:
	.loc 1 4921 21
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4922 17
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 4922 21
	movzbl	-31(%rbp), %eax
	movb	%al, (%rdx)
.L1512:
	.loc 1 4924 15 discriminator 2
	addq	$4, -16(%rbp)
.LBE1576:
	.loc 1 4912 37 discriminator 2
	addl	$1, -4(%rbp)
.L1510:
	.loc 1 4912 10 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1513
	.loc 1 4936 1
	jmp	.L1516
.L1509:
	.loc 1 4928 16
	movl	$0, -4(%rbp)
	.loc 1 4928 10
	jmp	.L1514
.L1515:
.LBB1578:
	.loc 1 4929 21 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	.loc 1 4930 18 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 4931 14 discriminator 3
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 4931 18 discriminator 3
	movzbl	-29(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 4932 15 discriminator 3
	addq	$4, -16(%rbp)
.LBE1578:
	.loc 1 4928 37 discriminator 3
	addl	$1, -4(%rbp)
.L1514:
	.loc 1 4928 10 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1515
.L1516:
	.loc 1 4936 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	stbi__de_iphone, .-stbi__de_iphone
	.section	.rodata
.LC62:
	.string	"multiple IHDR"
.LC63:
	.string	"bad IHDR len"
.LC64:
	.string	"1/2/4/8/16-bit only"
.LC65:
	.string	"bad ctype"
.LC66:
	.string	"bad comp method"
.LC67:
	.string	"bad filter method"
.LC68:
	.string	"bad interlace method"
.LC69:
	.string	"0-pixel image"
.LC70:
	.string	"first not IHDR"
.LC71:
	.string	"invalid PLTE"
.LC72:
	.string	"tRNS after IDAT"
.LC73:
	.string	"tRNS before PLTE"
.LC74:
	.string	"bad tRNS len"
.LC75:
	.string	"tRNS with alpha"
.LC76:
	.string	"no PLTE"
.LC77:
	.string	"outofdata"
.LC78:
	.string	"no IDAT"
	.text
	.type	stbi__parse_png_file, @function
stbi__parse_png_file:
.LFB646:
	.loc 1 4941 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1160, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1160(%rbp)
	movl	%esi, -1164(%rbp)
	movl	%edx, -1168(%rbp)
	.loc 1 4942 27
	movb	$0, -17(%rbp)
	.loc 1 4943 12
	movb	$0, -18(%rbp)
	.loc 1 4943 25
	movw	$0, -1123(%rbp)
	movb	$0, -1121(%rbp)
	.loc 1 4945 17
	movl	$0, -24(%rbp)
	.loc 1 4945 25
	movl	$0, -28(%rbp)
	.loc 1 4945 43
	movl	$0, -36(%rbp)
	.loc 1 4946 8
	movl	$1, -40(%rbp)
	.loc 1 4946 18
	movl	$0, -48(%rbp)
	.loc 1 4946 31
	movl	$0, -52(%rbp)
	.loc 1 4946 40
	movl	$0, -56(%rbp)
	.loc 1 4947 19
	movq	-1160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 1 4949 16
	movq	-1160(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 4950 13
	movq	-1160(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 4951 11
	movq	-1160(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 1 4953 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__check_png_header
	.loc 1 4953 7
	testl	%eax, %eax
	jne	.L1518
	.loc 1 4953 43 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1518:
	.loc 1 4955 7
	cmpl	$1, -1164(%rbp)
	jne	.L1520
	.loc 1 4955 40 discriminator 1
	movl	$1, %eax
	jmp	.L1598
.L1520:
.LBB1579:
	.loc 1 4958 26
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_chunk_header
	movq	%rax, -1140(%rbp)
	.loc 1 4959 16
	movl	-1136(%rbp), %eax
	.loc 1 4959 7
	cmpl	$1951551059, %eax
	je	.L1521
	cmpl	$1951551059, %eax
	ja	.L1522
	cmpl	$1347179589, %eax
	je	.L1523
	cmpl	$1347179589, %eax
	ja	.L1522
	cmpl	$1229472850, %eax
	je	.L1524
	cmpl	$1229472850, %eax
	ja	.L1522
	cmpl	$1229278788, %eax
	je	.L1525
	cmpl	$1229278788, %eax
	ja	.L1522
	cmpl	$1130840649, %eax
	je	.L1526
	cmpl	$1229209940, %eax
	je	.L1527
	jmp	.L1522
.L1526:
	.loc 1 4961 23
	movl	$1, -56(%rbp)
	.loc 1 4962 28
	movl	-1140(%rbp), %eax
	.loc 1 4962 13
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 4963 13
	jmp	.L1528
.L1524:
.LBB1580:
	.loc 1 4966 16
	cmpl	$0, -40(%rbp)
	jne	.L1529
	.loc 1 4966 32 discriminator 1
	leaq	.LC62(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1529:
	.loc 1 4967 19
	movl	$0, -40(%rbp)
	.loc 1 4968 18
	movl	-1140(%rbp), %eax
	.loc 1 4968 16
	cmpl	$13, %eax
	je	.L1531
	.loc 1 4968 40 discriminator 1
	leaq	.LC63(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1531:
	.loc 1 4969 24
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 4969 22
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 4970 24
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 4970 22
	movq	-64(%rbp), %rdx
	movl	%eax, 4(%rdx)
	.loc 1 4971 18
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4971 16
	cmpl	$16777216, %eax
	jbe	.L1532
	.loc 1 4971 56 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1532:
	.loc 1 4972 18
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 4972 16
	cmpl	$16777216, %eax
	jbe	.L1533
	.loc 1 4972 56 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1533:
	.loc 1 4973 24
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 4973 22
	movq	-1160(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 1 4973 45
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4973 43
	cmpl	$1, %eax
	je	.L1534
	.loc 1 4973 62 discriminator 1
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4973 58 discriminator 1
	cmpl	$2, %eax
	je	.L1534
	.loc 1 4973 79 discriminator 2
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4973 75 discriminator 2
	cmpl	$4, %eax
	je	.L1534
	.loc 1 4973 96 discriminator 3
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4973 92 discriminator 3
	cmpl	$8, %eax
	je	.L1534
	.loc 1 4973 113 discriminator 4
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4973 109 discriminator 4
	cmpl	$16, %eax
	je	.L1534
	.loc 1 4973 136 discriminator 5
	leaq	.LC64(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1534:
	.loc 1 4974 21
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 4974 19
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	.loc 1 4974 40
	cmpl	$6, -52(%rbp)
	jle	.L1535
	.loc 1 4974 67 discriminator 1
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1535:
	.loc 1 4975 16
	cmpl	$3, -52(%rbp)
	jne	.L1536
	.loc 1 4975 32 discriminator 1
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 4975 28 discriminator 1
	cmpl	$16, %eax
	jne	.L1536
	.loc 1 4975 71 discriminator 2
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1536:
	.loc 1 4976 16
	cmpl	$3, -52(%rbp)
	jne	.L1537
	.loc 1 4976 39 discriminator 1
	movb	$3, -17(%rbp)
	jmp	.L1538
.L1537:
	.loc 1 4976 59 discriminator 2
	movl	-52(%rbp), %eax
	andl	$1, %eax
	.loc 1 4976 52 discriminator 2
	testl	%eax, %eax
	je	.L1538
	.loc 1 4976 71 discriminator 3
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1538:
	.loc 1 4977 21
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 4977 19
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	.loc 1 4977 40
	cmpl	$0, -68(%rbp)
	je	.L1539
	.loc 1 4977 54 discriminator 1
	leaq	.LC66(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1539:
	.loc 1 4978 21
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 4978 19
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	.loc 1 4978 40
	cmpl	$0, -72(%rbp)
	je	.L1540
	.loc 1 4978 56 discriminator 1
	leaq	.LC67(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1540:
	.loc 1 4979 25
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 4979 23
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	.loc 1 4979 43
	cmpl	$1, -48(%rbp)
	jle	.L1541
	.loc 1 4979 64 discriminator 1
	leaq	.LC68(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1541:
	.loc 1 4980 19
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 4980 16
	testl	%eax, %eax
	je	.L1542
	.loc 1 4980 32 discriminator 2
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4980 27 discriminator 2
	testl	%eax, %eax
	jne	.L1543
.L1542:
	.loc 1 4980 48 discriminator 3
	leaq	.LC69(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1543:
	.loc 1 4981 16
	cmpb	$0, -17(%rbp)
	jne	.L1544
	.loc 1 4982 34
	movl	-52(%rbp), %eax
	andl	$2, %eax
	.loc 1 4982 42
	testl	%eax, %eax
	je	.L1545
	.loc 1 4982 42 is_stmt 0 discriminator 1
	movl	$3, %edx
	jmp	.L1546
.L1545:
	.loc 1 4982 42 discriminator 2
	movl	$1, %edx
.L1546:
	.loc 1 4982 64 is_stmt 1 discriminator 4
	movl	-52(%rbp), %eax
	sarl	$2, %eax
	andl	$1, %eax
	.loc 1 4982 47 discriminator 4
	addl	%eax, %edx
	.loc 1 4982 25 discriminator 4
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 4983 33 discriminator 4
	movq	-64(%rbp), %rax
	movl	(%rax), %ebx
	.loc 1 4983 30 discriminator 4
	movl	$1073741824, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %edx
	.loc 1 4983 44 discriminator 4
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %ecx
	.loc 1 4983 41 discriminator 4
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	.loc 1 4983 55 discriminator 4
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4983 19 discriminator 4
	cmpl	%eax, %edx
	jnb	.L1547
	.loc 1 4983 71 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1547:
	.loc 1 4984 19
	cmpl	$2, -1164(%rbp)
	jne	.L1599
	.loc 1 4984 54 discriminator 1
	movl	$1, %eax
	jmp	.L1598
.L1544:
	.loc 1 4988 25
	movq	-64(%rbp), %rax
	movl	$1, 8(%rax)
	.loc 1 4989 33
	movq	-64(%rbp), %rax
	movl	(%rax), %ebx
	.loc 1 4989 41
	movl	$268435456, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %edx
	.loc 1 4989 48
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 4989 19
	cmpl	%eax, %edx
	jnb	.L1599
	.loc 1 4989 64 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1523:
.LBE1580:
	.loc 1 4996 16
	cmpl	$0, -40(%rbp)
	je	.L1549
	.loc 1 4996 31 discriminator 1
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1549:
	.loc 1 4997 18
	movl	-1140(%rbp), %eax
	.loc 1 4997 16
	cmpl	$768, %eax
	jbe	.L1550
	.loc 1 4997 42 discriminator 1
	leaq	.LC71(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1550:
	.loc 1 4998 24
	movl	-1140(%rbp), %eax
	.loc 1 4998 21
	movl	%eax, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	%eax
	movl	%eax, -36(%rbp)
	.loc 1 4999 25
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	.loc 1 4999 33
	movl	-1140(%rbp), %eax
	.loc 1 4999 16
	cmpl	%eax, %edx
	je	.L1551
	.loc 1 4999 49 discriminator 1
	leaq	.LC71(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1551:
	.loc 1 5000 19
	movl	$0, -32(%rbp)
	.loc 1 5000 13
	jmp	.L1552
.L1553:
	.loc 1 5001 27 discriminator 3
	movl	-32(%rbp), %eax
	leal	0(,%rax,4), %ebx
	.loc 1 5001 33 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5001 31 discriminator 3
	movl	%ebx, %edx
	movb	%al, -1120(%rbp,%rdx)
	.loc 1 5002 25 discriminator 3
	movl	-32(%rbp), %eax
	sall	$2, %eax
	.loc 1 5002 27 discriminator 3
	leal	1(%rax), %ebx
	.loc 1 5002 33 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5002 31 discriminator 3
	movl	%ebx, %edx
	movb	%al, -1120(%rbp,%rdx)
	.loc 1 5003 25 discriminator 3
	movl	-32(%rbp), %eax
	sall	$2, %eax
	.loc 1 5003 27 discriminator 3
	leal	2(%rax), %ebx
	.loc 1 5003 33 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5003 31 discriminator 3
	movl	%ebx, %edx
	movb	%al, -1120(%rbp,%rdx)
	.loc 1 5004 25 discriminator 3
	movl	-32(%rbp), %eax
	sall	$2, %eax
	.loc 1 5004 27 discriminator 3
	addl	$3, %eax
	.loc 1 5004 31 discriminator 3
	movl	%eax, %eax
	movb	$-1, -1120(%rbp,%rax)
	.loc 1 5000 36 discriminator 3
	addl	$1, -32(%rbp)
.L1552:
	.loc 1 5000 13 discriminator 1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L1553
	.loc 1 5006 13
	jmp	.L1528
.L1521:
	.loc 1 5010 16
	cmpl	$0, -40(%rbp)
	je	.L1554
	.loc 1 5010 31 discriminator 1
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1554:
	.loc 1 5011 18
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 5011 16
	testq	%rax, %rax
	je	.L1555
	.loc 1 5011 34 discriminator 1
	leaq	.LC72(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1555:
	.loc 1 5012 16
	cmpb	$0, -17(%rbp)
	je	.L1556
	.loc 1 5013 19
	cmpl	$2, -1164(%rbp)
	jne	.L1557
	.loc 1 5013 58 discriminator 1
	movq	-64(%rbp), %rax
	movl	$4, 8(%rax)
	.loc 1 5013 70 discriminator 1
	movl	$1, %eax
	jmp	.L1598
.L1557:
	.loc 1 5014 19
	cmpl	$0, -36(%rbp)
	jne	.L1558
	.loc 1 5014 41 discriminator 1
	leaq	.LC73(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1558:
	.loc 1 5015 21
	movl	-1140(%rbp), %eax
	.loc 1 5015 19
	cmpl	%eax, -36(%rbp)
	jnb	.L1559
	.loc 1 5015 47 discriminator 1
	leaq	.LC74(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1559:
	.loc 1 5016 26
	movb	$4, -17(%rbp)
	.loc 1 5017 22
	movl	$0, -32(%rbp)
	.loc 1 5017 16
	jmp	.L1560
.L1561:
	.loc 1 5018 28 discriminator 3
	movl	-32(%rbp), %eax
	sall	$2, %eax
	.loc 1 5018 30 discriminator 3
	leal	3(%rax), %ebx
	.loc 1 5018 36 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5018 34 discriminator 3
	movl	%ebx, %edx
	movb	%al, -1120(%rbp,%rdx)
	.loc 1 5017 40 discriminator 3
	addl	$1, -32(%rbp)
.L1560:
	.loc 1 5017 31 discriminator 1
	movl	-1140(%rbp), %eax
	.loc 1 5017 16 discriminator 1
	cmpl	%eax, -32(%rbp)
	jb	.L1561
	.loc 1 5029 13
	jmp	.L1528
.L1556:
	.loc 1 5020 23
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5020 31
	andl	$1, %eax
	.loc 1 5020 19
	testl	%eax, %eax
	jne	.L1563
	.loc 1 5020 44 discriminator 1
	leaq	.LC75(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1563:
	.loc 1 5021 21
	movl	-1140(%rbp), %edx
	.loc 1 5021 48
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5021 55
	addl	%eax, %eax
	.loc 1 5021 19
	cmpl	%eax, %edx
	je	.L1564
	.loc 1 5021 66 discriminator 1
	leaq	.LC74(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1564:
	.loc 1 5022 26
	movb	$1, -18(%rbp)
	.loc 1 5023 21
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5023 19
	cmpl	$16, %eax
	jne	.L1565
	.loc 1 5024 26
	movl	$0, -44(%rbp)
	.loc 1 5024 19
	jmp	.L1566
.L1567:
	.loc 1 5024 74 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 5024 60 discriminator 3
	movl	%eax, %edx
	.loc 1 5024 58 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	movw	%dx, -1130(%rbp,%rax,2)
	.loc 1 5024 45 discriminator 3
	addl	$1, -44(%rbp)
.L1566:
	.loc 1 5024 36 discriminator 1
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5024 19 discriminator 1
	cmpl	%eax, -44(%rbp)
	jl	.L1567
	.loc 1 5029 13
	jmp	.L1528
.L1565:
	.loc 1 5026 26
	movl	$0, -44(%rbp)
	.loc 1 5026 19
	jmp	.L1568
.L1569:
	.loc 1 5026 68 discriminator 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 5026 58 discriminator 3
	movl	%eax, %ecx
	.loc 1 5026 119 discriminator 3
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5026 117 discriminator 3
	cltq
	leaq	stbi__depth_scale_table(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	.loc 1 5026 92 discriminator 3
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 5026 56 discriminator 3
	movl	-44(%rbp), %eax
	cltq
	movb	%dl, -1123(%rbp,%rax)
	.loc 1 5026 45 discriminator 3
	addl	$1, -44(%rbp)
.L1568:
	.loc 1 5026 36 discriminator 1
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5026 19 discriminator 1
	cmpl	%eax, -44(%rbp)
	jl	.L1569
	.loc 1 5029 13
	jmp	.L1528
.L1527:
	.loc 1 5033 16
	cmpl	$0, -40(%rbp)
	je	.L1570
	.loc 1 5033 31 discriminator 1
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1570:
	.loc 1 5034 16
	cmpb	$0, -17(%rbp)
	je	.L1571
	.loc 1 5034 27 discriminator 1
	cmpl	$0, -36(%rbp)
	jne	.L1571
	.loc 1 5034 47 discriminator 2
	leaq	.LC76(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1571:
	.loc 1 5035 16
	cmpl	$2, -1164(%rbp)
	jne	.L1572
	.loc 1 5035 55 discriminator 1
	movzbl	-17(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 5035 75 discriminator 1
	movl	$1, %eax
	jmp	.L1598
.L1572:
	.loc 1 5036 31
	movl	-1140(%rbp), %edx
	.loc 1 5036 28
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 5036 17
	movl	%eax, %edx
	.loc 1 5036 42
	movl	-24(%rbp), %eax
	.loc 1 5036 16
	cmpl	%eax, %edx
	jge	.L1573
	.loc 1 5036 60 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1573:
	.loc 1 5037 25
	movl	-1140(%rbp), %edx
	.loc 1 5037 22
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 5037 16
	cmpl	%eax, -28(%rbp)
	jnb	.L1574
.LBB1581:
	.loc 1 5038 29
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)
	.loc 1 5040 19
	cmpl	$0, -28(%rbp)
	jne	.L1576
	.loc 1 5040 53 discriminator 1
	movl	-1140(%rbp), %eax
	.loc 1 5040 50 discriminator 1
	movl	$4096, %edx
	cmpl	$4096, %eax
	cmovb	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 1 5041 22 discriminator 1
	jmp	.L1576
.L1577:
	.loc 1 5042 31
	sall	-28(%rbp)
.L1576:
	.loc 1 5041 31
	movl	-1140(%rbp), %edx
	.loc 1 5041 28
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	.loc 1 5041 22
	cmpl	%eax, -28(%rbp)
	jb	.L1577
	.loc 1 5044 32
	movl	-28(%rbp), %edx
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -88(%rbp)
	.loc 1 5044 95
	cmpq	$0, -88(%rbp)
	jne	.L1578
	.loc 1 5044 114 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1578:
	.loc 1 5045 25
	movq	-1160(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L1574:
.LBE1581:
	.loc 1 5047 47
	movl	-1140(%rbp), %eax
	.loc 1 5047 18
	movl	%eax, %edx
	.loc 1 5047 33
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 5047 18
	movl	-24(%rbp), %eax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	.loc 1 5047 16
	testl	%eax, %eax
	jne	.L1579
	.loc 1 5047 64 discriminator 1
	leaq	.LC77(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1579:
	.loc 1 5048 22
	movl	-1140(%rbp), %eax
	.loc 1 5048 18
	addl	%eax, -24(%rbp)
	.loc 1 5049 13
	jmp	.L1528
.L1525:
.LBB1582:
	.loc 1 5054 16
	cmpl	$0, -40(%rbp)
	je	.L1580
	.loc 1 5054 31 discriminator 1
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1580:
	.loc 1 5055 16
	cmpl	$0, -1164(%rbp)
	je	.L1582
	.loc 1 5055 49 discriminator 1
	movl	$1, %eax
	jmp	.L1598
.L1582:
	.loc 1 5056 18
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 5056 16
	testq	%rax, %rax
	jne	.L1583
	.loc 1 5056 42 discriminator 1
	leaq	.LC78(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1583:
	.loc 1 5058 21
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 5058 32
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5058 29
	imull	%edx, %eax
	.loc 1 5058 40
	addl	$7, %eax
	.loc 1 5058 17
	shrl	$3, %eax
	movl	%eax, -76(%rbp)
	.loc 1 5059 30
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5059 27
	imull	-76(%rbp), %eax
	movl	%eax, %edx
	.loc 1 5059 41
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5059 38
	imull	%eax, %edx
	.loc 1 5059 65
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5059 62
	addl	%edx, %eax
	.loc 1 5059 21
	movl	%eax, -1144(%rbp)
	.loc 1 5060 39
	cmpl	$0, -56(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-1144(%rbp), %eax
	movl	%eax, %edi
	movl	-24(%rbp), %esi
	.loc 1 5060 94
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 5060 39
	leaq	-1144(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	stbi_zlib_decode_malloc_guesssize_headerflag
	.loc 1 5060 25
	movq	-1160(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 1 5061 18
	movq	-1160(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 5061 16
	testq	%rax, %rax
	jne	.L1584
	.loc 1 5061 45 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1584:
	.loc 1 5062 13
	movq	-1160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5062 43
	movq	-1160(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 5063 31
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5063 38
	addl	$1, %eax
	.loc 1 5063 16
	cmpl	%eax, -1168(%rbp)
	jne	.L1585
	.loc 1 5063 41 discriminator 1
	cmpl	$3, -1168(%rbp)
	je	.L1585
	.loc 1 5063 58 discriminator 3
	cmpb	$0, -17(%rbp)
	je	.L1586
.L1585:
	.loc 1 5063 73 discriminator 5
	cmpb	$0, -18(%rbp)
	je	.L1587
.L1586:
	.loc 1 5064 32
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5064 39
	leal	1(%rax), %edx
	.loc 1 5064 29
	movq	-64(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L1588
.L1587:
	.loc 1 5066 32
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 5066 29
	movq	-64(%rbp), %rax
	movl	%edx, 12(%rax)
.L1588:
	.loc 1 5067 18
	movq	-1160(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-64(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-1144(%rbp), %edx
	movq	-1160(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-52(%rbp), %r9d
	movq	-1160(%rbp), %rax
	subq	$8, %rsp
	movl	-48(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image
	addq	$16, %rsp
	.loc 1 5067 16
	testl	%eax, %eax
	jne	.L1589
	.loc 1 5067 116 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1589:
	.loc 1 5068 16
	cmpb	$0, -18(%rbp)
	je	.L1590
	.loc 1 5069 21
	movq	-1160(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5069 19
	cmpl	$16, %eax
	jne	.L1591
	.loc 1 5070 24
	movq	-64(%rbp), %rax
	movl	12(%rax), %edx
	leaq	-1130(%rbp), %rcx
	movq	-1160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__compute_transparency16
	.loc 1 5070 22
	testl	%eax, %eax
	jne	.L1590
	.loc 1 5070 84 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1591:
	.loc 1 5072 24
	movq	-64(%rbp), %rax
	movl	12(%rax), %edx
	leaq	-1123(%rbp), %rcx
	movq	-1160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__compute_transparency
	.loc 1 5072 22
	testl	%eax, %eax
	jne	.L1590
	.loc 1 5072 80 discriminator 1
	movl	$0, %eax
	jmp	.L1598
.L1590:
	.loc 1 5075 16
	cmpl	$0, -56(%rbp)
	je	.L1592
	.loc 1 5075 27 discriminator 1
	movl	stbi__de_iphone_flag(%rip), %eax
	testl	%eax, %eax
	je	.L1592
	.loc 1 5075 55 discriminator 2
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	.loc 1 5075 51 discriminator 2
	cmpl	$2, %eax
	jle	.L1592
	.loc 1 5076 16
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__de_iphone
.L1592:
	.loc 1 5077 16
	cmpb	$0, -17(%rbp)
	je	.L1593
	.loc 1 5079 25
	movzbl	-17(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 5080 29
	movzbl	-17(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 5081 19
	cmpl	$2, -1168(%rbp)
	jle	.L1594
	.loc 1 5081 48 discriminator 1
	movq	-64(%rbp), %rax
	movl	-1168(%rbp), %edx
	movl	%edx, 12(%rax)
.L1594:
	.loc 1 5082 21
	movq	-64(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-36(%rbp), %edx
	leaq	-1120(%rbp), %rsi
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__expand_png_palette
	.loc 1 5082 19
	testl	%eax, %eax
	jne	.L1595
	.loc 1 5083 26
	movl	$0, %eax
	jmp	.L1598
.L1593:
	.loc 1 5084 23
	cmpb	$0, -18(%rbp)
	je	.L1595
	.loc 1 5086 19
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 5086 16
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
.L1595:
	.loc 1 5088 13
	movq	-1160(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5088 49
	movq	-1160(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 5090 13
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5091 20
	movl	$1, %eax
	jmp	.L1598
.L1522:
.LBE1582:
	.loc 1 5096 16
	cmpl	$0, -40(%rbp)
	je	.L1596
	.loc 1 5096 31 discriminator 1
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1596:
	.loc 1 5097 19
	movl	-1136(%rbp), %eax
	.loc 1 5097 25
	andl	$536870912, %eax
	.loc 1 5097 16
	testl	%eax, %eax
	jne	.L1597
.LBB1583:
	.loc 1 5101 35
	movl	-1136(%rbp), %eax
	shrl	$24, %eax
	.loc 1 5101 33
	movb	%al, invalid_chunk.6(%rip)
	.loc 1 5102 35
	movl	-1136(%rbp), %eax
	shrl	$16, %eax
	.loc 1 5102 33
	movb	%al, 1+invalid_chunk.6(%rip)
	.loc 1 5103 35
	movl	-1136(%rbp), %eax
	shrl	$8, %eax
	.loc 1 5103 33
	movb	%al, 2+invalid_chunk.6(%rip)
	.loc 1 5104 35
	movl	-1136(%rbp), %eax
	.loc 1 5104 33
	movb	%al, 3+invalid_chunk.6(%rip)
	.loc 1 5106 23
	leaq	invalid_chunk.6(%rip), %rdi
	call	stbi__err
	jmp	.L1598
.L1597:
.LBE1583:
	.loc 1 5108 28
	movl	-1140(%rbp), %eax
	.loc 1 5108 13
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5109 13
	jmp	.L1528
.L1599:
.LBB1584:
	.loc 1 4992 13
	nop
.L1528:
.LBE1584:
	.loc 1 5112 7 discriminator 6
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
.LBE1579:
	.loc 1 4957 13 discriminator 6
	jmp	.L1520
.L1598:
	.loc 1 5114 1 discriminator 8
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	stbi__parse_png_file, .-stbi__parse_png_file
	.section	.rodata
.LC79:
	.string	"bad bits_per_channel"
	.text
	.type	stbi__do_png, @function
stbi__do_png:
.LFB647:
	.loc 1 5117 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 5118 10
	movq	$0, -8(%rbp)
	.loc 1 5119 7
	cmpl	$0, -52(%rbp)
	js	.L1601
	.loc 1 5119 21 discriminator 2
	cmpl	$4, -52(%rbp)
	jle	.L1602
.L1601:
	.loc 1 5119 45 discriminator 3
	leaq	.LC42(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1603
.L1602:
	.loc 1 5120 8
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__parse_png_file
	.loc 1 5120 7
	testl	%eax, %eax
	je	.L1604
	.loc 1 5121 12
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5121 10
	cmpl	$8, %eax
	jg	.L1605
	.loc 1 5122 31
	movq	-64(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L1606
.L1605:
	.loc 1 5123 17
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 5123 15
	cmpl	$16, %eax
	jne	.L1607
	.loc 1 5124 31
	movq	-64(%rbp), %rax
	movl	$16, (%rax)
	jmp	.L1606
.L1607:
	.loc 1 5126 17
	leaq	.LC79(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1603
.L1606:
	.loc 1 5127 14
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 5128 14
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 1 5129 10
	cmpl	$0, -52(%rbp)
	je	.L1608
	.loc 1 5129 36 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5129 39 discriminator 1
	movl	12(%rax), %eax
	.loc 1 5129 20 discriminator 1
	cmpl	%eax, -52(%rbp)
	je	.L1608
	.loc 1 5130 16
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5130 13
	cmpl	$8, %eax
	jne	.L1609
	.loc 1 5131 110
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5131 22
	movl	4(%rax), %edi
	.loc 1 5131 97
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5131 22
	movl	(%rax), %ecx
	.loc 1 5131 70
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5131 22
	movl	12(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	jmp	.L1610
.L1609:
	.loc 1 5133 111
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5133 22
	movl	4(%rax), %edi
	.loc 1 5133 98
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5133 22
	movl	(%rax), %ecx
	.loc 1 5133 71
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5133 22
	movl	12(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format16
	movq	%rax, -8(%rbp)
.L1610:
	.loc 1 5134 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5134 26
	movl	-52(%rbp), %edx
	movl	%edx, 12(%rax)
	.loc 1 5135 13
	cmpq	$0, -8(%rbp)
	jne	.L1608
	.loc 1 5135 37 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L1603
.L1608:
	.loc 1 5137 13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5137 16
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 5137 10
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 5138 13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5138 16
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 5138 10
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 5139 10
	cmpq	$0, -48(%rbp)
	je	.L1604
	.loc 1 5139 20 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5139 23 discriminator 1
	movl	8(%rax), %edx
	.loc 1 5139 17 discriminator 1
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L1604:
	.loc 1 5141 4
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5141 40
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 1 5142 4
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5142 40
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 1 5143 4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5143 40
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 5145 11
	movq	-8(%rbp), %rax
.L1603:
	.loc 1 5146 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	stbi__do_png, .-stbi__do_png
	.type	stbi__png_load, @function
stbi__png_load:
.LFB648:
	.loc 1 5149 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	.loc 1 5151 8
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 5152 11
	movq	-96(%rbp), %r8
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__do_png
	.loc 1 5153 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	stbi__png_load, .-stbi__png_load
	.type	stbi__png_test, @function
stbi__png_test:
.LFB649:
	.loc 1 5156 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 5158 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__check_png_header
	movl	%eax, -4(%rbp)
	.loc 1 5159 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5160 11
	movl	-4(%rbp), %eax
	.loc 1 5161 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	stbi__png_test, .-stbi__png_test
	.type	stbi__png_info_raw, @function
stbi__png_info_raw:
.LFB650:
	.loc 1 5164 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 5165 9
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__parse_png_file
	.loc 1 5165 7
	testl	%eax, %eax
	jne	.L1616
	.loc 1 5166 7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5167 14
	movl	$0, %eax
	jmp	.L1617
.L1616:
	.loc 1 5169 7
	cmpq	$0, -16(%rbp)
	je	.L1618
	.loc 1 5169 17 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5169 20 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 5169 14 discriminator 1
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L1618:
	.loc 1 5170 7
	cmpq	$0, -24(%rbp)
	je	.L1619
	.loc 1 5170 17 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5170 20 discriminator 1
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 5170 14 discriminator 1
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L1619:
	.loc 1 5171 7
	cmpq	$0, -32(%rbp)
	je	.L1620
	.loc 1 5171 23 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 5171 26 discriminator 1
	movl	8(%rax), %edx
	.loc 1 5171 20 discriminator 1
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L1620:
	.loc 1 5172 11
	movl	$1, %eax
.L1617:
	.loc 1 5173 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	stbi__png_info_raw, .-stbi__png_info_raw
	.type	stbi__png_info, @function
stbi__png_info:
.LFB651:
	.loc 1 5176 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 1 5178 8
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 5179 11
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_info_raw
	.loc 1 5180 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	stbi__png_info, .-stbi__png_info
	.type	stbi__png_is16, @function
stbi__png_is16:
.LFB652:
	.loc 1 5183 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 1 5185 8
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 5186 9
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__png_info_raw
	.loc 1 5186 7
	testl	%eax, %eax
	jne	.L1624
	.loc 1 5187 12
	movl	$0, %eax
	jmp	.L1627
.L1624:
	.loc 1 5188 9
	movl	-16(%rbp), %eax
	.loc 1 5188 7
	cmpl	$16, %eax
	je	.L1626
	.loc 1 5189 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5190 14
	movl	$0, %eax
	jmp	.L1627
.L1626:
	.loc 1 5192 11
	movl	$1, %eax
.L1627:
	.loc 1 5193 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	stbi__png_is16, .-stbi__png_is16
	.type	stbi__bmp_test_raw, @function
stbi__bmp_test_raw:
.LFB653:
	.loc 1 5200 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 5203 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5203 7
	cmpb	$66, %al
	je	.L1629
	.loc 1 5203 37 discriminator 1
	movl	$0, %eax
	jmp	.L1630
.L1629:
	.loc 1 5204 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5204 7
	cmpb	$77, %al
	je	.L1631
	.loc 1 5204 37 discriminator 1
	movl	$0, %eax
	jmp	.L1630
.L1631:
	.loc 1 5205 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5206 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5207 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5208 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5209 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5209 7
	movl	%eax, -4(%rbp)
	.loc 1 5210 55
	cmpl	$12, -4(%rbp)
	je	.L1632
	.loc 1 5210 18 discriminator 2
	cmpl	$40, -4(%rbp)
	je	.L1632
	.loc 1 5210 30 discriminator 4
	cmpl	$56, -4(%rbp)
	je	.L1632
	.loc 1 5210 42 discriminator 6
	cmpl	$108, -4(%rbp)
	je	.L1632
	.loc 1 5210 55 discriminator 8
	cmpl	$124, -4(%rbp)
	jne	.L1633
.L1632:
	.loc 1 5210 55 is_stmt 0 discriminator 9
	movl	$1, %eax
	jmp	.L1634
.L1633:
	.loc 1 5210 55 discriminator 10
	movl	$0, %eax
.L1634:
	.loc 1 5210 6 is_stmt 1 discriminator 12
	movl	%eax, -8(%rbp)
	.loc 1 5211 11 discriminator 12
	movl	-8(%rbp), %eax
.L1630:
	.loc 1 5212 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	stbi__bmp_test_raw, .-stbi__bmp_test_raw
	.type	stbi__bmp_test, @function
stbi__bmp_test:
.LFB654:
	.loc 1 5215 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 5216 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_test_raw
	movl	%eax, -4(%rbp)
	.loc 1 5217 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5218 11
	movl	-4(%rbp), %eax
	.loc 1 5219 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	stbi__bmp_test, .-stbi__bmp_test
	.type	stbi__high_bit, @function
stbi__high_bit:
.LFB655:
	.loc 1 5224 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 5225 8
	movl	$0, -4(%rbp)
	.loc 1 5226 7
	cmpl	$0, -20(%rbp)
	jne	.L1638
	.loc 1 5226 23 discriminator 1
	movl	$-1, %eax
	jmp	.L1639
.L1638:
	.loc 1 5227 7
	cmpl	$65535, -20(%rbp)
	jbe	.L1640
	.loc 1 5227 26 discriminator 1
	addl	$16, -4(%rbp)
	.loc 1 5227 35 discriminator 1
	shrl	$16, -20(%rbp)
.L1640:
	.loc 1 5228 7
	cmpl	$255, -20(%rbp)
	jbe	.L1641
	.loc 1 5228 26 discriminator 1
	addl	$8, -4(%rbp)
	.loc 1 5228 35 discriminator 1
	shrl	$8, -20(%rbp)
.L1641:
	.loc 1 5229 7
	cmpl	$15, -20(%rbp)
	jbe	.L1642
	.loc 1 5229 26 discriminator 1
	addl	$4, -4(%rbp)
	.loc 1 5229 35 discriminator 1
	shrl	$4, -20(%rbp)
.L1642:
	.loc 1 5230 7
	cmpl	$3, -20(%rbp)
	jbe	.L1643
	.loc 1 5230 26 discriminator 1
	addl	$2, -4(%rbp)
	.loc 1 5230 35 discriminator 1
	shrl	$2, -20(%rbp)
.L1643:
	.loc 1 5231 7
	cmpl	$1, -20(%rbp)
	jbe	.L1644
	.loc 1 5231 26 discriminator 1
	addl	$1, -4(%rbp)
.L1644:
	.loc 1 5232 11
	movl	-4(%rbp), %eax
.L1639:
	.loc 1 5233 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	stbi__high_bit, .-stbi__high_bit
	.type	stbi__bitcount, @function
stbi__bitcount:
.LFB656:
	.loc 1 5236 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 5237 11
	movl	-4(%rbp), %eax
	andl	$1431655765, %eax
	movl	%eax, %edx
	.loc 1 5237 31
	movl	-4(%rbp), %eax
	shrl	%eax
	.loc 1 5237 38
	andl	$1431655765, %eax
	.loc 1 5237 6
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 5238 11
	movl	-4(%rbp), %eax
	andl	$858993459, %eax
	movl	%eax, %edx
	.loc 1 5238 31
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	.loc 1 5238 38
	andl	$858993459, %eax
	.loc 1 5238 6
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 5239 16
	movl	-4(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	.loc 1 5239 11
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 1 5239 6
	andl	$252645135, %eax
	movl	%eax, -4(%rbp)
	.loc 1 5240 16
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	.loc 1 5240 6
	addl	%eax, -4(%rbp)
	.loc 1 5241 16
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	.loc 1 5241 6
	addl	%eax, -4(%rbp)
	.loc 1 5242 13
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 5243 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	stbi__bitcount, .-stbi__bitcount
	.section	.rodata
.LC80:
	.string	"v < 256"
.LC81:
	.string	"bits >= 0 && bits <= 8"
	.text
	.type	stbi__shiftsigned, @function
stbi__shiftsigned:
.LFB657:
	.loc 1 5249 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	.loc 1 5258 7
	cmpl	$0, -8(%rbp)
	jns	.L1648
	.loc 1 5259 13
	movl	-8(%rbp), %eax
	negl	%eax
	.loc 1 5259 9
	movl	%eax, %ecx
	sall	%cl, -4(%rbp)
	jmp	.L1649
.L1648:
	.loc 1 5261 9
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, -4(%rbp)
.L1649:
	.loc 1 5262 4
	cmpl	$255, -4(%rbp)
	jbe	.L1650
	.loc 1 5262 4 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.5(%rip), %rcx
	movl	$5262, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC80(%rip), %rdi
	call	__assert_fail@PLT
.L1650:
	.loc 1 5263 12 is_stmt 1
	movl	$8, %eax
	subl	-12(%rbp), %eax
	.loc 1 5263 6
	movl	%eax, %ecx
	shrl	%cl, -4(%rbp)
	.loc 1 5264 4
	cmpl	$0, -12(%rbp)
	js	.L1651
	.loc 1 5264 4 is_stmt 0 discriminator 1
	cmpl	$8, -12(%rbp)
	jle	.L1654
.L1651:
	.loc 1 5264 4 discriminator 3
	leaq	__PRETTY_FUNCTION__.5(%rip), %rcx
	movl	$5264, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC81(%rip), %rdi
	call	__assert_fail@PLT
.L1654:
	.loc 1 5265 42 is_stmt 1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mul_table.4(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 5265 31
	imull	-4(%rbp), %eax
	.loc 1 5265 11
	movl	%eax, %esi
	.loc 1 5265 64
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	shift_table.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 5265 50
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	.loc 1 5266 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	stbi__shiftsigned, .-stbi__shiftsigned
	.section	.rodata
.LC82:
	.string	"not BMP"
.LC83:
	.string	"bad BMP"
.LC84:
	.string	"unknown BMP"
.LC85:
	.string	"BMP RLE"
	.text
	.type	stbi__bmp_parse_header, @function
stbi__bmp_parse_header:
.LFB658:
	.loc 1 5276 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 5278 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5278 7
	cmpb	$66, %al
	jne	.L1656
	.loc 1 5278 32 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5278 29 discriminator 2
	cmpb	$77, %al
	je	.L1657
.L1656:
	.loc 1 5278 61 discriminator 3
	leaq	.LC82(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1657:
	.loc 1 5279 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5280 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5281 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5282 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	%eax, %edx
	.loc 1 5282 17
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 5283 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5283 20
	movl	%eax, -8(%rbp)
	.loc 1 5283 14
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 1 5284 46
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 1 5284 41
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	.loc 1 5284 35
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	.loc 1 5284 30
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	.loc 1 5284 24
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 5284 19
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 5284 13
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 1 5285 21
	movq	-32(%rbp), %rax
	movl	$14, 32(%rax)
	.loc 1 5287 12
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5287 7
	testl	%eax, %eax
	jns	.L1659
	.loc 1 5287 33 discriminator 1
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1659:
	.loc 1 5289 7
	cmpl	$12, -8(%rbp)
	je	.L1660
	.loc 1 5289 18 discriminator 1
	cmpl	$40, -8(%rbp)
	je	.L1660
	.loc 1 5289 31 discriminator 2
	cmpl	$56, -8(%rbp)
	je	.L1660
	.loc 1 5289 44 discriminator 3
	cmpl	$108, -8(%rbp)
	je	.L1660
	.loc 1 5289 58 discriminator 4
	cmpl	$124, -8(%rbp)
	je	.L1660
	.loc 1 5289 80 discriminator 5
	leaq	.LC84(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1660:
	.loc 1 5290 7
	cmpl	$12, -8(%rbp)
	jne	.L1661
	.loc 1 5291 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	.loc 1 5291 16
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 5292 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	.loc 1 5292 16
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L1662
.L1661:
	.loc 1 5294 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5294 16
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 5295 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5295 16
	movq	-24(%rbp), %rdx
	movl	%eax, 4(%rdx)
.L1662:
	.loc 1 5297 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5297 7
	cmpl	$1, %eax
	je	.L1663
	.loc 1 5297 38 discriminator 1
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1663:
	.loc 1 5298 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5298 14
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 5299 7
	cmpl	$12, -8(%rbp)
	je	.L1664
.LBB1585:
	.loc 1 5300 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5300 11
	movl	%eax, -12(%rbp)
	.loc 1 5301 10
	cmpl	$1, -12(%rbp)
	je	.L1665
	.loc 1 5301 25 discriminator 2
	cmpl	$2, -12(%rbp)
	jne	.L1666
.L1665:
	.loc 1 5301 50 discriminator 3
	leaq	.LC85(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1666:
	.loc 1 5302 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5303 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5304 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5305 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5306 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5307 10
	cmpl	$40, -8(%rbp)
	je	.L1667
	.loc 1 5307 21 discriminator 1
	cmpl	$56, -8(%rbp)
	jne	.L1668
.L1667:
	.loc 1 5308 13
	cmpl	$56, -8(%rbp)
	jne	.L1669
	.loc 1 5309 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5310 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5311 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5312 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
.L1669:
	.loc 1 5314 18
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5314 13
	cmpl	$16, %eax
	je	.L1670
	.loc 1 5314 37 discriminator 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5314 30 discriminator 1
	cmpl	$32, %eax
	jne	.L1678
.L1670:
	.loc 1 5315 16
	cmpl	$0, -12(%rbp)
	jne	.L1672
	.loc 1 5316 24
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5316 19
	cmpl	$32, %eax
	jne	.L1673
	.loc 1 5317 28
	movq	-32(%rbp), %rax
	movl	$16711680, 12(%rax)
	.loc 1 5318 28
	movq	-32(%rbp), %rax
	movl	$65280, 16(%rax)
	.loc 1 5319 28
	movq	-32(%rbp), %rax
	movl	$255, 20(%rax)
	.loc 1 5320 28
	movq	-32(%rbp), %rax
	movl	$-16777216, 24(%rax)
	.loc 1 5321 31
	movq	-32(%rbp), %rax
	movl	$0, 28(%rax)
	.loc 1 5314 13
	jmp	.L1678
.L1673:
	.loc 1 5323 28
	movq	-32(%rbp), %rax
	movl	$31744, 12(%rax)
	.loc 1 5324 28
	movq	-32(%rbp), %rax
	movl	$992, 16(%rax)
	.loc 1 5325 28
	movq	-32(%rbp), %rax
	movl	$31, 20(%rax)
	.loc 1 5314 13
	jmp	.L1678
.L1672:
	.loc 1 5327 23
	cmpl	$3, -12(%rbp)
	jne	.L1674
	.loc 1 5328 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5328 25
	movq	-32(%rbp), %rdx
	movl	%eax, 12(%rdx)
	.loc 1 5329 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5329 25
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	.loc 1 5330 27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5330 25
	movq	-32(%rbp), %rdx
	movl	%eax, 20(%rdx)
	.loc 1 5331 33
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	leal	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 1 5333 24
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	.loc 1 5333 36
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 5333 19
	cmpl	%eax, %edx
	jne	.L1678
	.loc 1 5333 48 discriminator 1
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 5333 60 discriminator 1
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 5333 41 discriminator 1
	cmpl	%eax, %edx
	jne	.L1678
	.loc 1 5335 26
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1674:
	.loc 1 5338 23
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1668:
.LBB1586:
	.loc 1 5342 13
	cmpl	$108, -8(%rbp)
	je	.L1675
	.loc 1 5342 25 discriminator 1
	cmpl	$124, -8(%rbp)
	je	.L1675
	.loc 1 5343 20
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1658
.L1675:
	.loc 1 5344 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5344 19
	movq	-32(%rbp), %rdx
	movl	%eax, 12(%rdx)
	.loc 1 5345 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5345 19
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	.loc 1 5346 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5346 19
	movq	-32(%rbp), %rdx
	movl	%eax, 20(%rdx)
	.loc 1 5347 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5347 19
	movq	-32(%rbp), %rdx
	movl	%eax, 24(%rdx)
	.loc 1 5348 10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5349 16
	movl	$0, -4(%rbp)
	.loc 1 5349 10
	jmp	.L1676
.L1677:
	.loc 1 5350 13 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5349 28 discriminator 3
	addl	$1, -4(%rbp)
.L1676:
	.loc 1 5349 10 discriminator 1
	cmpl	$11, -4(%rbp)
	jle	.L1677
	.loc 1 5351 13
	cmpl	$124, -8(%rbp)
	jne	.L1664
	.loc 1 5352 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5353 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5354 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	.loc 1 5355 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	jmp	.L1664
.L1678:
.LBE1586:
	.loc 1 5314 13
	nop
.L1664:
.LBE1585:
	.loc 1 5359 11
	movl	$1, %eax
.L1658:
	.loc 1 5360 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	stbi__bmp_parse_header, .-stbi__bmp_parse_header
	.section	.rodata
	.align 8
.LC86:
	.string	"info.offset == s->callback_already_read + (int) (s->img_buffer - s->img_buffer_original)"
.LC87:
	.string	"bad offset"
.LC88:
	.string	"invalid"
.LC89:
	.string	"bad bpp"
.LC90:
	.string	"bad masks"
	.text
	.type	stbi__bmp_load, @function
stbi__bmp_load:
.LFB659:
	.loc 1 5364 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1288, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1256(%rbp)
	movq	%rsi, -1264(%rbp)
	movq	%rdx, -1272(%rbp)
	movq	%rcx, -1280(%rbp)
	movl	%r8d, -1284(%rbp)
	movq	%r9, -1296(%rbp)
	.loc 1 5366 17
	movl	$0, -112(%rbp)
	.loc 1 5366 22
	movl	$0, -116(%rbp)
	.loc 1 5366 27
	movl	$0, -120(%rbp)
	.loc 1 5366 32
	movl	$0, -124(%rbp)
	.loc 1 5368 8
	movl	$0, -32(%rbp)
	.loc 1 5373 15
	movl	$255, -1220(%rbp)
	.loc 1 5374 8
	leaq	-1248(%rbp), %rdx
	movq	-1256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__bmp_parse_header
	.loc 1 5374 7
	testq	%rax, %rax
	jne	.L1680
	.loc 1 5375 14
	movl	$0, %eax
	jmp	.L1764
.L1680:
	.loc 1 5377 30
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5377 39
	testl	%eax, %eax
	setg	%al
	.loc 1 5377 20
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	.loc 1 5378 26
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5378 15
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	.loc 1 5378 13
	movq	-1256(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 1 5380 9
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5380 7
	cmpl	$16777216, %eax
	jbe	.L1682
	.loc 1 5380 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1682:
	.loc 1 5381 9
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5381 7
	cmpl	$16777216, %eax
	jbe	.L1683
	.loc 1 5381 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1683:
	.loc 1 5383 7
	movl	-1236(%rbp), %eax
	movl	%eax, -112(%rbp)
	.loc 1 5384 7
	movl	-1232(%rbp), %eax
	movl	%eax, -116(%rbp)
	.loc 1 5385 7
	movl	-1228(%rbp), %eax
	movl	%eax, -120(%rbp)
	.loc 1 5386 7
	movl	-1224(%rbp), %eax
	movl	%eax, -124(%rbp)
	.loc 1 5387 10
	movl	-1220(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 1 5389 12
	movl	-1240(%rbp), %eax
	.loc 1 5389 7
	cmpl	$12, %eax
	jne	.L1684
	.loc 1 5390 15
	movl	-1248(%rbp), %eax
	.loc 1 5390 10
	cmpl	$23, %eax
	jg	.L1685
	.loc 1 5391 23
	movl	-1244(%rbp), %eax
	.loc 1 5391 37
	movl	-1216(%rbp), %edx
	.loc 1 5391 31
	subl	%edx, %eax
	.loc 1 5391 49
	subl	$24, %eax
	.loc 1 5391 16
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -32(%rbp)
	jmp	.L1685
.L1684:
	.loc 1 5393 15
	movl	-1248(%rbp), %eax
	.loc 1 5393 10
	cmpl	$15, %eax
	jg	.L1685
	.loc 1 5394 23
	movl	-1244(%rbp), %eax
	.loc 1 5394 37
	movl	-1216(%rbp), %edx
	.loc 1 5394 31
	subl	%edx, %eax
	.loc 1 5394 55
	movl	-1240(%rbp), %edx
	.loc 1 5394 49
	subl	%edx, %eax
	.loc 1 5394 16
	sarl	$2, %eax
	movl	%eax, -32(%rbp)
.L1685:
	.loc 1 5396 7
	cmpl	$0, -32(%rbp)
	jne	.L1686
	.loc 1 5397 7
	movl	-1244(%rbp), %edx
	movq	-1256(%rbp), %rax
	movl	184(%rax), %esi
	movq	-1256(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-1256(%rbp), %rax
	movq	208(%rax), %rdi
	movq	%rcx, %rax
	subq	%rdi, %rax
	addl	%esi, %eax
	cmpl	%eax, %edx
	je	.L1687
	.loc 1 5397 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx
	movl	$5397, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC86(%rip), %rdi
	call	__assert_fail@PLT
.L1687:
	.loc 1 5398 15 is_stmt 1
	movl	-1244(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 5398 27
	movq	-1256(%rbp), %rax
	movl	184(%rax), %eax
	movslq	%eax, %rsi
	.loc 1 5398 55
	movq	-1256(%rbp), %rax
	movq	192(%rax), %rax
	.loc 1 5398 68
	movq	-1256(%rbp), %rcx
	addq	$56, %rcx
	subq	%rcx, %rax
	.loc 1 5398 51
	addq	%rsi, %rax
	.loc 1 5398 10
	cmpq	%rax, %rdx
	je	.L1686
	.loc 1 5399 16
	leaq	.LC87(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1686:
	.loc 1 5403 12
	movl	-1248(%rbp), %eax
	.loc 1 5403 7
	cmpl	$24, %eax
	jne	.L1688
	.loc 1 5403 23 discriminator 1
	cmpl	$-16777216, -124(%rbp)
	jne	.L1688
	.loc 1 5404 16
	movq	-1256(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.L1689
.L1688:
	.loc 1 5406 25
	cmpl	$0, -124(%rbp)
	je	.L1690
	.loc 1 5406 25 is_stmt 0 discriminator 1
	movl	$4, %edx
	jmp	.L1691
.L1690:
	.loc 1 5406 25 discriminator 2
	movl	$3, %edx
.L1691:
	.loc 1 5406 16 is_stmt 1 discriminator 4
	movq	-1256(%rbp), %rax
	movl	%edx, 8(%rax)
.L1689:
	.loc 1 5407 7
	cmpl	$0, -1284(%rbp)
	je	.L1692
	.loc 1 5407 17 discriminator 1
	cmpl	$2, -1284(%rbp)
	jle	.L1692
	.loc 1 5408 14
	movl	-1284(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L1693
.L1692:
	.loc 1 5410 14
	movq	-1256(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
.L1693:
	.loc 1 5413 50
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5413 9
	movl	%eax, %edx
	.loc 1 5413 40
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5413 9
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 5413 7
	testl	%eax, %eax
	jne	.L1694
	.loc 1 5414 14
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1694:
	.loc 1 5416 59
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5416 22
	movl	%eax, %edx
	.loc 1 5416 49
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5416 22
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -24(%rbp)
	.loc 1 5417 7
	cmpq	$0, -24(%rbp)
	jne	.L1695
	.loc 1 5417 21 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1695:
	.loc 1 5418 12
	movl	-1248(%rbp), %eax
	.loc 1 5418 7
	cmpl	$15, %eax
	jg	.L1696
.LBB1587:
	.loc 1 5419 11
	movl	$0, -52(%rbp)
	.loc 1 5420 10
	cmpl	$0, -32(%rbp)
	je	.L1697
	.loc 1 5420 22 discriminator 2
	cmpl	$256, -32(%rbp)
	jle	.L1698
.L1697:
	.loc 1 5420 40 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5420 63 discriminator 3
	leaq	.LC88(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1698:
	.loc 1 5421 13
	movl	$0, -36(%rbp)
	.loc 1 5421 7
	jmp	.L1699
.L1701:
	.loc 1 5422 22
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5422 20
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1198(%rbp,%rdx,4)
	.loc 1 5423 22
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5423 20
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1199(%rbp,%rdx,4)
	.loc 1 5424 22
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5424 20
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1200(%rbp,%rdx,4)
	.loc 1 5425 18
	movl	-1240(%rbp), %eax
	.loc 1 5425 13
	cmpl	$12, %eax
	je	.L1700
	.loc 1 5425 30 discriminator 1
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
.L1700:
	.loc 1 5426 20 discriminator 2
	movl	-36(%rbp), %eax
	cltq
	movb	$-1, -1197(%rbp,%rax,4)
	.loc 1 5421 28 discriminator 2
	addl	$1, -36(%rbp)
.L1699:
	.loc 1 5421 7 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L1701
	.loc 1 5428 25
	movl	-1244(%rbp), %eax
	.loc 1 5428 39
	movl	-1216(%rbp), %edx
	.loc 1 5428 33
	subl	%edx, %eax
	.loc 1 5428 57
	movl	-1240(%rbp), %ecx
	.loc 1 5428 51
	subl	%ecx, %eax
	movl	%eax, %edx
	.loc 1 5428 77
	movl	-1240(%rbp), %eax
	.loc 1 5428 92
	cmpl	$12, %eax
	jne	.L1702
	.loc 1 5428 92 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L1703
.L1702:
	.loc 1 5428 92 discriminator 2
	movl	$4, %eax
.L1703:
	.loc 1 5428 70 is_stmt 1 discriminator 4
	imull	-32(%rbp), %eax
	.loc 1 5428 7 discriminator 4
	subl	%eax, %edx
	movq	-1256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5429 15 discriminator 4
	movl	-1248(%rbp), %eax
	.loc 1 5429 10 discriminator 4
	cmpl	$1, %eax
	jne	.L1704
	.loc 1 5429 36 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5429 44 discriminator 1
	addl	$7, %eax
	.loc 1 5429 49 discriminator 1
	shrl	$3, %eax
	.loc 1 5429 32 discriminator 1
	movl	%eax, -44(%rbp)
	jmp	.L1705
.L1704:
	.loc 1 5430 20
	movl	-1248(%rbp), %eax
	.loc 1 5430 15
	cmpl	$4, %eax
	jne	.L1706
	.loc 1 5430 41 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5430 49 discriminator 1
	addl	$1, %eax
	.loc 1 5430 54 discriminator 1
	shrl	%eax
	.loc 1 5430 37 discriminator 1
	movl	%eax, -44(%rbp)
	jmp	.L1705
.L1706:
	.loc 1 5431 20
	movl	-1248(%rbp), %eax
	.loc 1 5431 15
	cmpl	$8, %eax
	jne	.L1707
	.loc 1 5431 40 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5431 37 discriminator 1
	movl	%eax, -44(%rbp)
	jmp	.L1705
.L1707:
	.loc 1 5432 14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5432 37
	leaq	.LC89(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1705:
	.loc 1 5433 14
	movl	-44(%rbp), %eax
	negl	%eax
	.loc 1 5433 11
	andl	$3, %eax
	movl	%eax, -132(%rbp)
	.loc 1 5434 15
	movl	-1248(%rbp), %eax
	.loc 1 5434 10
	cmpl	$1, %eax
	jne	.L1708
	.loc 1 5435 16
	movl	$0, -40(%rbp)
	.loc 1 5435 10
	jmp	.L1709
.L1716:
.LBB1588:
	.loc 1 5436 17
	movl	$7, -56(%rbp)
	.loc 1 5436 37
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5436 33
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	.loc 1 5437 19
	movl	$0, -36(%rbp)
	.loc 1 5437 13
	jmp	.L1710
.L1715:
.LBB1589:
	.loc 1 5438 30
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	.loc 1 5438 20
	andl	$1, %eax
	movl	%eax, -152(%rbp)
	.loc 1 5439 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5439 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5439 37
	movl	-152(%rbp), %eax
	cltq
	movzbl	-1200(%rbp,%rax,4), %eax
	.loc 1 5439 25
	movb	%al, (%rdx)
	.loc 1 5440 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5440 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5440 37
	movl	-152(%rbp), %eax
	cltq
	movzbl	-1199(%rbp,%rax,4), %eax
	.loc 1 5440 25
	movb	%al, (%rdx)
	.loc 1 5441 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5441 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5441 37
	movl	-152(%rbp), %eax
	cltq
	movzbl	-1198(%rbp,%rax,4), %eax
	.loc 1 5441 25
	movb	%al, (%rdx)
	.loc 1 5442 19
	cmpl	$4, -48(%rbp)
	jne	.L1711
	.loc 1 5442 38 discriminator 1
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5442 36 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5442 42 discriminator 1
	movb	$-1, (%rax)
.L1711:
	.loc 1 5443 21
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 5443 34
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5443 19
	cmpl	%eax, %edx
	je	.L1765
	.loc 1 5444 18
	subl	$1, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jns	.L1714
	.loc 1 5445 30
	movl	$7, -56(%rbp)
	.loc 1 5446 23
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5446 21
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
.L1714:
.LBE1589:
	.loc 1 5437 43 discriminator 2
	addl	$1, -36(%rbp)
.L1710:
	.loc 1 5437 34 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5437 13 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1715
	jmp	.L1713
.L1765:
.LBB1590:
	.loc 1 5443 16
	nop
.L1713:
.LBE1590:
	.loc 1 5449 13 discriminator 2
	movl	-132(%rbp), %edx
	movq	-1256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
.LBE1588:
	.loc 1 5435 40 discriminator 2
	addl	$1, -40(%rbp)
.L1709:
	.loc 1 5435 31 discriminator 1
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5435 10 discriminator 1
	cmpl	%eax, -40(%rbp)
	jl	.L1716
	jmp	.L1717
.L1708:
	.loc 1 5452 16
	movl	$0, -40(%rbp)
	.loc 1 5452 10
	jmp	.L1718
.L1728:
	.loc 1 5453 19
	movl	$0, -36(%rbp)
	.loc 1 5453 13
	jmp	.L1719
.L1727:
.LBB1591:
	.loc 1 5454 22
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5454 20
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	.loc 1 5454 36
	movl	$0, -68(%rbp)
	.loc 1 5455 24
	movl	-1248(%rbp), %eax
	.loc 1 5455 19
	cmpl	$4, %eax
	jne	.L1720
	.loc 1 5456 22
	movl	-64(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -68(%rbp)
	.loc 1 5457 21
	sarl	$4, -64(%rbp)
.L1720:
	.loc 1 5459 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5459 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5459 33
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1200(%rbp,%rax,4), %eax
	.loc 1 5459 25
	movb	%al, (%rdx)
	.loc 1 5460 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5460 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5460 33
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1199(%rbp,%rax,4), %eax
	.loc 1 5460 25
	movb	%al, (%rdx)
	.loc 1 5461 21
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5461 19
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5461 33
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1198(%rbp,%rax,4), %eax
	.loc 1 5461 25
	movb	%al, (%rdx)
	.loc 1 5462 19
	cmpl	$4, -48(%rbp)
	jne	.L1721
	.loc 1 5462 38 discriminator 1
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5462 36 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5462 42 discriminator 1
	movb	$-1, (%rax)
.L1721:
	.loc 1 5463 21
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	.loc 1 5463 34
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5463 19
	cmpl	%eax, %edx
	je	.L1766
	.loc 1 5464 25
	movl	-1248(%rbp), %eax
	.loc 1 5464 52
	cmpl	$8, %eax
	jne	.L1724
	.loc 1 5464 38 discriminator 1
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5464 52 discriminator 1
	movzbl	%al, %eax
	jmp	.L1725
.L1724:
	.loc 1 5464 52 is_stmt 0 discriminator 2
	movl	-68(%rbp), %eax
.L1725:
	.loc 1 5464 18 is_stmt 1 discriminator 4
	movl	%eax, -64(%rbp)
	.loc 1 5465 21 discriminator 4
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5465 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5465 33 discriminator 4
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1200(%rbp,%rax,4), %eax
	.loc 1 5465 25 discriminator 4
	movb	%al, (%rdx)
	.loc 1 5466 21 discriminator 4
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5466 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5466 33 discriminator 4
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1199(%rbp,%rax,4), %eax
	.loc 1 5466 25 discriminator 4
	movb	%al, (%rdx)
	.loc 1 5467 21 discriminator 4
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5467 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5467 33 discriminator 4
	movl	-64(%rbp), %eax
	cltq
	movzbl	-1198(%rbp,%rax,4), %eax
	.loc 1 5467 25 discriminator 4
	movb	%al, (%rdx)
	.loc 1 5468 19 discriminator 4
	cmpl	$4, -48(%rbp)
	jne	.L1726
	.loc 1 5468 38 discriminator 1
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	.loc 1 5468 36 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5468 42 discriminator 1
	movb	$-1, (%rax)
.L1726:
.LBE1591:
	.loc 1 5453 45 discriminator 2
	addl	$2, -36(%rbp)
.L1719:
	.loc 1 5453 34 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5453 13 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1727
	jmp	.L1723
.L1766:
.LBB1592:
	.loc 1 5463 16
	nop
.L1723:
.LBE1592:
	.loc 1 5470 13 discriminator 2
	movl	-132(%rbp), %edx
	movq	-1256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5452 40 discriminator 2
	addl	$1, -40(%rbp)
.L1718:
	.loc 1 5452 31 discriminator 1
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5452 10 discriminator 1
	cmpl	%eax, -40(%rbp)
	jl	.L1728
	jmp	.L1717
.L1696:
.LBE1587:
.LBB1593:
	.loc 1 5474 11
	movl	$0, -72(%rbp)
	.loc 1 5474 20
	movl	$0, -76(%rbp)
	.loc 1 5474 29
	movl	$0, -80(%rbp)
	.loc 1 5474 38
	movl	$0, -84(%rbp)
	.loc 1 5474 47
	movl	$0, -88(%rbp)
	.loc 1 5474 56
	movl	$0, -92(%rbp)
	.loc 1 5474 65
	movl	$0, -96(%rbp)
	.loc 1 5474 74
	movl	$0, -100(%rbp)
	.loc 1 5475 11
	movl	$0, -104(%rbp)
	.loc 1 5476 11
	movl	$0, -108(%rbp)
	.loc 1 5477 25
	movl	-1244(%rbp), %eax
	.loc 1 5477 39
	movl	-1216(%rbp), %edx
	.loc 1 5477 33
	subl	%edx, %eax
	.loc 1 5477 57
	movl	-1240(%rbp), %ecx
	.loc 1 5477 7
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-1256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5478 15
	movl	-1248(%rbp), %eax
	.loc 1 5478 10
	cmpl	$24, %eax
	jne	.L1729
	.loc 1 5478 40 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 5478 37 discriminator 1
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 1 5478 33 discriminator 1
	movl	%eax, -44(%rbp)
	jmp	.L1730
.L1729:
	.loc 1 5479 20
	movl	-1248(%rbp), %eax
	.loc 1 5479 15
	cmpl	$16, %eax
	jne	.L1731
	.loc 1 5479 43 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5479 41 discriminator 1
	addl	%eax, %eax
	.loc 1 5479 38 discriminator 1
	movl	%eax, -44(%rbp)
	jmp	.L1730
.L1731:
	.loc 1 5480 44
	movl	$0, -44(%rbp)
.L1730:
	.loc 1 5481 14
	movl	-44(%rbp), %eax
	negl	%eax
	.loc 1 5481 11
	andl	$3, %eax
	movl	%eax, -132(%rbp)
	.loc 1 5482 15
	movl	-1248(%rbp), %eax
	.loc 1 5482 10
	cmpl	$24, %eax
	jne	.L1732
	.loc 1 5483 15
	movl	$1, -108(%rbp)
	jmp	.L1733
.L1732:
	.loc 1 5484 22
	movl	-1248(%rbp), %eax
	.loc 1 5484 17
	cmpl	$32, %eax
	jne	.L1733
	.loc 1 5485 13
	cmpl	$255, -120(%rbp)
	jne	.L1733
	.loc 1 5485 25 discriminator 1
	cmpl	$65280, -116(%rbp)
	jne	.L1733
	.loc 1 5485 41 discriminator 2
	cmpl	$16711680, -112(%rbp)
	jne	.L1733
	.loc 1 5485 61 discriminator 3
	cmpl	$-16777216, -124(%rbp)
	jne	.L1733
	.loc 1 5486 18
	movl	$2, -108(%rbp)
.L1733:
	.loc 1 5488 10
	cmpl	$0, -108(%rbp)
	jne	.L1734
	.loc 1 5489 13
	cmpl	$0, -112(%rbp)
	je	.L1735
	.loc 1 5489 18 discriminator 2
	cmpl	$0, -116(%rbp)
	je	.L1735
	.loc 1 5489 25 discriminator 4
	cmpl	$0, -120(%rbp)
	jne	.L1736
.L1735:
	.loc 1 5489 35 discriminator 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5489 58 discriminator 5
	leaq	.LC90(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1736:
	.loc 1 5491 19
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	.loc 1 5491 17
	subl	$7, %eax
	movl	%eax, -72(%rbp)
	.loc 1 5491 50
	movl	-112(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -88(%rbp)
	.loc 1 5492 19
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	.loc 1 5492 17
	subl	$7, %eax
	movl	%eax, -76(%rbp)
	.loc 1 5492 50
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -92(%rbp)
	.loc 1 5493 19
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	.loc 1 5493 17
	subl	$7, %eax
	movl	%eax, -80(%rbp)
	.loc 1 5493 50
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -96(%rbp)
	.loc 1 5494 19
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	.loc 1 5494 17
	subl	$7, %eax
	movl	%eax, -84(%rbp)
	.loc 1 5494 50
	movl	-124(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -100(%rbp)
	.loc 1 5495 13
	cmpl	$8, -88(%rbp)
	jg	.L1737
	.loc 1 5495 25 discriminator 2
	cmpl	$8, -92(%rbp)
	jg	.L1737
	.loc 1 5495 39 discriminator 4
	cmpl	$8, -96(%rbp)
	jg	.L1737
	.loc 1 5495 53 discriminator 6
	cmpl	$8, -100(%rbp)
	jle	.L1734
.L1737:
	.loc 1 5495 70 discriminator 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5495 93 discriminator 7
	leaq	.LC90(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1764
.L1734:
	.loc 1 5497 13
	movl	$0, -40(%rbp)
	.loc 1 5497 7
	jmp	.L1738
.L1753:
	.loc 1 5498 13
	cmpl	$0, -108(%rbp)
	je	.L1739
	.loc 1 5499 19
	movl	$0, -36(%rbp)
	.loc 1 5499 13
	jmp	.L1740
.L1744:
.LBB1594:
	.loc 1 5501 19
	movl	-104(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 5501 27
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5501 25
	movb	%al, (%rbx)
	.loc 1 5502 19
	movl	-104(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 5502 27
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5502 25
	movb	%al, (%rbx)
	.loc 1 5503 19
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 5503 27
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5503 25
	movb	%al, (%rbx)
	.loc 1 5504 18
	addl	$3, -104(%rbp)
	.loc 1 5505 18
	cmpl	$2, -108(%rbp)
	jne	.L1741
	.loc 1 5505 33 discriminator 1
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	jmp	.L1742
.L1741:
	.loc 1 5505 18 discriminator 2
	movl	$-1, %eax
.L1742:
	.loc 1 5505 18 is_stmt 0 discriminator 4
	movb	%al, -145(%rbp)
	.loc 1 5506 22 is_stmt 1 discriminator 4
	movzbl	-145(%rbp), %eax
	orl	%eax, -28(%rbp)
	.loc 1 5507 19 discriminator 4
	cmpl	$4, -48(%rbp)
	jne	.L1743
	.loc 1 5507 38 discriminator 1
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	movslq	%eax, %rdx
	.loc 1 5507 36 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5507 42 discriminator 1
	movzbl	-145(%rbp), %eax
	movb	%al, (%rdx)
.L1743:
.LBE1594:
	.loc 1 5499 43 discriminator 2
	addl	$1, -36(%rbp)
.L1740:
	.loc 1 5499 34 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5499 13 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1744
	jmp	.L1745
.L1739:
.LBB1595:
	.loc 1 5510 17
	movl	-1248(%rbp), %eax
	movl	%eax, -136(%rbp)
	.loc 1 5511 19
	movl	$0, -36(%rbp)
	.loc 1 5511 13
	jmp	.L1746
.L1752:
.LBB1596:
	.loc 1 5512 78
	cmpl	$16, -136(%rbp)
	jne	.L1747
	.loc 1 5512 61 discriminator 1
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	jmp	.L1748
.L1747:
	.loc 1 5512 80 discriminator 2
	movq	-1256(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
.L1748:
	.loc 1 5512 29 discriminator 4
	movl	%eax, -140(%rbp)
	.loc 1 5514 27 discriminator 4
	movl	-140(%rbp), %eax
	andl	-112(%rbp), %eax
	movl	-88(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	.loc 1 5514 21 discriminator 4
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	movslq	%eax, %rdx
	.loc 1 5514 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5514 27 discriminator 4
	movl	%ecx, %edx
	.loc 1 5514 25 discriminator 4
	movb	%dl, (%rax)
	.loc 1 5515 27 discriminator 4
	movl	-140(%rbp), %eax
	andl	-116(%rbp), %eax
	movl	-92(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	.loc 1 5515 21 discriminator 4
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	movslq	%eax, %rdx
	.loc 1 5515 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5515 27 discriminator 4
	movl	%ecx, %edx
	.loc 1 5515 25 discriminator 4
	movb	%dl, (%rax)
	.loc 1 5516 27 discriminator 4
	movl	-140(%rbp), %eax
	andl	-120(%rbp), %eax
	movl	-96(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	.loc 1 5516 21 discriminator 4
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	movslq	%eax, %rdx
	.loc 1 5516 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5516 27 discriminator 4
	movl	%ecx, %edx
	.loc 1 5516 25 discriminator 4
	movb	%dl, (%rax)
	.loc 1 5517 68 discriminator 4
	cmpl	$0, -124(%rbp)
	je	.L1749
	.loc 1 5517 26 discriminator 1
	movl	-140(%rbp), %eax
	andl	-124(%rbp), %eax
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	jmp	.L1750
.L1749:
	.loc 1 5517 68 discriminator 2
	movl	$255, %eax
.L1750:
	.loc 1 5517 18 discriminator 4
	movl	%eax, -144(%rbp)
	.loc 1 5518 22 discriminator 4
	movl	-144(%rbp), %eax
	orl	%eax, -28(%rbp)
	.loc 1 5519 19 discriminator 4
	cmpl	$4, -48(%rbp)
	jne	.L1751
	.loc 1 5519 38 discriminator 1
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	movslq	%eax, %rdx
	.loc 1 5519 36 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5519 44 discriminator 1
	movl	-144(%rbp), %edx
	.loc 1 5519 42 discriminator 1
	movb	%dl, (%rax)
.L1751:
.LBE1596:
	.loc 1 5511 43 discriminator 2
	addl	$1, -36(%rbp)
.L1746:
	.loc 1 5511 34 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5511 13 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1752
.L1745:
.LBE1595:
	.loc 1 5522 10 discriminator 2
	movl	-132(%rbp), %edx
	movq	-1256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5497 37 discriminator 2
	addl	$1, -40(%rbp)
.L1738:
	.loc 1 5497 28 discriminator 1
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5497 7 discriminator 1
	cmpl	%eax, -40(%rbp)
	jl	.L1753
.L1717:
.LBE1593:
	.loc 1 5527 7
	cmpl	$4, -48(%rbp)
	jne	.L1754
	.loc 1 5527 20 discriminator 1
	cmpl	$0, -28(%rbp)
	jne	.L1754
	.loc 1 5528 17
	movq	-1256(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 5528 26
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5528 24
	imull	%edx, %eax
	sall	$2, %eax
	.loc 1 5528 33
	subl	$1, %eax
	.loc 1 5528 13
	movl	%eax, -36(%rbp)
	.loc 1 5528 7
	jmp	.L1755
.L1756:
	.loc 1 5529 13 discriminator 3
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5529 17 discriminator 3
	movb	$-1, (%rax)
	.loc 1 5528 47 discriminator 3
	subl	$4, -36(%rbp)
.L1755:
	.loc 1 5528 7 discriminator 1
	cmpl	$0, -36(%rbp)
	jns	.L1756
.L1754:
	.loc 1 5531 7
	cmpl	$0, -128(%rbp)
	je	.L1757
.LBB1597:
	.loc 1 5533 13
	movl	$0, -40(%rbp)
	.loc 1 5533 7
	jmp	.L1758
.L1761:
.LBB1598:
	.loc 1 5534 43
	movq	-1256(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 5534 41
	movl	-40(%rbp), %eax
	imull	%eax, %edx
	.loc 1 5534 50
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 5534 19
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	.loc 1 5535 32
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5535 41
	movl	-40(%rbp), %edx
	subl	%edx, %eax
	leal	-1(%rax), %edx
	.loc 1 5535 46
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5535 44
	imull	%eax, %edx
	.loc 1 5535 53
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	.loc 1 5535 19
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	.loc 1 5536 16
	movl	$0, -36(%rbp)
	.loc 1 5536 10
	jmp	.L1759
.L1760:
	.loc 1 5537 19 discriminator 3
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5537 15 discriminator 3
	movzbl	(%rax), %eax
	movb	%al, -169(%rbp)
	.loc 1 5537 34 discriminator 3
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5537 26 discriminator 3
	movl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 5537 34 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 5537 30 discriminator 3
	movb	%al, (%rdx)
	.loc 1 5537 41 discriminator 3
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5537 45 discriminator 3
	movzbl	-169(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 5536 47 discriminator 3
	addl	$1, -36(%rbp)
.L1759:
	.loc 1 5536 31 discriminator 1
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 5536 38 discriminator 1
	imull	-48(%rbp), %eax
	.loc 1 5536 10 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1760
.LBE1598:
	.loc 1 5533 40 discriminator 2
	addl	$1, -40(%rbp)
.L1758:
	.loc 1 5533 28 discriminator 1
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 5533 35 discriminator 1
	sarl	%eax
	.loc 1 5533 7 discriminator 1
	cmpl	%eax, -40(%rbp)
	jl	.L1761
.L1757:
.LBE1597:
	.loc 1 5542 7
	cmpl	$0, -1284(%rbp)
	je	.L1762
	.loc 1 5542 17 discriminator 1
	movl	-1284(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.L1762
	.loc 1 5543 13
	movq	-1256(%rbp), %rax
	movl	4(%rax), %edi
	movq	-1256(%rbp), %rax
	movl	(%rax), %ecx
	movl	-1284(%rbp), %edx
	movl	-48(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -24(%rbp)
	.loc 1 5544 10
	cmpq	$0, -24(%rbp)
	jne	.L1762
	.loc 1 5544 31 discriminator 1
	movq	-24(%rbp), %rax
	jmp	.L1764
.L1762:
	.loc 1 5547 10
	movq	-1256(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 5547 7
	movq	-1264(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 5548 10
	movq	-1256(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 5548 7
	movq	-1272(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 5549 7
	cmpq	$0, -1280(%rbp)
	je	.L1763
	.loc 1 5549 23 discriminator 1
	movq	-1256(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 5549 20 discriminator 1
	movq	-1280(%rbp), %rax
	movl	%edx, (%rax)
.L1763:
	.loc 1 5550 11
	movq	-24(%rbp), %rax
.L1764:
	.loc 1 5551 1 discriminator 2
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	stbi__bmp_load, .-stbi__bmp_load
	.type	stbi__tga_get_comp, @function
stbi__tga_get_comp:
.LFB660:
	.loc 1 5559 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	.loc 1 5561 7
	cmpq	$0, -16(%rbp)
	je	.L1768
	.loc 1 5561 28 discriminator 1
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.L1768:
	movl	-4(%rbp), %eax
	subl	$8, %eax
	cmpl	$24, %eax
	ja	.L1769
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1771(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1771(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1771:
	.long	.L1774-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1773-.L1771
	.long	.L1772-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1770-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1769-.L1771
	.long	.L1770-.L1771
	.text
.L1774:
	.loc 1 5563 23
	movl	$1, %eax
	jmp	.L1775
.L1772:
	.loc 1 5564 18
	cmpl	$0, -8(%rbp)
	je	.L1773
	.loc 1 5564 35 discriminator 1
	movl	$2, %eax
	jmp	.L1775
.L1773:
	.loc 1 5566 18
	cmpq	$0, -16(%rbp)
	je	.L1776
	.loc 1 5566 39 discriminator 1
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.L1776:
	.loc 1 5567 23
	movl	$3, %eax
	jmp	.L1775
.L1770:
	.loc 1 5569 37
	movl	-4(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	jmp	.L1775
.L1769:
	.loc 1 5570 23
	movl	$0, %eax
.L1775:
	.loc 1 5572 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	stbi__tga_get_comp, .-stbi__tga_get_comp
	.type	stbi__tga_info, @function
stbi__tga_info:
.LFB661:
	.loc 1 5575 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 1 5578 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5579 25
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5579 23
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 5580 7
	cmpl	$1, -12(%rbp)
	jle	.L1778
	.loc 1 5581 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5582 16
	movl	$0, %eax
	jmp	.L1779
.L1778:
	.loc 1 5584 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5584 20
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 1 5585 8
	cmpl	$1, -12(%rbp)
	jne	.L1780
	.loc 1 5586 12
	cmpl	$1, -16(%rbp)
	je	.L1781
	.loc 1 5586 33 discriminator 1
	cmpl	$9, -16(%rbp)
	je	.L1781
	.loc 1 5587 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5588 20
	movl	$0, %eax
	jmp	.L1779
.L1781:
	.loc 1 5590 9
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5591 14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5591 12
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 5592 12
	cmpl	$8, -20(%rbp)
	je	.L1782
	.loc 1 5592 24 discriminator 1
	cmpl	$15, -20(%rbp)
	je	.L1782
	.loc 1 5592 38 discriminator 2
	cmpl	$16, -20(%rbp)
	je	.L1782
	.loc 1 5592 52 discriminator 3
	cmpl	$24, -20(%rbp)
	je	.L1782
	.loc 1 5592 66 discriminator 4
	cmpl	$32, -20(%rbp)
	je	.L1782
	.loc 1 5593 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5594 20
	movl	$0, %eax
	jmp	.L1779
.L1782:
	.loc 1 5596 9
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5597 26
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L1783
.L1780:
	.loc 1 5599 12
	cmpl	$2, -16(%rbp)
	je	.L1784
	.loc 1 5599 36 discriminator 1
	cmpl	$3, -16(%rbp)
	je	.L1784
	.loc 1 5599 61 discriminator 2
	cmpl	$10, -16(%rbp)
	je	.L1784
	.loc 1 5599 87 discriminator 3
	cmpl	$11, -16(%rbp)
	je	.L1784
	.loc 1 5600 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5601 20
	movl	$0, %eax
	jmp	.L1779
.L1784:
	.loc 1 5603 9
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5604 26
	movl	$0, -8(%rbp)
.L1783:
	.loc 1 5606 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -24(%rbp)
	.loc 1 5607 7
	cmpl	$0, -24(%rbp)
	jg	.L1785
	.loc 1 5608 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5609 16
	movl	$0, %eax
	jmp	.L1779
.L1785:
	.loc 1 5611 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -28(%rbp)
	.loc 1 5612 7
	cmpl	$0, -28(%rbp)
	jg	.L1786
	.loc 1 5613 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5614 16
	movl	$0, %eax
	jmp	.L1779
.L1786:
	.loc 1 5616 26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5616 24
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	.loc 1 5617 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5618 8
	cmpl	$0, -8(%rbp)
	je	.L1787
	.loc 1 5619 11
	cmpl	$8, -32(%rbp)
	je	.L1788
	.loc 1 5619 38 discriminator 1
	cmpl	$16, -32(%rbp)
	je	.L1788
	.loc 1 5622 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5623 20
	movl	$0, %eax
	jmp	.L1779
.L1788:
	.loc 1 5625 20
	movl	-8(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -4(%rbp)
	jmp	.L1789
.L1787:
	.loc 1 5627 20
	cmpl	$3, -16(%rbp)
	je	.L1790
	.loc 1 5627 20 is_stmt 0 discriminator 2
	cmpl	$11, -16(%rbp)
	jne	.L1791
.L1790:
	.loc 1 5627 20 discriminator 3
	movl	$1, %ecx
	jmp	.L1792
.L1791:
	.loc 1 5627 20 discriminator 4
	movl	$0, %ecx
.L1792:
	.loc 1 5627 20 discriminator 6
	movl	-32(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -4(%rbp)
.L1789:
	.loc 1 5629 7 is_stmt 1
	cmpl	$0, -4(%rbp)
	jne	.L1793
	.loc 1 5630 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5631 14
	movl	$0, %eax
	jmp	.L1779
.L1793:
	.loc 1 5633 8
	cmpq	$0, -48(%rbp)
	je	.L1794
	.loc 1 5633 15 discriminator 1
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
.L1794:
	.loc 1 5634 8
	cmpq	$0, -56(%rbp)
	je	.L1795
	.loc 1 5634 15 discriminator 1
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
.L1795:
	.loc 1 5635 8
	cmpq	$0, -64(%rbp)
	je	.L1796
	.loc 1 5635 21 discriminator 1
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L1796:
	.loc 1 5636 12
	movl	$1, %eax
.L1779:
	.loc 1 5637 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	stbi__tga_info, .-stbi__tga_info
	.type	stbi__tga_test, @function
stbi__tga_test:
.LFB662:
	.loc 1 5640 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 5641 8
	movl	$0, -4(%rbp)
	.loc 1 5643 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5644 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5644 19
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 5645 7
	cmpl	$1, -8(%rbp)
	jg	.L1810
	.loc 1 5646 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5646 7
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 5647 7
	cmpl	$1, -8(%rbp)
	jne	.L1800
	.loc 1 5648 10
	cmpl	$1, -12(%rbp)
	je	.L1801
	.loc 1 5648 19 discriminator 1
	cmpl	$9, -12(%rbp)
	jne	.L1811
.L1801:
	.loc 1 5649 7
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5650 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5650 10
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 5651 10
	cmpl	$8, -12(%rbp)
	je	.L1802
	.loc 1 5651 22 discriminator 1
	cmpl	$15, -12(%rbp)
	je	.L1802
	.loc 1 5651 36 discriminator 2
	cmpl	$16, -12(%rbp)
	je	.L1802
	.loc 1 5651 50 discriminator 3
	cmpl	$24, -12(%rbp)
	je	.L1802
	.loc 1 5651 64 discriminator 4
	cmpl	$32, -12(%rbp)
	jne	.L1812
.L1802:
	.loc 1 5652 7
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L1803
.L1800:
	.loc 1 5654 10
	cmpl	$2, -12(%rbp)
	je	.L1804
	.loc 1 5654 22 discriminator 1
	cmpl	$3, -12(%rbp)
	je	.L1804
	.loc 1 5654 35 discriminator 2
	cmpl	$10, -12(%rbp)
	je	.L1804
	.loc 1 5654 49 discriminator 3
	cmpl	$11, -12(%rbp)
	jne	.L1813
.L1804:
	.loc 1 5655 7
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L1803:
	.loc 1 5657 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5657 7
	testl	%eax, %eax
	jle	.L1814
	.loc 1 5658 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5658 7
	testl	%eax, %eax
	jle	.L1815
	.loc 1 5659 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5659 7
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	.loc 1 5660 7
	cmpl	$1, -8(%rbp)
	jne	.L1807
	.loc 1 5660 31 discriminator 1
	cmpl	$8, -12(%rbp)
	je	.L1807
	.loc 1 5660 44 discriminator 2
	cmpl	$16, -12(%rbp)
	jne	.L1816
.L1807:
	.loc 1 5661 7
	cmpl	$8, -12(%rbp)
	je	.L1808
	.loc 1 5661 19 discriminator 1
	cmpl	$15, -12(%rbp)
	je	.L1808
	.loc 1 5661 33 discriminator 2
	cmpl	$16, -12(%rbp)
	je	.L1808
	.loc 1 5661 47 discriminator 3
	cmpl	$24, -12(%rbp)
	je	.L1808
	.loc 1 5661 61 discriminator 4
	cmpl	$32, -12(%rbp)
	jne	.L1817
.L1808:
	.loc 1 5663 8
	movl	$1, -4(%rbp)
	jmp	.L1799
.L1810:
	.loc 1 5645 30
	nop
	jmp	.L1799
.L1811:
	.loc 1 5648 31
	nop
	jmp	.L1799
.L1812:
	.loc 1 5651 80
	nop
	jmp	.L1799
.L1813:
	.loc 1 5654 65
	nop
	jmp	.L1799
.L1814:
	.loc 1 5657 32
	nop
	jmp	.L1799
.L1815:
	.loc 1 5658 32
	nop
	jmp	.L1799
.L1816:
	.loc 1 5660 60
	nop
	jmp	.L1799
.L1817:
	.loc 1 5661 77
	nop
.L1799:
	.loc 1 5666 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5667 11
	movl	-4(%rbp), %eax
	.loc 1 5668 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	stbi__tga_test, .-stbi__tga_test
	.type	stbi__tga_read_rgb16, @function
stbi__tga_read_rgb16:
.LFB663:
	.loc 1 5672 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 5673 36
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 5673 17
	movw	%ax, -2(%rbp)
	.loc 1 5674 17
	movw	$31, -4(%rbp)
	.loc 1 5676 23
	movzwl	-2(%rbp), %eax
	shrw	$10, %ax
	andw	-4(%rbp), %ax
	.loc 1 5676 8
	movzwl	%ax, %eax
	movl	%eax, -8(%rbp)
	.loc 1 5677 22
	movzwl	-2(%rbp), %eax
	shrw	$5, %ax
	andw	-4(%rbp), %ax
	.loc 1 5677 8
	movzwl	%ax, %eax
	movl	%eax, -12(%rbp)
	.loc 1 5678 15
	movzwl	-2(%rbp), %eax
	andw	-4(%rbp), %ax
	.loc 1 5678 8
	movzwl	%ax, %eax
	movl	%eax, -16(%rbp)
	.loc 1 5680 26
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	.loc 1 5680 32
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	.loc 1 5680 13
	movl	%eax, %edx
	.loc 1 5680 11
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 5681 26
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	.loc 1 5681 32
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	.loc 1 5681 7
	movq	-32(%rbp), %rax
	addq	$1, %rax
	.loc 1 5681 11
	movb	%dl, (%rax)
	.loc 1 5682 26
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	.loc 1 5682 32
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	.loc 1 5682 7
	movq	-32(%rbp), %rax
	addq	$2, %rax
	.loc 1 5682 11
	movb	%dl, (%rax)
	.loc 1 5688 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	stbi__tga_read_rgb16, .-stbi__tga_read_rgb16
	.section	.rodata
.LC91:
	.string	"bad format"
.LC92:
	.string	"bad palette"
.LC93:
	.string	"tga_comp == STBI_rgb"
	.text
	.type	stbi__tga_load, @function
stbi__tga_load:
.LFB664:
	.loc 1 5691 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	%r8d, -212(%rbp)
	movq	%r9, -224(%rbp)
	.loc 1 5693 21
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5693 8
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	.loc 1 5694 22
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5694 8
	movzbl	%al, %eax
	movl	%eax, -96(%rbp)
	.loc 1 5695 25
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5695 8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 5696 8
	movl	$0, -8(%rbp)
	.loc 1 5697 28
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -100(%rbp)
	.loc 1 5698 26
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -104(%rbp)
	.loc 1 5699 27
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5699 8
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
	.loc 1 5700 23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -112(%rbp)
	.loc 1 5701 23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -116(%rbp)
	.loc 1 5702 20
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -120(%rbp)
	.loc 1 5703 21
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -124(%rbp)
	.loc 1 5704 29
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5704 8
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	.loc 1 5705 18
	movl	$0, -160(%rbp)
	.loc 1 5706 23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5706 8
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	.loc 1 5710 19
	movq	$0, -32(%rbp)
	.loc 1 5712 18
	movl	$0, -164(%rbp)
	.loc 1 5713 8
	movl	$0, -44(%rbp)
	.loc 1 5714 8
	movl	$0, -48(%rbp)
	.loc 1 5715 8
	movl	$1, -52(%rbp)
	.loc 1 5720 7
	cmpl	$16777216, -124(%rbp)
	jle	.L1820
	.loc 1 5720 49 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1820:
	.loc 1 5721 7
	cmpl	$16777216, -120(%rbp)
	jle	.L1822
	.loc 1 5721 48 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1822:
	.loc 1 5724 7
	cmpl	$7, -4(%rbp)
	jle	.L1823
	.loc 1 5726 22
	subl	$8, -4(%rbp)
	.loc 1 5727 18
	movl	$1, -8(%rbp)
.L1823:
	.loc 1 5729 21
	movl	-132(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	sete	%al
	.loc 1 5729 17
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	.loc 1 5732 7
	cmpl	$0, -96(%rbp)
	je	.L1824
	.loc 1 5732 34 discriminator 1
	leaq	-160(%rbp), %rdx
	movl	-108(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -12(%rbp)
	jmp	.L1825
.L1824:
	.loc 1 5733 20
	cmpl	$3, -4(%rbp)
	sete	%al
	movzbl	%al, %ecx
	leaq	-160(%rbp), %rdx
	movl	-128(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -12(%rbp)
.L1825:
	.loc 1 5735 6
	cmpl	$0, -12(%rbp)
	jne	.L1826
	.loc 1 5736 14
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1826:
	.loc 1 5739 7
	movq	-192(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 5740 7
	movq	-200(%rbp), %rax
	movl	-124(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 5741 7
	cmpq	$0, -208(%rbp)
	je	.L1827
	.loc 1 5741 20 discriminator 1
	movq	-208(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L1827:
	.loc 1 5743 9
	movl	-12(%rbp), %edx
	movl	-124(%rbp), %esi
	movl	-120(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 5743 7
	testl	%eax, %eax
	jne	.L1828
	.loc 1 5744 14
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1828:
	.loc 1 5746 31
	movl	-12(%rbp), %edx
	movl	-124(%rbp), %esi
	movl	-120(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -24(%rbp)
	.loc 1 5747 7
	cmpq	$0, -24(%rbp)
	jne	.L1829
	.loc 1 5747 26 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1829:
	.loc 1 5750 4
	movl	-92(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5752 7
	cmpl	$0, -96(%rbp)
	jne	.L1830
	.loc 1 5752 22 discriminator 1
	cmpl	$0, -8(%rbp)
	jne	.L1830
	.loc 1 5752 40 discriminator 2
	movl	-160(%rbp), %eax
	.loc 1 5752 37 discriminator 2
	testl	%eax, %eax
	jne	.L1830
	.loc 1 5753 13
	movl	$0, -36(%rbp)
	.loc 1 5753 7
	jmp	.L1831
.L1834:
.LBB1599:
	.loc 1 5754 53
	cmpl	$0, -132(%rbp)
	je	.L1832
	.loc 1 5754 46 discriminator 1
	movl	-124(%rbp), %eax
	subl	-36(%rbp), %eax
	.loc 1 5754 53 discriminator 1
	subl	$1, %eax
	jmp	.L1833
.L1832:
	.loc 1 5754 53 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax
.L1833:
	.loc 1 5754 14 is_stmt 1 discriminator 4
	movl	%eax, -136(%rbp)
	.loc 1 5755 43 discriminator 4
	movl	-136(%rbp), %eax
	imull	-120(%rbp), %eax
	.loc 1 5755 53 discriminator 4
	imull	-12(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 5755 19 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	.loc 1 5756 10 discriminator 4
	movl	-120(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
.LBE1599:
	.loc 1 5753 33 discriminator 4
	addl	$1, -36(%rbp)
.L1831:
	.loc 1 5753 7 discriminator 2
	movl	-36(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L1834
	.loc 1 5752 7
	jmp	.L1835
.L1830:
	.loc 1 5760 10
	cmpl	$0, -96(%rbp)
	je	.L1836
	.loc 1 5762 13
	cmpl	$0, -104(%rbp)
	jne	.L1837
	.loc 1 5763 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5764 20
	leaq	.LC92(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1837:
	.loc 1 5768 10
	movl	-100(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5770 40
	movl	-12(%rbp), %ecx
	movl	-104(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -32(%rbp)
	.loc 1 5771 13
	cmpq	$0, -32(%rbp)
	jne	.L1838
	.loc 1 5772 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5773 20
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1838:
	.loc 1 5775 14
	movl	-160(%rbp), %eax
	.loc 1 5775 13
	testl	%eax, %eax
	je	.L1839
.LBB1600:
	.loc 1 5776 22
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 1 5777 13
	cmpl	$3, -12(%rbp)
	je	.L1840
	.loc 1 5777 13 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$5777, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L1840:
	.loc 1 5778 19 is_stmt 1
	movl	$0, -36(%rbp)
	.loc 1 5778 13
	jmp	.L1841
.L1842:
	.loc 1 5779 16 discriminator 3
	movq	-64(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__tga_read_rgb16
	.loc 1 5780 26 discriminator 3
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	.loc 1 5778 44 discriminator 3
	addl	$1, -36(%rbp)
.L1841:
	.loc 1 5778 13 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L1842
	jmp	.L1836
.L1839:
.LBE1600:
	.loc 1 5782 22
	movl	-104(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	.loc 1 5782 20
	testl	%eax, %eax
	jne	.L1836
	.loc 1 5783 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5784 16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 5785 23
	leaq	.LC92(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1871
.L1836:
	.loc 1 5789 13
	movl	$0, -36(%rbp)
	.loc 1 5789 7
	jmp	.L1843
.L1861:
	.loc 1 5792 13
	cmpl	$0, -8(%rbp)
	je	.L1844
	.loc 1 5794 16
	cmpl	$0, -44(%rbp)
	jne	.L1845
.LBB1601:
	.loc 1 5797 30
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5797 20
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	.loc 1 5798 41
	movl	-152(%rbp), %eax
	andl	$127, %eax
	.loc 1 5798 26
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	.loc 1 5799 30
	movl	-152(%rbp), %eax
	sarl	$7, %eax
	movl	%eax, -48(%rbp)
	.loc 1 5800 32
	movl	$1, -52(%rbp)
.LBE1601:
	jmp	.L1846
.L1845:
	.loc 1 5801 23
	cmpl	$0, -48(%rbp)
	jne	.L1846
	.loc 1 5803 32
	movl	$1, -52(%rbp)
	jmp	.L1846
.L1844:
	.loc 1 5807 29
	movl	$1, -52(%rbp)
.L1846:
	.loc 1 5810 13
	cmpl	$0, -52(%rbp)
	je	.L1847
	.loc 1 5813 16
	cmpl	$0, -96(%rbp)
	je	.L1848
.LBB1602:
	.loc 1 5816 72
	cmpl	$8, -128(%rbp)
	jne	.L1849
	.loc 1 5816 58 discriminator 1
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5816 72 discriminator 1
	movzbl	%al, %eax
	jmp	.L1850
.L1849:
	.loc 1 5816 74 discriminator 2
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
.L1850:
	.loc 1 5816 20 discriminator 4
	movl	%eax, -68(%rbp)
	.loc 1 5817 19 discriminator 4
	movl	-68(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L1851
	.loc 1 5819 27
	movl	$0, -68(%rbp)
.L1851:
	.loc 1 5821 24
	movl	-68(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 1 5822 23
	movl	$0, -40(%rbp)
	.loc 1 5822 16
	jmp	.L1852
.L1853:
	.loc 1 5823 52 discriminator 3
	movl	-68(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 5823 44 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 5823 31 discriminator 3
	movl	-40(%rbp), %eax
	cltq
	movb	%dl, -164(%rbp,%rax)
	.loc 1 5822 42 discriminator 3
	addl	$1, -40(%rbp)
.L1852:
	.loc 1 5822 16 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L1853
	jmp	.L1854
.L1848:
.LBE1602:
	.loc 1 5825 23
	movl	-160(%rbp), %eax
	.loc 1 5825 22
	testl	%eax, %eax
	je	.L1855
	.loc 1 5826 16
	cmpl	$3, -12(%rbp)
	je	.L1856
	.loc 1 5826 16 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx
	movl	$5826, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L1856:
	.loc 1 5827 16 is_stmt 1
	leaq	-164(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__tga_read_rgb16
	jmp	.L1854
.L1855:
	.loc 1 5830 23
	movl	$0, -40(%rbp)
	.loc 1 5830 16
	jmp	.L1857
.L1858:
	.loc 1 5831 33 discriminator 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5831 31 discriminator 3
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -164(%rbp,%rdx)
	.loc 1 5830 42 discriminator 3
	addl	$1, -40(%rbp)
.L1857:
	.loc 1 5830 16 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L1858
.L1854:
	.loc 1 5835 29
	movl	$0, -52(%rbp)
.L1847:
	.loc 1 5839 17
	movl	$0, -40(%rbp)
	.loc 1 5839 10
	jmp	.L1859
.L1860:
	.loc 1 5840 22 discriminator 3
	movl	-36(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	.loc 1 5840 31 discriminator 3
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 5840 20 discriminator 3
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5840 45 discriminator 3
	movl	-40(%rbp), %eax
	cltq
	movzbl	-164(%rbp,%rax), %eax
	.loc 1 5840 35 discriminator 3
	movb	%al, (%rdx)
	.loc 1 5839 36 discriminator 3
	addl	$1, -40(%rbp)
.L1859:
	.loc 1 5839 10 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L1860
	.loc 1 5843 10 discriminator 2
	subl	$1, -44(%rbp)
	.loc 1 5789 45 discriminator 2
	addl	$1, -36(%rbp)
.L1843:
	.loc 1 5789 31 discriminator 1
	movl	-120(%rbp), %eax
	imull	-124(%rbp), %eax
	.loc 1 5789 7 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1861
	.loc 1 5846 10
	cmpl	$0, -132(%rbp)
	je	.L1862
	.loc 1 5848 17
	movl	$0, -40(%rbp)
	.loc 1 5848 10
	jmp	.L1863
.L1866:
.LBB1603:
	.loc 1 5850 28
	movl	-40(%rbp), %eax
	imull	-120(%rbp), %eax
	.loc 1 5850 17
	movl	-12(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -72(%rbp)
	.loc 1 5851 38
	movl	-124(%rbp), %eax
	subl	$1, %eax
	.loc 1 5851 42
	subl	-40(%rbp), %eax
	.loc 1 5851 47
	imull	-120(%rbp), %eax
	.loc 1 5851 17
	movl	-12(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -76(%rbp)
	.loc 1 5852 20
	movl	-120(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 1 5852 13
	jmp	.L1864
.L1865:
.LBB1604:
	.loc 1 5854 45 discriminator 3
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5854 30 discriminator 3
	movzbl	(%rax), %eax
	movb	%al, -145(%rbp)
	.loc 1 5855 43 discriminator 3
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 5855 24 discriminator 3
	movl	-72(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 5855 43 discriminator 3
	movzbl	(%rax), %eax
	.loc 1 5855 33 discriminator 3
	movb	%al, (%rdx)
	.loc 1 5856 24 discriminator 3
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 5856 33 discriminator 3
	movzbl	-145(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 5857 16 discriminator 3
	addl	$1, -72(%rbp)
	.loc 1 5858 16 discriminator 3
	addl	$1, -76(%rbp)
.LBE1604:
	.loc 1 5852 51 discriminator 3
	subl	$1, -36(%rbp)
.L1864:
	.loc 1 5852 13 discriminator 1
	cmpl	$0, -36(%rbp)
	jg	.L1865
.LBE1603:
	.loc 1 5848 40 discriminator 2
	addl	$1, -40(%rbp)
.L1863:
	.loc 1 5848 23 discriminator 1
	movl	-40(%rbp), %eax
	addl	%eax, %eax
	.loc 1 5848 10 discriminator 1
	cmpl	%eax, -124(%rbp)
	jg	.L1866
.L1862:
	.loc 1 5863 10
	cmpq	$0, -32(%rbp)
	je	.L1835
	.loc 1 5865 10
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1835:
	.loc 1 5870 7
	cmpl	$2, -12(%rbp)
	jle	.L1867
	.loc 1 5870 25 discriminator 1
	movl	-160(%rbp), %eax
	.loc 1 5870 22 discriminator 1
	testl	%eax, %eax
	jne	.L1867
.LBB1605:
	.loc 1 5872 22
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 5873 13
	movl	$0, -36(%rbp)
	.loc 1 5873 7
	jmp	.L1868
.L1869:
.LBB1606:
	.loc 1 5875 24 discriminator 3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -153(%rbp)
	.loc 1 5876 23 discriminator 3
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 5877 19 discriminator 3
	movq	-88(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 5877 23 discriminator 3
	movzbl	-153(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 5878 20 discriminator 3
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -88(%rbp)
.LBE1606:
	.loc 1 5873 45 discriminator 3
	addl	$1, -36(%rbp)
.L1868:
	.loc 1 5873 31 discriminator 1
	movl	-120(%rbp), %eax
	imull	-124(%rbp), %eax
	.loc 1 5873 7 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1869
.L1867:
.LBE1605:
	.loc 1 5883 7
	cmpl	$0, -212(%rbp)
	je	.L1870
	.loc 1 5883 17 discriminator 1
	movl	-212(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L1870
	.loc 1 5884 18
	movl	-124(%rbp), %edi
	movl	-120(%rbp), %ecx
	movl	-212(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -24(%rbp)
.L1870:
	.loc 1 5889 38
	movl	$0, -116(%rbp)
	.loc 1 5889 23
	movl	-116(%rbp), %eax
	movl	%eax, -112(%rbp)
	.loc 1 5888 59
	movl	-112(%rbp), %eax
	movl	%eax, -108(%rbp)
	.loc 1 5888 40
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
	.loc 1 5888 22
	movl	-104(%rbp), %eax
	movl	%eax, -100(%rbp)
	.loc 1 5892 11
	movq	-24(%rbp), %rax
.L1871:
	.loc 1 5893 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	stbi__tga_load, .-stbi__tga_load
	.type	stbi__psd_test, @function
stbi__psd_test:
.LFB665:
	.loc 1 5901 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 5902 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5902 30
	cmpl	$943870035, %eax
	sete	%al
	.loc 1 5902 8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 5903 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 5904 11
	movl	-4(%rbp), %eax
	.loc 1 5905 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	stbi__psd_test, .-stbi__psd_test
	.type	stbi__psd_decode_rle, @function
stbi__psd_decode_rle:
.LFB666:
	.loc 1 5908 1
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
	.loc 1 5911 10
	movl	$0, -4(%rbp)
	.loc 1 5912 10
	jmp	.L1875
.L1884:
	.loc 1 5913 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5913 11
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 5914 10
	cmpl	$128, -8(%rbp)
	je	.L1875
	.loc 1 5916 17
	cmpl	$127, -8(%rbp)
	jg	.L1876
	.loc 1 5918 13
	addl	$1, -8(%rbp)
	.loc 1 5919 13
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L1877
	.loc 1 5919 34 discriminator 1
	movl	$0, %eax
	jmp	.L1878
.L1877:
	.loc 1 5920 16
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	.loc 1 5921 16
	jmp	.L1879
.L1880:
	.loc 1 5922 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 5922 16
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 5923 15
	addq	$4, -32(%rbp)
	.loc 1 5924 16
	subl	$1, -8(%rbp)
.L1879:
	.loc 1 5921 16
	cmpl	$0, -8(%rbp)
	jne	.L1880
	jmp	.L1875
.L1876:
	.loc 1 5926 17
	cmpl	$128, -8(%rbp)
	jle	.L1875
.LBB1607:
	.loc 1 5930 14
	movl	$257, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 5931 13
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L1881
	.loc 1 5931 34 discriminator 1
	movl	$0, %eax
	jmp	.L1878
.L1881:
	.loc 1 5932 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -13(%rbp)
	.loc 1 5933 16
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	.loc 1 5934 16
	jmp	.L1882
.L1883:
	.loc 1 5935 16
	movq	-32(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 5936 15
	addq	$4, -32(%rbp)
	.loc 1 5937 16
	subl	$1, -8(%rbp)
.L1882:
	.loc 1 5934 16
	cmpl	$0, -8(%rbp)
	jne	.L1883
.L1875:
.LBE1607:
	.loc 1 5912 18
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 5912 10
	cmpl	$0, -12(%rbp)
	jg	.L1884
	.loc 1 5942 11
	movl	$1, %eax
.L1878:
	.loc 1 5943 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	stbi__psd_decode_rle, .-stbi__psd_decode_rle
	.section	.rodata
.LC94:
	.string	"not PSD"
.LC95:
	.string	"wrong version"
.LC96:
	.string	"wrong channel count"
.LC97:
	.string	"unsupported bit depth"
.LC98:
	.string	"wrong color format"
.LC99:
	.string	"corrupt"
	.text
	.type	stbi__psd_load, @function
stbi__psd_load:
.LFB667:
	.loc 1 5946 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movq	%r9, -192(%rbp)
	.loc 1 5956 8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5956 7
	cmpl	$943870035, %eax
	je	.L1886
	.loc 1 5957 14
	leaq	.LC94(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1886:
	.loc 1 5960 8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 5960 7
	cmpl	$1, %eax
	je	.L1888
	.loc 1 5961 14
	leaq	.LC95(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1888:
	.loc 1 5964 4
	movq	-152(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 5967 19
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -60(%rbp)
	.loc 1 5968 7
	cmpl	$0, -60(%rbp)
	js	.L1889
	.loc 1 5968 25 discriminator 1
	cmpl	$16, -60(%rbp)
	jle	.L1890
.L1889:
	.loc 1 5969 14
	leaq	.LC96(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1890:
	.loc 1 5972 8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5972 6
	movl	%eax, -64(%rbp)
	.loc 1 5973 8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5973 6
	movl	%eax, -68(%rbp)
	.loc 1 5975 7
	cmpl	$16777216, -64(%rbp)
	jle	.L1891
	.loc 1 5975 40 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1891:
	.loc 1 5976 7
	cmpl	$16777216, -68(%rbp)
	jle	.L1892
	.loc 1 5976 40 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1892:
	.loc 1 5979 15
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -72(%rbp)
	.loc 1 5980 7
	cmpl	$8, -72(%rbp)
	je	.L1893
	.loc 1 5980 22 discriminator 1
	cmpl	$16, -72(%rbp)
	je	.L1893
	.loc 1 5981 14
	leaq	.LC97(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1893:
	.loc 1 5993 8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 5993 7
	cmpl	$3, %eax
	je	.L1894
	.loc 1 5994 14
	leaq	.LC98(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1894:
	.loc 1 5997 17
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 5997 4
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6000 18
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 6000 4
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6003 18
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 6003 4
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6009 18
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -76(%rbp)
	.loc 1 6010 7
	cmpl	$1, -76(%rbp)
	jle	.L1895
	.loc 1 6011 14
	leaq	.LC52(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1895:
	.loc 1 6014 9
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$4, %edi
	call	stbi__mad3sizes_valid
	.loc 1 6014 7
	testl	%eax, %eax
	jne	.L1896
	.loc 1 6015 14
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1896:
	.loc 1 6019 7
	cmpl	$0, -76(%rbp)
	jne	.L1897
	.loc 1 6019 21 discriminator 1
	cmpl	$16, -72(%rbp)
	jne	.L1897
	.loc 1 6019 39 discriminator 2
	cmpl	$16, 16(%rbp)
	jne	.L1897
	.loc 1 6020 25
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$8, %edi
	call	stbi__malloc_mad3
	movq	%rax, -16(%rbp)
	.loc 1 6021 28
	movq	-192(%rbp), %rax
	movl	$16, (%rax)
	jmp	.L1898
.L1897:
	.loc 1 6023 43
	movl	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	sall	$2, %eax
	.loc 1 6023 25
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -16(%rbp)
.L1898:
	.loc 1 6025 7
	cmpq	$0, -16(%rbp)
	jne	.L1899
	.loc 1 6025 21 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1899:
	.loc 1 6026 15
	movl	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	movl	%eax, -80(%rbp)
	.loc 1 6032 7
	cmpl	$0, -76(%rbp)
	je	.L1900
	.loc 1 6043 23
	movl	-64(%rbp), %eax
	imull	-60(%rbp), %eax
	.loc 1 6043 7
	leal	(%rax,%rax), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6046 20
	movl	$0, -4(%rbp)
	.loc 1 6046 7
	jmp	.L1901
.L1908:
.LBB1608:
	.loc 1 6049 17
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 6049 12
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 6050 13
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L1902
	.loc 1 6052 20
	movl	$0, -8(%rbp)
	.loc 1 6052 13
	jmp	.L1903
.L1906:
	.loc 1 6053 19
	cmpl	$3, -4(%rbp)
	jne	.L1904
	.loc 1 6053 19 is_stmt 0 discriminator 1
	movl	$-1, %edx
	jmp	.L1905
.L1904:
	.loc 1 6053 19 discriminator 2
	movl	$0, %edx
.L1905:
	.loc 1 6053 19 discriminator 4
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 6052 42 is_stmt 1 discriminator 4
	addl	$1, -8(%rbp)
	.loc 1 6052 48 discriminator 4
	addq	$4, -24(%rbp)
.L1903:
	.loc 1 6052 13 discriminator 2
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1906
	jmp	.L1907
.L1902:
	.loc 1 6056 18
	movl	-80(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__psd_decode_rle
	.loc 1 6056 16
	testl	%eax, %eax
	jne	.L1907
	.loc 1 6057 16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6058 23
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1887
.L1907:
.LBE1608:
	.loc 1 6046 45 discriminator 2
	addl	$1, -4(%rbp)
.L1901:
	.loc 1 6046 7 discriminator 1
	cmpl	$3, -4(%rbp)
	jle	.L1908
	jmp	.L1909
.L1900:
	.loc 1 6068 20
	movl	$0, -4(%rbp)
	.loc 1 6068 7
	jmp	.L1910
.L1931:
	.loc 1 6069 13
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L1911
	.loc 1 6071 16
	cmpl	$16, -72(%rbp)
	jne	.L1912
	.loc 1 6071 32 discriminator 1
	cmpl	$16, 16(%rbp)
	jne	.L1912
.LBB1609:
	.loc 1 6072 57
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	.loc 1 6072 30
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 1 6073 29
	cmpl	$3, -4(%rbp)
	jne	.L1913
	.loc 1 6073 29 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L1914
.L1913:
	.loc 1 6073 29 discriminator 2
	movl	$0, %eax
.L1914:
	.loc 1 6073 29 discriminator 4
	movw	%ax, -82(%rbp)
	.loc 1 6074 23 is_stmt 1 discriminator 4
	movl	$0, -8(%rbp)
	.loc 1 6074 16 discriminator 4
	jmp	.L1915
.L1916:
	.loc 1 6075 22 discriminator 3
	movq	-32(%rbp), %rax
	movzwl	-82(%rbp), %edx
	movw	%dx, (%rax)
	.loc 1 6074 45 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 6074 51 discriminator 3
	addq	$8, -32(%rbp)
.L1915:
	.loc 1 6074 16 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1916
.LBE1609:
	.loc 1 6071 46
	jmp	.L1922
.L1912:
.LBB1610:
	.loc 1 6077 32
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 6077 25
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 6078 24
	cmpl	$3, -4(%rbp)
	jne	.L1918
	.loc 1 6078 24 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L1919
.L1918:
	.loc 1 6078 24 discriminator 2
	movl	$0, %eax
.L1919:
	.loc 1 6078 24 discriminator 4
	movb	%al, -83(%rbp)
	.loc 1 6079 23 is_stmt 1 discriminator 4
	movl	$0, -8(%rbp)
	.loc 1 6079 16 discriminator 4
	jmp	.L1920
.L1921:
	.loc 1 6080 22 discriminator 3
	movq	-40(%rbp), %rax
	movzbl	-83(%rbp), %edx
	movb	%dl, (%rax)
	.loc 1 6079 45 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 6079 51 discriminator 3
	addq	$4, -40(%rbp)
.L1920:
	.loc 1 6079 16 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1921
	jmp	.L1922
.L1911:
.LBE1610:
	.loc 1 6083 19
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6083 16
	cmpl	$16, %eax
	jne	.L1923
.LBB1611:
	.loc 1 6084 57
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	.loc 1 6084 30
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 1 6085 23
	movl	$0, -8(%rbp)
	.loc 1 6085 16
	jmp	.L1924
.L1925:
	.loc 1 6086 39 discriminator 3
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 6086 24 discriminator 3
	movl	%eax, %edx
	.loc 1 6086 22 discriminator 3
	movq	-48(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 6085 45 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 6085 51 discriminator 3
	addq	$8, -48(%rbp)
.L1924:
	.loc 1 6085 16 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1925
	jmp	.L1922
.L1923:
.LBE1611:
.LBB1612:
	.loc 1 6088 32
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 6088 25
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 6089 19
	cmpl	$16, -72(%rbp)
	jne	.L1926
	.loc 1 6090 26
	movl	$0, -8(%rbp)
	.loc 1 6090 19
	jmp	.L1927
.L1928:
	.loc 1 6091 38 discriminator 3
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 6091 55 discriminator 3
	sarl	$8, %eax
	.loc 1 6091 27 discriminator 3
	movl	%eax, %edx
	.loc 1 6091 25 discriminator 3
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 6090 48 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 6090 54 discriminator 3
	addq	$4, -56(%rbp)
.L1927:
	.loc 1 6090 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1928
	jmp	.L1922
.L1926:
	.loc 1 6093 26
	movl	$0, -8(%rbp)
	.loc 1 6093 19
	jmp	.L1929
.L1930:
	.loc 1 6094 27 discriminator 3
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6094 25 discriminator 3
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 6093 48 discriminator 3
	addl	$1, -8(%rbp)
	.loc 1 6093 54 discriminator 3
	addq	$4, -56(%rbp)
.L1929:
	.loc 1 6093 19 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L1930
.L1922:
.LBE1612:
	.loc 1 6068 45 discriminator 2
	addl	$1, -4(%rbp)
.L1910:
	.loc 1 6068 7 discriminator 1
	cmpl	$3, -4(%rbp)
	jle	.L1931
.L1909:
	.loc 1 6102 7
	cmpl	$3, -60(%rbp)
	jle	.L1932
	.loc 1 6103 13
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6103 10
	cmpl	$16, %eax
	jne	.L1933
	.loc 1 6104 16
	movl	$0, -8(%rbp)
	.loc 1 6104 10
	jmp	.L1934
.L1936:
.LBB1613:
	.loc 1 6105 59
	movl	-8(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 6105 56
	leaq	(%rax,%rax), %rdx
	.loc 1 6105 27
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	.loc 1 6106 22
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	.loc 1 6106 16
	testw	%ax, %ax
	je	.L1935
	.loc 1 6106 39 discriminator 1
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	.loc 1 6106 31 discriminator 1
	cmpw	$-1, %ax
	je	.L1935
.LBB1614:
	.loc 1 6107 31
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 1 6107 35
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 1 6107 22
	movss	.LC100(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	.loc 1 6108 22
	movss	.LC6(%rip), %xmm0
	divss	-124(%rbp), %xmm0
	movss	%xmm0, -128(%rbp)
	.loc 1 6109 44
	movss	.LC6(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	-128(%rbp), %xmm1
	.loc 1 6109 22
	movss	.LC100(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -132(%rbp)
	.loc 1 6110 48
	movq	-120(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 1 6110 51
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-128(%rbp), %xmm0
	.loc 1 6110 55
	addss	-132(%rbp), %xmm0
	.loc 1 6110 27
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	.loc 1 6110 25
	movq	-120(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 6111 48
	movq	-120(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 1 6111 51
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-128(%rbp), %xmm0
	.loc 1 6111 55
	addss	-132(%rbp), %xmm0
	.loc 1 6111 21
	movq	-120(%rbp), %rax
	addq	$2, %rax
	.loc 1 6111 27
	cvttss2sil	%xmm0, %edx
	.loc 1 6111 25
	movw	%dx, (%rax)
	.loc 1 6112 48
	movq	-120(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 1 6112 51
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-128(%rbp), %xmm0
	.loc 1 6112 55
	addss	-132(%rbp), %xmm0
	.loc 1 6112 21
	movq	-120(%rbp), %rax
	addq	$4, %rax
	.loc 1 6112 27
	cvttss2sil	%xmm0, %edx
	.loc 1 6112 25
	movw	%dx, (%rax)
.L1935:
.LBE1614:
.LBE1613:
	.loc 1 6104 29 discriminator 2
	addl	$1, -8(%rbp)
.L1934:
	.loc 1 6104 25 discriminator 1
	movl	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	.loc 1 6104 10 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L1936
	jmp	.L1932
.L1933:
	.loc 1 6116 16
	movl	$0, -8(%rbp)
	.loc 1 6116 10
	jmp	.L1937
.L1939:
.LBB1615:
	.loc 1 6117 43
	movl	-8(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	.loc 1 6117 28
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 1 6118 22
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 6118 16
	testb	%al, %al
	je	.L1938
	.loc 1 6118 39 discriminator 1
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 6118 31 discriminator 1
	cmpb	$-1, %al
	je	.L1938
.LBB1616:
	.loc 1 6119 31
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6119 35
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 1 6119 22
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	.loc 1 6120 22
	movss	.LC6(%rip), %xmm0
	divss	-100(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	.loc 1 6121 42
	movss	.LC6(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	-104(%rbp), %xmm1
	.loc 1 6121 22
	movss	.LC9(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	.loc 1 6122 49
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6122 52
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-104(%rbp), %xmm0
	.loc 1 6122 56
	addss	-108(%rbp), %xmm0
	.loc 1 6122 27
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	.loc 1 6122 25
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 6123 49
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6123 52
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-104(%rbp), %xmm0
	.loc 1 6123 56
	addss	-108(%rbp), %xmm0
	.loc 1 6123 21
	movq	-96(%rbp), %rax
	addq	$1, %rax
	.loc 1 6123 27
	cvttss2sil	%xmm0, %edx
	.loc 1 6123 25
	movb	%dl, (%rax)
	.loc 1 6124 49
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6124 52
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-104(%rbp), %xmm0
	.loc 1 6124 56
	addss	-108(%rbp), %xmm0
	.loc 1 6124 21
	movq	-96(%rbp), %rax
	addq	$2, %rax
	.loc 1 6124 27
	cvttss2sil	%xmm0, %edx
	.loc 1 6124 25
	movb	%dl, (%rax)
.L1938:
.LBE1616:
.LBE1615:
	.loc 1 6116 29 discriminator 2
	addl	$1, -8(%rbp)
.L1937:
	.loc 1 6116 25 discriminator 1
	movl	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	.loc 1 6116 10 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L1939
.L1932:
	.loc 1 6131 7
	cmpl	$0, -180(%rbp)
	je	.L1940
	.loc 1 6131 17 discriminator 1
	cmpl	$4, -180(%rbp)
	je	.L1940
	.loc 1 6132 13
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6132 10
	cmpl	$16, %eax
	jne	.L1941
	.loc 1 6133 28
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %ecx
	movl	-180(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format16
	movq	%rax, -16(%rbp)
	jmp	.L1942
.L1941:
	.loc 1 6135 16
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %ecx
	movl	-180(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -16(%rbp)
.L1942:
	.loc 1 6136 10
	cmpq	$0, -16(%rbp)
	jne	.L1940
	.loc 1 6136 31 discriminator 1
	movq	-16(%rbp), %rax
	jmp	.L1887
.L1940:
	.loc 1 6139 7
	cmpq	$0, -176(%rbp)
	je	.L1943
	.loc 1 6139 20 discriminator 1
	movq	-176(%rbp), %rax
	movl	$4, (%rax)
.L1943:
	.loc 1 6140 7
	movq	-168(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 6141 7
	movq	-160(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 6143 11
	movq	-16(%rbp), %rax
.L1887:
	.loc 1 6144 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	stbi__psd_load, .-stbi__psd_load
	.type	stbi__pic_is4, @function
stbi__pic_is4:
.LFB668:
	.loc 1 6156 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 6158 10
	movl	$0, -4(%rbp)
	.loc 1 6158 4
	jmp	.L1945
.L1948:
	.loc 1 6159 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6159 40
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	.loc 1 6159 10
	cmpb	%dl, %al
	je	.L1946
	.loc 1 6160 17
	movl	$0, %eax
	jmp	.L1947
.L1946:
	.loc 1 6158 19 discriminator 2
	addl	$1, -4(%rbp)
.L1945:
	.loc 1 6158 4 discriminator 1
	cmpl	$3, -4(%rbp)
	jle	.L1948
	.loc 1 6162 11
	movl	$1, %eax
.L1947:
	.loc 1 6163 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	stbi__pic_is4, .-stbi__pic_is4
	.section	.rodata
.LC101:
	.string	"S\200\3664"
.LC102:
	.string	"PICT"
	.text
	.type	stbi__pic_test_core, @function
stbi__pic_test_core:
.LFB669:
	.loc 1 6166 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 6169 9
	movq	-24(%rbp), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	.loc 1 6169 7
	testl	%eax, %eax
	jne	.L1950
	.loc 1 6170 14
	movl	$0, %eax
	jmp	.L1951
.L1950:
	.loc 1 6172 9
	movl	$0, -4(%rbp)
	.loc 1 6172 4
	jmp	.L1952
.L1953:
	.loc 1 6173 7 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6172 17 discriminator 3
	addl	$1, -4(%rbp)
.L1952:
	.loc 1 6172 4 discriminator 1
	cmpl	$83, -4(%rbp)
	jle	.L1953
	.loc 1 6175 9
	movq	-24(%rbp), %rax
	leaq	.LC102(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	.loc 1 6175 7
	testl	%eax, %eax
	jne	.L1954
	.loc 1 6176 14
	movl	$0, %eax
	jmp	.L1951
.L1954:
	.loc 1 6178 11
	movl	$1, %eax
.L1951:
	.loc 1 6179 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	stbi__pic_test_core, .-stbi__pic_test_core
	.section	.rodata
.LC103:
	.string	"bad file"
	.text
	.type	stbi__readval, @function
stbi__readval:
.LFB670:
	.loc 1 6187 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 6188 8
	movl	$128, -20(%rbp)
	.loc 1 6190 10
	movl	$0, -24(%rbp)
	.loc 1 6190 4
	jmp	.L1956
.L1960:
	.loc 1 6191 19
	movl	-44(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 6191 10
	testl	%eax, %eax
	je	.L1957
	.loc 1 6192 14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6192 13
	testl	%eax, %eax
	je	.L1958
	.loc 1 6192 38 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1959
.L1958:
	.loc 1 6193 14
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 6193 18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6193 17
	movb	%al, (%rbx)
.L1957:
	.loc 1 6190 19 discriminator 2
	addl	$1, -24(%rbp)
	.loc 1 6190 28 discriminator 2
	sarl	-20(%rbp)
.L1956:
	.loc 1 6190 4 discriminator 1
	cmpl	$3, -24(%rbp)
	jle	.L1960
	.loc 1 6197 11
	movq	-56(%rbp), %rax
.L1959:
	.loc 1 6198 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	stbi__readval, .-stbi__readval
	.type	stbi__copyval, @function
stbi__copyval:
.LFB671:
	.loc 1 6201 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 6202 8
	movl	$128, -4(%rbp)
	.loc 1 6204 10
	movl	$0, -8(%rbp)
	.loc 1 6204 4
	jmp	.L1962
.L1964:
	.loc 1 6205 18
	movl	-20(%rbp), %eax
	andl	-4(%rbp), %eax
	.loc 1 6205 10
	testl	%eax, %eax
	je	.L1963
	.loc 1 6206 21
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 6206 14
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 6206 21
	movzbl	(%rax), %eax
	.loc 1 6206 17
	movb	%al, (%rdx)
.L1963:
	.loc 1 6204 18 discriminator 2
	addl	$1, -8(%rbp)
	.loc 1 6204 27 discriminator 2
	sarl	-4(%rbp)
.L1962:
	.loc 1 6204 4 discriminator 1
	cmpl	$3, -8(%rbp)
	jle	.L1964
	.loc 1 6207 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	stbi__copyval, .-stbi__copyval
	.type	stbi__pic_load_core, @function
stbi__pic_load_core:
.LFB672:
	.loc 1 6210 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -160(%rbp)
	.loc 1 6211 8
	movl	$0, -4(%rbp)
	.loc 1 6211 19
	movl	$0, -8(%rbp)
.L1970:
.LBB1617:
	.loc 1 6219 10
	cmpl	$10, -8(%rbp)
	jne	.L1966
	.loc 1 6220 17
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1966:
	.loc 1 6222 36
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	.loc 1 6222 14
	leaq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	.loc 1 6224 17
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6224 15
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	.loc 1 6225 25
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6225 23
	movq	-64(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 6226 25
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6226 23
	movq	-64(%rbp), %rdx
	movb	%al, 1(%rdx)
	.loc 1 6227 25
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6227 23
	movq	-64(%rbp), %rdx
	movb	%al, 2(%rdx)
	.loc 1 6229 25
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6229 16
	orl	%eax, -4(%rbp)
	.loc 1 6231 11
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6231 10
	testl	%eax, %eax
	je	.L1968
	.loc 1 6231 44 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1968:
	.loc 1 6232 17
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 6232 10
	cmpb	$8, %al
	je	.L1969
	.loc 1 6232 38 discriminator 1
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1969:
.LBE1617:
	.loc 1 6233 4
	cmpl	$0, -68(%rbp)
	jne	.L1970
	.loc 1 6235 22
	movl	-4(%rbp), %eax
	andl	$16, %eax
	.loc 1 6235 33
	testl	%eax, %eax
	je	.L1971
	.loc 1 6235 33 is_stmt 0 discriminator 1
	movl	$4, %edx
	jmp	.L1972
.L1971:
	.loc 1 6235 33 discriminator 2
	movl	$3, %edx
.L1972:
	.loc 1 6235 10 is_stmt 1 discriminator 4
	movq	-152(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 6237 9 discriminator 4
	movl	$0, -12(%rbp)
	.loc 1 6237 4 discriminator 4
	jmp	.L1973
.L2008:
.LBB1618:
	.loc 1 6240 21
	movl	$0, -16(%rbp)
	.loc 1 6240 7
	jmp	.L1974
.L2007:
.LBB1619:
	.loc 1 6241 28
	leaq	-112(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	.loc 1 6242 34
	movl	-12(%rbp), %eax
	imull	-140(%rbp), %eax
	.loc 1 6242 40
	sall	$2, %eax
	movslq	%eax, %rdx
	.loc 1 6242 19
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 6244 24
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6244 10
	cmpl	$2, %eax
	je	.L1975
	cmpl	$2, %eax
	jg	.L1976
	testl	%eax, %eax
	je	.L1977
	cmpl	$1, %eax
	je	.L1978
.L1976:
	.loc 1 6246 23
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1977:
.LBB1620:
	.loc 1 6251 21
	movl	$0, -28(%rbp)
	.loc 1 6251 16
	jmp	.L1979
.L1981:
	.loc 1 6252 46
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6252 24
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	.loc 1 6252 22
	testq	%rax, %rax
	jne	.L1980
	.loc 1 6253 29
	movl	$0, %eax
	jmp	.L2009
.L1980:
	.loc 1 6251 32 discriminator 2
	addl	$1, -28(%rbp)
	.loc 1 6251 41 discriminator 2
	addq	$4, -24(%rbp)
.L1979:
	.loc 1 6251 16 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.L1981
	.loc 1 6254 16
	jmp	.L1982
.L1978:
.LBE1620:
.LBB1621:
	.loc 1 6259 23
	movl	-140(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 6261 25
	jmp	.L1983
.L1990:
.LBB1622:
	.loc 1 6264 28
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -37(%rbp)
	.loc 1 6265 26
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6265 25
	testl	%eax, %eax
	je	.L1984
	.loc 1 6265 52 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1984:
	.loc 1 6267 32
	movzbl	-37(%rbp), %eax
	.loc 1 6267 25
	cmpl	%eax, -32(%rbp)
	jge	.L1986
	.loc 1 6268 31
	movl	-32(%rbp), %eax
	movb	%al, -37(%rbp)
.L1986:
	.loc 1 6270 49
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6270 27
	movzbl	%al, %ecx
	leaq	-116(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	.loc 1 6270 25
	testq	%rax, %rax
	jne	.L1987
	.loc 1 6270 75 discriminator 1
	movl	$0, %eax
	jmp	.L2009
.L1987:
	.loc 1 6272 27
	movl	$0, -36(%rbp)
	.loc 1 6272 22
	jmp	.L1988
.L1989:
	.loc 1 6273 45 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6273 25 discriminator 3
	movzbl	%al, %eax
	leaq	-116(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	stbi__copyval
	.loc 1 6272 40 discriminator 3
	addl	$1, -36(%rbp)
	.loc 1 6272 48 discriminator 3
	addq	$4, -24(%rbp)
.L1988:
	.loc 1 6272 32 discriminator 1
	movzbl	-37(%rbp), %eax
	.loc 1 6272 22 discriminator 1
	cmpl	%eax, -36(%rbp)
	jl	.L1989
	.loc 1 6274 27
	movzbl	-37(%rbp), %eax
	subl	%eax, -32(%rbp)
.L1983:
.LBE1622:
	.loc 1 6261 25
	cmpl	$0, -32(%rbp)
	jg	.L1990
.LBE1621:
	.loc 1 6277 16
	jmp	.L1982
.L1975:
.LBB1623:
	.loc 1 6280 20
	movl	-140(%rbp), %eax
	movl	%eax, -44(%rbp)
	.loc 1 6281 22
	jmp	.L1991
.L2006:
.LBB1624:
	.loc 1 6282 31
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6282 23
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	.loc 1 6283 23
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6283 22
	testl	%eax, %eax
	je	.L1992
	.loc 1 6283 48 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1992:
	.loc 1 6285 22
	cmpl	$127, -48(%rbp)
	jle	.L1993
.LBB1625:
	.loc 1 6288 25
	cmpl	$128, -48(%rbp)
	jne	.L1994
	.loc 1 6289 33
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -48(%rbp)
	jmp	.L1995
.L1994:
	.loc 1 6291 31
	subl	$127, -48(%rbp)
.L1995:
	.loc 1 6292 25
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L1996
	.loc 1 6293 32
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L1996:
	.loc 1 6295 49
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6295 27
	movzbl	%al, %ecx
	leaq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	.loc 1 6295 25
	testq	%rax, %rax
	jne	.L1998
	.loc 1 6296 32
	movl	$0, %eax
	jmp	.L2009
.L1998:
	.loc 1 6298 27
	movl	$0, -52(%rbp)
	.loc 1 6298 22
	jmp	.L1999
.L2000:
	.loc 1 6299 45 discriminator 3
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6299 25 discriminator 3
	movzbl	%al, %eax
	leaq	-120(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	stbi__copyval
	.loc 1 6298 38 discriminator 3
	addl	$1, -52(%rbp)
	.loc 1 6298 48 discriminator 3
	addq	$4, -24(%rbp)
.L1999:
	.loc 1 6298 22 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L2000
	jmp	.L2001
.L1993:
.LBE1625:
	.loc 1 6301 22
	addl	$1, -48(%rbp)
	.loc 1 6302 25
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L2002
	.loc 1 6302 45 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2009
.L2002:
	.loc 1 6304 27
	movl	$0, -52(%rbp)
	.loc 1 6304 22
	jmp	.L2003
.L2005:
	.loc 1 6305 52
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 1 6305 30
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	.loc 1 6305 28
	testq	%rax, %rax
	jne	.L2004
	.loc 1 6306 35
	movl	$0, %eax
	jmp	.L2009
.L2004:
	.loc 1 6304 38 discriminator 2
	addl	$1, -52(%rbp)
	.loc 1 6304 47 discriminator 2
	addq	$4, -24(%rbp)
.L2003:
	.loc 1 6304 22 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L2005
.L2001:
	.loc 1 6308 23
	movl	-48(%rbp), %eax
	subl	%eax, -44(%rbp)
.L1991:
.LBE1624:
	.loc 1 6281 22
	cmpl	$0, -44(%rbp)
	jg	.L2006
	.loc 1 6310 16
	nop
.L1982:
.LBE1623:
.LBE1619:
	.loc 1 6240 51 discriminator 2
	addl	$1, -16(%rbp)
.L1974:
	.loc 1 6240 7 discriminator 1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L2007
.LBE1618:
	.loc 1 6237 23 discriminator 2
	addl	$1, -12(%rbp)
.L1973:
	.loc 1 6237 4 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L2008
	.loc 1 6316 11
	movq	-160(%rbp), %rax
.L2009:
	.loc 1 6317 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	stbi__pic_load_core, .-stbi__pic_load_core
	.type	stbi__pic_load, @function
stbi__pic_load:
.LFB673:
	.loc 1 6320 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	.loc 1 6325 7
	cmpq	$0, -64(%rbp)
	jne	.L2011
	.loc 1 6325 20 discriminator 1
	leaq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
.L2011:
	.loc 1 6327 10
	movl	$0, -12(%rbp)
	.loc 1 6327 4
	jmp	.L2012
.L2013:
	.loc 1 6328 7 discriminator 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6327 20 discriminator 3
	addl	$1, -12(%rbp)
.L2012:
	.loc 1 6327 4 discriminator 1
	cmpl	$91, -12(%rbp)
	jle	.L2013
	.loc 1 6330 8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -16(%rbp)
	.loc 1 6331 8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -20(%rbp)
	.loc 1 6333 7
	cmpl	$16777216, -20(%rbp)
	jle	.L2014
	.loc 1 6333 40 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2021
.L2014:
	.loc 1 6334 7
	cmpl	$16777216, -16(%rbp)
	jle	.L2016
	.loc 1 6334 40 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2021
.L2016:
	.loc 1 6336 8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6336 7
	testl	%eax, %eax
	je	.L2017
	.loc 1 6336 33 discriminator 1
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2021
.L2017:
	.loc 1 6337 9
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	$0, %ecx
	movl	$4, %edx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 6337 7
	testl	%eax, %eax
	jne	.L2018
	.loc 1 6337 51 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2021
.L2018:
	.loc 1 6339 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 6340 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 6341 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 6344 25
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	$0, %ecx
	movl	$4, %edx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -8(%rbp)
	.loc 1 6345 26
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	.loc 1 6345 28
	sall	$2, %eax
	.loc 1 6345 4
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6347 9
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi__pic_load_core
	.loc 1 6347 7
	testq	%rax, %rax
	jne	.L2019
	.loc 1 6348 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6349 13
	movq	$0, -8(%rbp)
.L2019:
	.loc 1 6351 8
	movq	-48(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 6352 8
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 6353 7
	cmpl	$0, -68(%rbp)
	jne	.L2020
	.loc 1 6353 32 discriminator 1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
.L2020:
	.loc 1 6354 11
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	.loc 1 6356 11
	movq	-8(%rbp), %rax
.L2021:
	.loc 1 6357 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	stbi__pic_load, .-stbi__pic_load
	.type	stbi__pic_test, @function
stbi__pic_test:
.LFB674:
	.loc 1 6360 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 6361 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_test_core
	movl	%eax, -4(%rbp)
	.loc 1 6362 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 6363 11
	movl	-4(%rbp), %eax
	.loc 1 6364 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	stbi__pic_test, .-stbi__pic_test
	.type	stbi__gif_test_raw, @function
stbi__gif_test_raw:
.LFB675:
	.loc 1 6399 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 6401 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6401 7
	cmpb	$71, %al
	jne	.L2025
	.loc 1 6401 32 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6401 29 discriminator 2
	cmpb	$73, %al
	jne	.L2025
	.loc 1 6401 56 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6401 53 discriminator 4
	cmpb	$70, %al
	jne	.L2025
	.loc 1 6401 80 discriminator 6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6401 77 discriminator 6
	cmpb	$56, %al
	je	.L2026
.L2025:
	.loc 1 6401 109 discriminator 7
	movl	$0, %eax
	jmp	.L2027
.L2026:
	.loc 1 6402 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6402 7
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 6403 7
	cmpl	$57, -4(%rbp)
	je	.L2028
	.loc 1 6403 18 discriminator 1
	cmpl	$55, -4(%rbp)
	je	.L2028
	.loc 1 6403 39 discriminator 2
	movl	$0, %eax
	jmp	.L2027
.L2028:
	.loc 1 6404 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6404 7
	cmpb	$97, %al
	je	.L2029
	.loc 1 6404 37 discriminator 1
	movl	$0, %eax
	jmp	.L2027
.L2029:
	.loc 1 6405 11
	movl	$1, %eax
.L2027:
	.loc 1 6406 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	stbi__gif_test_raw, .-stbi__gif_test_raw
	.type	stbi__gif_test, @function
stbi__gif_test:
.LFB676:
	.loc 1 6409 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 6410 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test_raw
	movl	%eax, -4(%rbp)
	.loc 1 6411 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 6412 11
	movl	-4(%rbp), %eax
	.loc 1 6413 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	stbi__gif_test, .-stbi__gif_test
	.type	stbi__gif_parse_colortable, @function
stbi__gif_parse_colortable:
.LFB677:
	.loc 1 6416 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	.loc 1 6418 10
	movl	$0, -20(%rbp)
	.loc 1 6418 4
	jmp	.L2033
.L2036:
	.loc 1 6419 10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 6419 19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6419 17
	movb	%al, 2(%rbx)
	.loc 1 6420 10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 6420 19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6420 17
	movb	%al, 1(%rbx)
	.loc 1 6421 10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 6421 19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6421 17
	movb	%al, (%rbx)
	.loc 1 6422 17
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L2034
	.loc 1 6422 17 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L2035
.L2034:
	.loc 1 6422 17 discriminator 2
	movl	$-1, %edx
.L2035:
	.loc 1 6422 10 is_stmt 1 discriminator 4
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 6422 17 discriminator 4
	movb	%dl, 3(%rax)
	.loc 1 6418 31 discriminator 4
	addl	$1, -20(%rbp)
.L2033:
	.loc 1 6418 4 discriminator 2
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L2036
	.loc 1 6424 1
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	stbi__gif_parse_colortable, .-stbi__gif_parse_colortable
	.section	.rodata
.LC104:
	.string	"not GIF"
.LC105:
	.string	""
	.text
	.type	stbi__gif_header, @function
stbi__gif_header:
.LFB678:
	.loc 1 6427 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	.loc 1 6429 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6429 7
	cmpb	$71, %al
	jne	.L2038
	.loc 1 6429 32 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6429 29 discriminator 1
	cmpb	$73, %al
	jne	.L2038
	.loc 1 6429 56 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6429 53 discriminator 2
	cmpb	$70, %al
	jne	.L2038
	.loc 1 6429 80 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6429 77 discriminator 3
	cmpb	$56, %al
	je	.L2039
.L2038:
	.loc 1 6430 14
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2040
.L2039:
	.loc 1 6432 14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
	.loc 1 6433 7
	cmpb	$55, -1(%rbp)
	je	.L2041
	.loc 1 6433 23 discriminator 1
	cmpb	$57, -1(%rbp)
	je	.L2041
	.loc 1 6433 52 discriminator 2
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2040
.L2041:
	.loc 1 6434 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6434 7
	cmpb	$97, %al
	je	.L2042
	.loc 1 6434 52 discriminator 1
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2040
.L2042:
	.loc 1 6436 27
	leaq	.LC105(%rip), %rax
	movq	%rax, %fs:stbi__g_failure_reason@tpoff
	.loc 1 6437 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 6437 9
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 6438 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	.loc 1 6438 9
	movq	-32(%rbp), %rdx
	movl	%eax, 4(%rdx)
	.loc 1 6439 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6439 13
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 1 6440 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6440 15
	movq	-32(%rbp), %rax
	movl	%edx, 36(%rax)
	.loc 1 6441 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6441 13
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	.loc 1 6442 19
	movq	-32(%rbp), %rax
	movl	$-1, 44(%rax)
	.loc 1 6444 9
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6444 7
	cmpl	$16777216, %eax
	jle	.L2043
	.loc 1 6444 43 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L2040
.L2043:
	.loc 1 6445 9
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6445 7
	cmpl	$16777216, %eax
	jle	.L2044
	.loc 1 6445 43 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L2040
.L2044:
	.loc 1 6447 7
	cmpq	$0, -40(%rbp)
	je	.L2045
	.loc 1 6447 25 discriminator 1
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
.L2045:
	.loc 1 6449 7
	cmpl	$0, -44(%rbp)
	je	.L2046
	.loc 1 6449 24 discriminator 1
	movl	$1, %eax
	jmp	.L2040
.L2046:
	.loc 1 6451 9
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 6451 17
	andl	$128, %eax
	.loc 1 6451 7
	testl	%eax, %eax
	je	.L2047
	.loc 1 6452 51
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 6452 59
	andl	$7, %eax
	.loc 1 6452 7
	movl	$2, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 6452 37
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rsi
	.loc 1 6452 7
	movq	-24(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	stbi__gif_parse_colortable
.L2047:
	.loc 1 6454 11
	movl	$1, %eax
.L2040:
	.loc 1 6455 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	stbi__gif_header, .-stbi__gif_header
	.type	stbi__gif_info_raw, @function
stbi__gif_info_raw:
.LFB679:
	.loc 1 6458 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 6459 32
	movl	$34928, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	.loc 1 6460 9
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__gif_header
	.loc 1 6460 7
	testl	%eax, %eax
	jne	.L2049
	.loc 1 6461 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6462 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 6463 14
	movl	$0, %eax
	jmp	.L2050
.L2049:
	.loc 1 6465 7
	cmpq	$0, -32(%rbp)
	je	.L2051
	.loc 1 6465 17 discriminator 1
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6465 14 discriminator 1
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L2051:
	.loc 1 6466 7
	cmpq	$0, -40(%rbp)
	je	.L2052
	.loc 1 6466 17 discriminator 1
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 6466 14 discriminator 1
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L2052:
	.loc 1 6467 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6468 11
	movl	$1, %eax
.L2050:
	.loc 1 6469 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	stbi__gif_info_raw, .-stbi__gif_info_raw
	.type	stbi__out_gif_code, @function
stbi__out_gif_code:
.LFB680:
	.loc 1 6472 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movw	%ax, -44(%rbp)
	.loc 1 6478 22
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzwl	4(%rax,%rdx,4), %eax
	.loc 1 6478 7
	testw	%ax, %ax
	js	.L2054
	.loc 1 6479 43
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzwl	4(%rax,%rdx,4), %eax
	.loc 1 6479 7
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__out_gif_code
.L2054:
	.loc 1 6481 9
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	.loc 1 6481 21
	movq	-40(%rbp), %rax
	movl	34904(%rax), %eax
	.loc 1 6481 7
	cmpl	%eax, %edx
	jge	.L2060
	.loc 1 6483 11
	movq	-40(%rbp), %rax
	movl	34908(%rax), %edx
	.loc 1 6483 22
	movq	-40(%rbp), %rax
	movl	34912(%rax), %eax
	.loc 1 6483 8
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 6484 10
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 6484 8
	movl	-4(%rbp), %eax
	cltq
	.loc 1 6484 6
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 6485 5
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 1 6485 19
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cltq
	.loc 1 6485 14
	addq	%rcx, %rax
	.loc 1 6485 24
	movb	$1, (%rax)
	.loc 1 6487 10
	movq	-40(%rbp), %rax
	movq	34872(%rax), %rcx
	.loc 1 6487 38
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzbl	7(%rax,%rdx,4), %eax
	movzbl	%al, %eax
	.loc 1 6487 46
	sall	$2, %eax
	cltq
	.loc 1 6487 6
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 6488 9
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 6488 7
	cmpb	$-128, %al
	jbe	.L2057
	.loc 1 6489 12
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 6490 8
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 1 6490 12
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 6491 8
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 1 6491 15
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 6491 12
	movb	%al, (%rdx)
	.loc 1 6492 8
	movq	-16(%rbp), %rax
	leaq	3(%rax), %rdx
	.loc 1 6492 12
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
.L2057:
	.loc 1 6494 13
	movq	-40(%rbp), %rax
	movl	34908(%rax), %eax
	leal	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34908(%rax)
	.loc 1 6496 9
	movq	-40(%rbp), %rax
	movl	34908(%rax), %edx
	.loc 1 6496 21
	movq	-40(%rbp), %rax
	movl	34900(%rax), %eax
	.loc 1 6496 7
	cmpl	%eax, %edx
	jl	.L2053
	.loc 1 6497 19
	movq	-40(%rbp), %rax
	movl	34892(%rax), %edx
	.loc 1 6497 16
	movq	-40(%rbp), %rax
	movl	%edx, 34908(%rax)
	.loc 1 6498 16
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	.loc 1 6498 20
	movq	-40(%rbp), %rax
	movl	34884(%rax), %eax
	.loc 1 6498 16
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34912(%rax)
	.loc 1 6500 13
	jmp	.L2058
.L2059:
	.loc 1 6501 39
	movq	-40(%rbp), %rax
	movl	34916(%rax), %edx
	.loc 1 6501 27
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	.loc 1 6501 36
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 6501 18
	movq	-40(%rbp), %rax
	movl	%edx, 34884(%rax)
	.loc 1 6502 22
	movq	-40(%rbp), %rax
	movl	34896(%rax), %edx
	.loc 1 6502 36
	movq	-40(%rbp), %rax
	movl	34884(%rax), %eax
	.loc 1 6502 43
	sarl	%eax
	.loc 1 6502 32
	addl	%eax, %edx
	.loc 1 6502 19
	movq	-40(%rbp), %rax
	movl	%edx, 34912(%rax)
	.loc 1 6503 13
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	.loc 1 6503 10
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34880(%rax)
.L2058:
	.loc 1 6500 15
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	.loc 1 6500 27
	movq	-40(%rbp), %rax
	movl	34904(%rax), %eax
	.loc 1 6500 13
	cmpl	%eax, %edx
	jl	.L2053
	.loc 1 6500 39 discriminator 1
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	.loc 1 6500 35 discriminator 1
	testl	%eax, %eax
	jg	.L2059
	jmp	.L2053
.L2060:
	.loc 1 6481 30
	nop
.L2053:
	.loc 1 6506 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	stbi__out_gif_code, .-stbi__out_gif_code
	.section	.rodata
.LC106:
	.string	"no clear code"
.LC107:
	.string	"too many codes"
.LC108:
	.string	"illegal code in raster"
	.text
	.type	stbi__process_gif_raster, @function
stbi__process_gif_raster:
.LFB681:
	.loc 1 6509 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 1 6516 13
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -37(%rbp)
	.loc 1 6517 7
	cmpb	$12, -37(%rbp)
	jbe	.L2062
	.loc 1 6517 28 discriminator 1
	movl	$0, %eax
	jmp	.L2063
.L2062:
	.loc 1 6518 14
	movzbl	-37(%rbp), %eax
	.loc 1 6518 10
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	.loc 1 6519 10
	movl	$1, -12(%rbp)
	.loc 1 6520 22
	movzbl	-37(%rbp), %eax
	.loc 1 6520 13
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 6521 18
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 6521 13
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc 1 6522 9
	movl	$0, -32(%rbp)
	.loc 1 6523 15
	movl	$0, -36(%rbp)
	.loc 1 6524 19
	movl	$0, -8(%rbp)
	.loc 1 6524 4
	jmp	.L2064
.L2065:
	.loc 1 6525 34 discriminator 3
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movw	$-1, 4(%rax,%rdx,4)
	.loc 1 6526 35 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 6526 33 discriminator 3
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movb	%cl, 6(%rax,%rdx,4)
	.loc 1 6527 36 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	.loc 1 6527 34 discriminator 3
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movb	%cl, 7(%rax,%rdx,4)
	.loc 1 6524 52 discriminator 3
	addl	$1, -8(%rbp)
.L2064:
	.loc 1 6524 4 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L2065
	.loc 1 6531 10
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	.loc 1 6532 12
	movl	$-1, -28(%rbp)
	.loc 1 6534 8
	movl	$0, -4(%rbp)
.L2081:
	.loc 1 6536 10
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L2066
	.loc 1 6537 13
	cmpl	$0, -4(%rbp)
	jne	.L2067
	.loc 1 6538 19
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6538 17
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 6539 16
	cmpl	$0, -4(%rbp)
	jne	.L2067
	.loc 1 6540 24
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L2063
.L2067:
	.loc 1 6542 10
	subl	$1, -4(%rbp)
	.loc 1 6543 32
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6543 18
	movzbl	%al, %edx
	.loc 1 6543 46
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 6543 15
	orl	%eax, -32(%rbp)
	.loc 1 6544 21
	addl	$8, -36(%rbp)
	jmp	.L2081
.L2066:
.LBB1626:
	.loc 1 6546 22
	movl	-32(%rbp), %eax
	andl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
	.loc 1 6547 15
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, -32(%rbp)
	.loc 1 6548 21
	movl	-16(%rbp), %eax
	subl	%eax, -36(%rbp)
	.loc 1 6550 13
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L2069
	.loc 1 6551 31
	movzbl	-37(%rbp), %eax
	.loc 1 6551 22
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc 1 6552 27
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 6552 22
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc 1 6553 19
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	.loc 1 6554 21
	movl	$-1, -28(%rbp)
	.loc 1 6555 19
	movl	$0, -12(%rbp)
	jmp	.L2081
.L2069:
	.loc 1 6556 35
	movl	-44(%rbp), %eax
	addl	$1, %eax
	.loc 1 6556 20
	cmpl	%eax, -48(%rbp)
	jne	.L2070
	.loc 1 6557 13
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6558 19
	jmp	.L2071
.L2072:
	.loc 1 6559 16
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2071:
	.loc 1 6558 27
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6558 25
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 6558 19
	cmpl	$0, -4(%rbp)
	jg	.L2072
	.loc 1 6560 21
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L2063
.L2070:
	.loc 1 6561 20
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L2073
	.loc 1 6562 16
	cmpl	$0, -12(%rbp)
	je	.L2074
	.loc 1 6563 23
	leaq	.LC106(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2063
.L2074:
	.loc 1 6566 16
	cmpl	$0, -28(%rbp)
	js	.L2075
	.loc 1 6567 35
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	.loc 1 6567 18
	cltq
	addq	$524, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	.loc 1 6568 19
	cmpl	$8192, -24(%rbp)
	jle	.L2076
	.loc 1 6569 26
	leaq	.LC107(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2063
.L2076:
	.loc 1 6572 28
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	.loc 1 6572 26
	movq	-56(%rbp), %rax
	movw	%dx, (%rax)
	.loc 1 6573 44
	movq	-80(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzbl	6(%rax,%rdx,4), %edx
	.loc 1 6573 25
	movq	-56(%rbp), %rax
	movb	%dl, 2(%rax)
	.loc 1 6574 26
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L2077
	.loc 1 6574 26 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	jmp	.L2078
.L2077:
	.loc 1 6574 26 discriminator 2
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzbl	6(%rax,%rdx,4), %eax
.L2078:
	.loc 1 6574 26 discriminator 4
	movq	-56(%rbp), %rdx
	movb	%al, 3(%rdx)
	jmp	.L2079
.L2075:
	.loc 1 6575 23 is_stmt 1
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L2079
	.loc 1 6576 23
	leaq	.LC108(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2063
.L2079:
	.loc 1 6578 35
	movl	-48(%rbp), %eax
	.loc 1 6578 13
	movzwl	%ax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__out_gif_code
	.loc 1 6580 24
	movl	-24(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 6580 16
	testl	%eax, %eax
	jne	.L2080
	.loc 1 6580 41 discriminator 1
	cmpl	$4095, -24(%rbp)
	jg	.L2080
	.loc 1 6581 24
	addl	$1, -16(%rbp)
	.loc 1 6582 30
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.loc 1 6582 25
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.L2080:
	.loc 1 6585 21
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L2081
.L2073:
	.loc 1 6587 20
	leaq	.LC108(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L2063:
.LBE1626:
	.loc 1 6591 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	stbi__process_gif_raster, .-stbi__process_gif_raster
	.section	.rodata
.LC109:
	.string	"bad Image Descriptor"
.LC110:
	.string	"missing color table"
.LC111:
	.string	"unknown code"
	.text
	.type	stbi__gif_load_next, @function
stbi__gif_load_next:
.LFB682:
	.loc 1 6596 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	.loc 1 6604 16
	movl	$0, -8(%rbp)
	.loc 1 6605 9
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 6605 7
	testq	%rax, %rax
	jne	.L2083
	.loc 1 6606 12
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__gif_header
	.loc 1 6606 10
	testl	%eax, %eax
	jne	.L2084
	.loc 1 6606 51 discriminator 1
	movl	$0, %eax
	jmp	.L2085
.L2084:
	.loc 1 6607 12
	movq	-80(%rbp), %rax
	movl	4(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$4, %edi
	call	stbi__mad3sizes_valid
	.loc 1 6607 10
	testl	%eax, %eax
	jne	.L2086
	.loc 1 6608 17
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2085
.L2086:
	.loc 1 6609 17
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6609 24
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6609 14
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 6610 43
	movl	-16(%rbp), %eax
	sall	$2, %eax
	.loc 1 6610 28
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	.loc 1 6610 14
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 6611 50
	movl	-16(%rbp), %eax
	sall	$2, %eax
	.loc 1 6611 35
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	.loc 1 6611 21
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 1 6612 32
	movl	-16(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	.loc 1 6612 18
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	.loc 1 6613 13
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 6613 10
	testq	%rax, %rax
	je	.L2087
	.loc 1 6613 24 discriminator 1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 6613 19 discriminator 1
	testq	%rax, %rax
	je	.L2087
	.loc 1 6613 42 discriminator 2
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 6613 37 discriminator 2
	testq	%rax, %rax
	jne	.L2088
.L2087:
	.loc 1 6614 17
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2085
.L2088:
	.loc 1 6619 30
	movl	-16(%rbp), %eax
	sall	$2, %eax
	.loc 1 6619 7
	movslq	%eax, %rdx
	.loc 1 6619 15
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 6619 7
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6620 37
	movl	-16(%rbp), %eax
	sall	$2, %eax
	.loc 1 6620 7
	movslq	%eax, %rdx
	.loc 1 6620 15
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 6620 7
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6621 7
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 6621 15
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 6621 7
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6622 19
	movl	$1, -8(%rbp)
	jmp	.L2089
.L2083:
	.loc 1 6625 19
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 6625 36
	sarl	$2, %eax
	.loc 1 6625 15
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	.loc 1 6626 17
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6626 24
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6626 14
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 6628 10
	cmpl	$3, -4(%rbp)
	jne	.L2090
	.loc 1 6628 26 discriminator 1
	cmpq	$0, -104(%rbp)
	jne	.L2090
	.loc 1 6629 18
	movl	$2, -4(%rbp)
.L2090:
	.loc 1 6632 10
	cmpl	$3, -4(%rbp)
	jne	.L2091
	.loc 1 6633 18
	movl	$0, -12(%rbp)
	.loc 1 6633 10
	jmp	.L2092
.L2094:
	.loc 1 6634 18
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 6634 27
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 6634 16
	testb	%al, %al
	je	.L2093
	.loc 1 6635 54
	movl	-12(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	.loc 1 6635 41
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 6635 26
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 6635 35
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 6635 24
	addq	%rax, %rdx
	movl	(%rcx), %eax
	.loc 1 6635 16
	movl	%eax, (%rdx)
.L2093:
	.loc 1 6633 36 discriminator 2
	addl	$1, -12(%rbp)
.L2092:
	.loc 1 6633 10 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L2094
	jmp	.L2095
.L2091:
	.loc 1 6638 17
	cmpl	$2, -4(%rbp)
	jne	.L2095
	.loc 1 6640 18
	movl	$0, -12(%rbp)
	.loc 1 6640 10
	jmp	.L2096
.L2098:
	.loc 1 6641 18
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 6641 27
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 6641 16
	testb	%al, %al
	je	.L2097
	.loc 1 6642 43
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 6642 59
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 6642 41
	leaq	(%rdx,%rax), %rcx
	.loc 1 6642 26
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 6642 35
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 6642 24
	addq	%rax, %rdx
	movl	(%rcx), %eax
	.loc 1 6642 16
	movl	%eax, (%rdx)
.L2097:
	.loc 1 6640 36 discriminator 2
	addl	$1, -12(%rbp)
.L2096:
	.loc 1 6640 10 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L2098
.L2095:
	.loc 1 6653 43
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6653 50
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6653 47
	imull	%edx, %eax
	sall	$2, %eax
	.loc 1 6653 7
	movslq	%eax, %rdx
	.loc 1 6653 31
	movq	-80(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 1 6653 16
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 6653 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2089:
	.loc 1 6657 31
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6657 38
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6657 35
	imull	%edx, %eax
	.loc 1 6657 4
	movslq	%eax, %rdx
	.loc 1 6657 13
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 6657 4
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L2124:
.LBB1627:
	.loc 1 6660 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6660 11
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 6661 7
	cmpl	$59, -20(%rbp)
	je	.L2099
	cmpl	$59, -20(%rbp)
	jg	.L2100
	cmpl	$33, -20(%rbp)
	je	.L2101
	cmpl	$44, -20(%rbp)
	jne	.L2100
.LBB1628:
	.loc 1 6667 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -24(%rbp)
	.loc 1 6668 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -28(%rbp)
	.loc 1 6669 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -32(%rbp)
	.loc 1 6670 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -36(%rbp)
	.loc 1 6671 21
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	.loc 1 6671 30
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6671 16
	cmpl	%eax, %edx
	jg	.L2102
	.loc 1 6671 43 discriminator 1
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	.loc 1 6671 52 discriminator 1
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6671 36 discriminator 1
	cmpl	%eax, %edx
	jle	.L2103
.L2102:
	.loc 1 6672 23
	leaq	.LC109(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2085
.L2103:
	.loc 1 6674 29
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 6674 33
	leal	0(,%rax,4), %edx
	.loc 1 6674 26
	movq	-80(%rbp), %rax
	movl	%edx, 34916(%rax)
	.loc 1 6675 28
	movl	-24(%rbp), %eax
	leal	0(,%rax,4), %edx
	.loc 1 6675 24
	movq	-80(%rbp), %rax
	movl	%edx, 34892(%rax)
	.loc 1 6676 31
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	.loc 1 6676 28
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	.loc 1 6676 24
	movq	-80(%rbp), %rax
	movl	%edx, 34896(%rax)
	.loc 1 6677 27
	movq	-80(%rbp), %rax
	movl	34892(%rax), %edx
	.loc 1 6677 41
	movl	-32(%rbp), %eax
	sall	$2, %eax
	.loc 1 6677 37
	addl	%eax, %edx
	.loc 1 6677 24
	movq	-80(%rbp), %rax
	movl	%edx, 34900(%rax)
	.loc 1 6678 27
	movq	-80(%rbp), %rax
	movl	34896(%rax), %edx
	.loc 1 6678 44
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	.loc 1 6678 41
	imull	-36(%rbp), %eax
	.loc 1 6678 37
	addl	%eax, %edx
	.loc 1 6678 24
	movq	-80(%rbp), %rax
	movl	%edx, 34904(%rax)
	.loc 1 6679 27
	movq	-80(%rbp), %rax
	movl	34892(%rax), %edx
	.loc 1 6679 24
	movq	-80(%rbp), %rax
	movl	%edx, 34908(%rax)
	.loc 1 6680 27
	movq	-80(%rbp), %rax
	movl	34896(%rax), %edx
	.loc 1 6680 24
	movq	-80(%rbp), %rax
	movl	%edx, 34912(%rax)
	.loc 1 6686 16
	cmpl	$0, -32(%rbp)
	jne	.L2104
	.loc 1 6687 28
	movq	-80(%rbp), %rax
	movl	34904(%rax), %edx
	.loc 1 6687 25
	movq	-80(%rbp), %rax
	movl	%edx, 34912(%rax)
.L2104:
	.loc 1 6689 25
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6689 23
	movq	-80(%rbp), %rax
	movl	%edx, 34888(%rax)
	.loc 1 6691 18
	movq	-80(%rbp), %rax
	movl	34888(%rax), %eax
	.loc 1 6691 27
	andl	$64, %eax
	.loc 1 6691 16
	testl	%eax, %eax
	je	.L2105
	.loc 1 6692 31
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	.loc 1 6692 28
	leal	0(,%rax,8), %edx
	.loc 1 6692 24
	movq	-80(%rbp), %rax
	movl	%edx, 34884(%rax)
	.loc 1 6693 25
	movq	-80(%rbp), %rax
	movl	$3, 34880(%rax)
	jmp	.L2106
.L2105:
	.loc 1 6695 27
	movq	-80(%rbp), %rax
	movl	34916(%rax), %edx
	.loc 1 6695 24
	movq	-80(%rbp), %rax
	movl	%edx, 34884(%rax)
	.loc 1 6696 25
	movq	-80(%rbp), %rax
	movl	$0, 34880(%rax)
.L2106:
	.loc 1 6699 18
	movq	-80(%rbp), %rax
	movl	34888(%rax), %eax
	.loc 1 6699 27
	andl	$128, %eax
	.loc 1 6699 16
	testl	%eax, %eax
	je	.L2107
	.loc 1 6700 77
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 6700 86
	andl	$1, %eax
	.loc 1 6700 16
	testl	%eax, %eax
	je	.L2108
	.loc 1 6700 16 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	jmp	.L2109
.L2108:
	.loc 1 6700 16 discriminator 2
	movl	$-1, %eax
.L2109:
	.loc 1 6700 61 is_stmt 1 discriminator 4
	movq	-80(%rbp), %rdx
	movl	34888(%rdx), %edx
	.loc 1 6700 70 discriminator 4
	andl	$7, %edx
	.loc 1 6700 16 discriminator 4
	movl	$2, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	.loc 1 6700 46 discriminator 4
	movq	-80(%rbp), %rcx
	leaq	1076(%rcx), %rsi
	.loc 1 6700 16 discriminator 4
	movq	-72(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__gif_parse_colortable
	.loc 1 6701 45 discriminator 4
	movq	-80(%rbp), %rax
	leaq	1076(%rax), %rdx
	.loc 1 6701 31 discriminator 4
	movq	-80(%rbp), %rax
	movq	%rdx, 34872(%rax)
	jmp	.L2110
.L2107:
	.loc 1 6702 25
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 6702 33
	andl	$128, %eax
	.loc 1 6702 23
	testl	%eax, %eax
	je	.L2111
	.loc 1 6703 45
	movq	-80(%rbp), %rax
	leaq	52(%rax), %rdx
	.loc 1 6703 31
	movq	-80(%rbp), %rax
	movq	%rdx, 34872(%rax)
	jmp	.L2110
.L2111:
	.loc 1 6705 23
	leaq	.LC110(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2085
.L2110:
	.loc 1 6707 17
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__process_gif_raster
	movq	%rax, -48(%rbp)
	.loc 1 6708 16
	cmpq	$0, -48(%rbp)
	jne	.L2112
	.loc 1 6708 28 discriminator 1
	movl	$0, %eax
	jmp	.L2085
.L2112:
	.loc 1 6711 23
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 6711 30
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 6711 20
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 1 6712 16
	cmpl	$0, -8(%rbp)
	je	.L2113
	.loc 1 6712 34 discriminator 1
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	.loc 1 6712 29 discriminator 1
	testl	%eax, %eax
	jle	.L2113
	.loc 1 6714 24
	movl	$0, -12(%rbp)
	.loc 1 6714 16
	jmp	.L2114
.L2116:
	.loc 1 6715 24
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 6715 33
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 6715 22
	testb	%al, %al
	jne	.L2115
	.loc 1 6716 30
	movq	-80(%rbp), %rax
	movl	36(%rax), %edx
	.loc 1 6716 44
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$-1, 55(%rax,%rdx,4)
	.loc 1 6717 56
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	.loc 1 6717 47
	cltq
	addq	$12, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	.loc 1 6717 32
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 6717 41
	movl	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	.loc 1 6717 30
	addq	%rax, %rdx
	movl	(%rcx), %eax
	.loc 1 6717 22
	movl	%eax, (%rdx)
.L2115:
	.loc 1 6714 42 discriminator 2
	addl	$1, -12(%rbp)
.L2114:
	.loc 1 6714 16 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L2116
.L2113:
	.loc 1 6722 20
	movq	-48(%rbp), %rax
	jmp	.L2085
.L2101:
.LBE1628:
.LBB1629:
	.loc 1 6728 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6728 17
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	.loc 1 6729 16
	cmpl	$249, -52(%rbp)
	jne	.L2122
	.loc 1 6730 22
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6730 20
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	.loc 1 6731 19
	cmpl	$4, -56(%rbp)
	jne	.L2118
	.loc 1 6732 31
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6732 29
	movq	-80(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 1 6733 35
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	.loc 1 6733 33
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	.loc 1 6733 28
	movq	-80(%rbp), %rax
	movl	%edx, 34920(%rax)
	.loc 1 6736 24
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	.loc 1 6736 22
	testl	%eax, %eax
	js	.L2119
	.loc 1 6737 30
	movq	-80(%rbp), %rax
	movl	44(%rax), %edx
	.loc 1 6737 48
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$-1, 55(%rax,%rdx,4)
.L2119:
	.loc 1 6739 24
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	.loc 1 6739 33
	andl	$1, %eax
	.loc 1 6739 22
	testl	%eax, %eax
	je	.L2120
	.loc 1 6740 39
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6740 37
	movq	-80(%rbp), %rax
	movl	%edx, 44(%rax)
	.loc 1 6741 27
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	.loc 1 6741 25
	testl	%eax, %eax
	js	.L2122
	.loc 1 6742 33
	movq	-80(%rbp), %rax
	movl	44(%rax), %edx
	.loc 1 6742 51
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$0, 55(%rax,%rdx,4)
	jmp	.L2122
.L2120:
	.loc 1 6746 22
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6747 37
	movq	-80(%rbp), %rax
	movl	$-1, 44(%rax)
	jmp	.L2122
.L2118:
	.loc 1 6750 19
	movl	-56(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 6751 19
	jmp	.L2121
.L2123:
	.loc 1 6755 16
	movl	-56(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2122:
	.loc 1 6754 27
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6754 25
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	.loc 1 6754 19
	cmpl	$0, -56(%rbp)
	jne	.L2123
	.loc 1 6757 13
	jmp	.L2121
.L2099:
.LBE1629:
	.loc 1 6761 20
	movq	-72(%rbp), %rax
	jmp	.L2085
.L2100:
	.loc 1 6764 20
	leaq	.LC111(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2085
.L2121:
.LBE1627:
	.loc 1 6659 13
	jmp	.L2124
.L2085:
	.loc 1 6767 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	stbi__gif_load_next, .-stbi__gif_load_next
	.type	stbi__load_gif_main, @function
stbi__load_gif_main:
.LFB683:
	.loc 1 6770 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$35040, %rsp
	movq	%rdi, -35000(%rbp)
	movq	%rsi, -35008(%rbp)
	movq	%rdx, -35016(%rbp)
	movq	%rcx, -35024(%rbp)
	movq	%r8, -35032(%rbp)
	movq	%r9, -35040(%rbp)
	.loc 1 6771 8
	movq	-35000(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test
	.loc 1 6771 7
	testl	%eax, %eax
	je	.L2126
.LBB1630:
	.loc 1 6772 11
	movl	$0, -4(%rbp)
	.loc 1 6773 16
	movq	$0, -16(%rbp)
	.loc 1 6774 16
	movq	$0, -24(%rbp)
	.loc 1 6775 16
	movq	$0, -32(%rbp)
	.loc 1 6778 11
	movl	$0, -36(%rbp)
	.loc 1 6779 11
	movl	$0, -40(%rbp)
	.loc 1 6780 7
	leaq	-34992(%rbp), %rax
	movl	$34928, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6781 10
	cmpq	$0, -35008(%rbp)
	je	.L2135
	.loc 1 6782 18
	movq	-35008(%rbp), %rax
	movq	$0, (%rax)
.L2135:
	.loc 1 6786 14
	movq	-32(%rbp), %rcx
	movq	-35040(%rbp), %rdx
	leaq	-34992(%rbp), %rsi
	movq	-35000(%rbp), %rax
	movq	%rcx, %r8
	movl	16(%rbp), %ecx
	movq	%rax, %rdi
	call	stbi__gif_load_next
	movq	%rax, -16(%rbp)
	.loc 1 6787 13
	movq	-16(%rbp), %rax
	cmpq	-35000(%rbp), %rax
	jne	.L2128
	.loc 1 6787 36 discriminator 1
	movq	$0, -16(%rbp)
.L2128:
	.loc 1 6789 13
	cmpq	$0, -16(%rbp)
	je	.L2129
	.loc 1 6790 19
	movl	-34992(%rbp), %edx
	.loc 1 6790 16
	movq	-35016(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 6791 19
	movl	-34988(%rbp), %edx
	.loc 1 6791 16
	movq	-35024(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 6792 13
	addl	$1, -4(%rbp)
	.loc 1 6793 23
	movl	-34992(%rbp), %edx
	.loc 1 6793 29
	movl	-34988(%rbp), %eax
	.loc 1 6793 26
	imull	%edx, %eax
	.loc 1 6793 20
	sall	$2, %eax
	movl	%eax, -44(%rbp)
	.loc 1 6795 16
	cmpq	$0, -24(%rbp)
	je	.L2130
.LBB1631:
	.loc 1 6796 39
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -56(%rbp)
	.loc 1 6797 19
	cmpq	$0, -56(%rbp)
	jne	.L2131
	.loc 1 6798 19
	movq	-34984(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6799 19
	movq	-34968(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6800 19
	movq	-34976(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6801 26
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2137
.L2131:
	.loc 1 6804 24
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 6805 29
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 1 6808 19
	cmpq	$0, -35008(%rbp)
	je	.L2133
	.loc 1 6809 36
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-35008(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	.loc 1 6809 27
	movq	-35008(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 1 6810 31
	movl	-4(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, -40(%rbp)
	jmp	.L2133
.L2130:
.LBE1631:
	.loc 1 6813 53
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	.loc 1 6813 32
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -24(%rbp)
	.loc 1 6814 25
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 1 6815 19
	cmpq	$0, -35008(%rbp)
	je	.L2133
	.loc 1 6816 36
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	stbi__malloc
	.loc 1 6816 27
	movq	-35008(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 1 6817 31
	movl	-4(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, -40(%rbp)
.L2133:
	.loc 1 6820 13
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 6820 36
	movl	-4(%rbp), %eax
	subl	$1, %eax
	.loc 1 6820 41
	imull	-44(%rbp), %eax
	movslq	%eax, %rcx
	.loc 1 6820 25
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	.loc 1 6820 13
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 1 6821 16
	cmpl	$1, -4(%rbp)
	jle	.L2134
	.loc 1 6822 35
	movl	-44(%rbp), %eax
	addl	%eax, %eax
	cltq
	.loc 1 6822 31
	negq	%rax
	movq	%rax, %rdx
	.loc 1 6822 25
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L2134:
	.loc 1 6825 16
	cmpq	$0, -35008(%rbp)
	je	.L2129
	.loc 1 6826 17
	movq	-35008(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 6826 33
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	.loc 1 6826 25
	salq	$2, %rax
	addq	%rax, %rdx
	.loc 1 6826 42
	movl	-72(%rbp), %eax
	.loc 1 6826 39
	movl	%eax, (%rdx)
.L2129:
	.loc 1 6829 7
	cmpq	$0, -16(%rbp)
	jne	.L2135
	.loc 1 6832 7
	movq	-34984(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6833 7
	movq	-34968(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6834 7
	movq	-34976(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6837 10
	cmpl	$0, 16(%rbp)
	je	.L2136
	.loc 1 6837 20 discriminator 1
	cmpl	$4, 16(%rbp)
	je	.L2136
	.loc 1 6838 70
	movl	-34988(%rbp), %eax
	.loc 1 6838 16
	movl	%eax, %ecx
	.loc 1 6838 65
	movl	-34992(%rbp), %eax
	.loc 1 6838 62
	imull	-4(%rbp), %eax
	.loc 1 6838 16
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	16(%rbp), %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -24(%rbp)
.L2136:
	.loc 1 6840 10
	movq	-35032(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 6841 14
	movq	-24(%rbp), %rax
	jmp	.L2137
.L2126:
.LBE1630:
	.loc 1 6843 14
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L2137:
	.loc 1 6845 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	stbi__load_gif_main, .-stbi__load_gif_main
	.type	stbi__gif_load, @function
stbi__gif_load:
.LFB684:
	.loc 1 6848 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$34992, %rsp
	movq	%rdi, -34952(%rbp)
	movq	%rsi, -34960(%rbp)
	movq	%rdx, -34968(%rbp)
	movq	%rcx, -34976(%rbp)
	movl	%r8d, -34980(%rbp)
	movq	%r9, -34992(%rbp)
	.loc 1 6849 13
	movq	$0, -8(%rbp)
	.loc 1 6851 4
	leaq	-34944(%rbp), %rax
	movl	$34928, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 6854 8
	movl	-34980(%rbp), %ecx
	movq	-34976(%rbp), %rdx
	leaq	-34944(%rbp), %rsi
	movq	-34952(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	stbi__gif_load_next
	movq	%rax, -8(%rbp)
	.loc 1 6855 7
	movq	-8(%rbp), %rax
	cmpq	-34952(%rbp), %rax
	jne	.L2139
	.loc 1 6855 30 discriminator 1
	movq	$0, -8(%rbp)
.L2139:
	.loc 1 6856 7
	cmpq	$0, -8(%rbp)
	je	.L2140
	.loc 1 6857 13
	movl	-34944(%rbp), %edx
	.loc 1 6857 10
	movq	-34960(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 6858 13
	movl	-34940(%rbp), %edx
	.loc 1 6858 10
	movq	-34968(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 6862 10
	cmpl	$0, -34980(%rbp)
	je	.L2141
	.loc 1 6862 20 discriminator 1
	cmpl	$4, -34980(%rbp)
	je	.L2141
	.loc 1 6863 57
	movl	-34940(%rbp), %eax
	.loc 1 6863 14
	movl	%eax, %esi
	.loc 1 6863 52
	movl	-34944(%rbp), %eax
	.loc 1 6863 14
	movl	%eax, %ecx
	movl	-34980(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	jmp	.L2141
.L2140:
	.loc 1 6864 16
	movq	-34936(%rbp), %rax
	.loc 1 6864 14
	testq	%rax, %rax
	je	.L2141
	.loc 1 6866 7
	movq	-34936(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2141:
	.loc 1 6870 4
	movq	-34920(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6871 4
	movq	-34928(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 6873 11
	movq	-8(%rbp), %rax
	.loc 1 6874 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	stbi__gif_load, .-stbi__gif_load
	.type	stbi__gif_info, @function
stbi__gif_info:
.LFB685:
	.loc 1 6877 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 6878 11
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_info_raw
	.loc 1 6879 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	stbi__gif_info, .-stbi__gif_info
	.type	stbi__hdr_test_core, @function
stbi__hdr_test_core:
.LFB686:
	.loc 1 6887 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 6889 10
	movl	$0, -4(%rbp)
	.loc 1 6889 4
	jmp	.L2146
.L2149:
	.loc 1 6890 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	.loc 1 6890 37
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 6890 10
	cmpl	%eax, %edx
	je	.L2147
	.loc 1 6891 18
	movl	$0, %eax
	jmp	.L2148
.L2147:
	.loc 1 6889 28 discriminator 2
	addl	$1, -4(%rbp)
.L2146:
	.loc 1 6889 23 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 6889 4 discriminator 1
	testb	%al, %al
	jne	.L2149
	.loc 1 6892 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 6893 11
	movl	$1, %eax
.L2148:
	.loc 1 6894 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	stbi__hdr_test_core, .-stbi__hdr_test_core
	.section	.rodata
.LC112:
	.string	"#?RADIANCE\n"
.LC113:
	.string	"#?RGBE\n"
	.text
	.type	stbi__hdr_test, @function
stbi__hdr_test:
.LFB687:
	.loc 1 6897 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 6898 12
	movq	-24(%rbp), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__hdr_test_core
	movl	%eax, -4(%rbp)
	.loc 1 6899 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 6900 6
	cmpl	$0, -4(%rbp)
	jne	.L2151
	.loc 1 6901 12
	movq	-24(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__hdr_test_core
	movl	%eax, -4(%rbp)
	.loc 1 6902 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
.L2151:
	.loc 1 6904 11
	movl	-4(%rbp), %eax
	.loc 1 6905 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	stbi__hdr_test, .-stbi__hdr_test
	.type	stbi__hdr_gettoken, @function
stbi__hdr_gettoken:
.LFB688:
	.loc 1 6909 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 6910 8
	movl	$0, -4(%rbp)
	.loc 1 6911 9
	movb	$0, -5(%rbp)
	.loc 1 6913 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6913 6
	movb	%al, -5(%rbp)
	.loc 1 6915 10
	jmp	.L2154
.L2159:
	.loc 1 6916 17
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	.loc 1 6916 13
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 6916 21
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 6917 10
	cmpl	$1023, -4(%rbp)
	jne	.L2155
	.loc 1 6919 16
	nop
.L2157:
	.loc 1 6919 18 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6919 16 discriminator 2
	testl	%eax, %eax
	jne	.L2161
	.loc 1 6919 37 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6919 34 discriminator 1
	cmpb	$10, %al
	jne	.L2157
	.loc 1 6921 10
	jmp	.L2161
.L2155:
	.loc 1 6923 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 6923 9
	movb	%al, -5(%rbp)
.L2154:
	.loc 1 6915 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 6915 10
	testl	%eax, %eax
	jne	.L2158
	.loc 1 6915 28 discriminator 1
	cmpb	$10, -5(%rbp)
	jne	.L2159
	jmp	.L2158
.L2161:
	.loc 1 6921 10
	nop
.L2158:
	.loc 1 6926 10
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 6926 16
	movb	$0, (%rax)
	.loc 1 6927 11
	movq	-32(%rbp), %rax
	.loc 1 6928 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	stbi__hdr_gettoken, .-stbi__hdr_gettoken
	.type	stbi__hdr_convert, @function
stbi__hdr_convert:
.LFB689:
	.loc 1 6931 1
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
	.loc 1 6932 14
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 6932 7
	testb	%al, %al
	je	.L2163
.LBB1632:
	.loc 1 6935 37
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6935 20
	leal	-136(%rax), %edx
	movq	.LC114(%rip), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	ldexp@PLT
	.loc 1 6935 10
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 6936 10
	cmpl	$2, -36(%rbp)
	jg	.L2164
	.loc 1 6937 28
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 6937 39
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6937 32
	addl	%eax, %edx
	.loc 1 6937 50
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6937 43
	addl	%edx, %eax
	.loc 1 6937 55
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	.loc 1 6937 60
	movss	.LC115(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 1 6937 20
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L2165
.L2164:
	.loc 1 6939 27
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6939 31
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	.loc 1 6939 20
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	.loc 1 6940 27
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6940 31
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 1 6940 16
	movq	-24(%rbp), %rax
	addq	$4, %rax
	.loc 1 6940 31
	mulss	-4(%rbp), %xmm0
	.loc 1 6940 20
	movss	%xmm0, (%rax)
	.loc 1 6941 27
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 6941 31
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	.loc 1 6941 16
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 1 6941 31
	mulss	-4(%rbp), %xmm0
	.loc 1 6941 20
	movss	%xmm0, (%rax)
.L2165:
	.loc 1 6943 10
	cmpl	$2, -36(%rbp)
	jne	.L2166
	.loc 1 6943 32 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	.loc 1 6943 36 discriminator 1
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2166:
	.loc 1 6944 10
	cmpl	$4, -36(%rbp)
	jne	.L2172
	.loc 1 6944 32 discriminator 1
	movq	-24(%rbp), %rax
	addq	$12, %rax
	.loc 1 6944 36 discriminator 1
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.LBE1632:
	.loc 1 6955 1 discriminator 1
	jmp	.L2172
.L2163:
	.loc 1 6946 7
	cmpl	$4, -36(%rbp)
	je	.L2168
	cmpl	$4, -36(%rbp)
	jg	.L2172
	cmpl	$3, -36(%rbp)
	je	.L2169
	cmpl	$3, -36(%rbp)
	jg	.L2172
	cmpl	$1, -36(%rbp)
	je	.L2170
	cmpl	$2, -36(%rbp)
	je	.L2171
	.loc 1 6955 1
	jmp	.L2172
.L2168:
	.loc 1 6947 24
	movq	-24(%rbp), %rax
	addq	$12, %rax
	.loc 1 6947 28
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2169:
	.loc 1 6948 48
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 1 6948 52
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx)
	.loc 1 6948 36
	movq	-24(%rbp), %rax
	addq	$4, %rax
	.loc 1 6948 48
	movss	(%rdx), %xmm0
	.loc 1 6948 40
	movss	%xmm0, (%rax)
	.loc 1 6948 36
	movss	(%rax), %xmm0
	.loc 1 6948 28
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	.loc 1 6949 18
	jmp	.L2167
.L2171:
	.loc 1 6950 24
	movq	-24(%rbp), %rax
	addq	$4, %rax
	.loc 1 6950 28
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2170:
	.loc 1 6951 28
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 6952 18
	nop
.L2167:
.L2172:
	.loc 1 6955 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	stbi__hdr_convert, .-stbi__hdr_convert
	.section	.rodata
.LC116:
	.string	"#?RADIANCE"
.LC117:
	.string	"#?RGBE"
.LC118:
	.string	"not HDR"
.LC119:
	.string	"FORMAT=32-bit_rle_rgbe"
.LC120:
	.string	"unsupported format"
.LC121:
	.string	"-Y "
.LC122:
	.string	"unsupported data layout"
.LC123:
	.string	"+X "
	.align 8
.LC124:
	.string	"invalid decoded scanline length"
	.text
	.type	stbi__hdr_load, @function
stbi__hdr_load:
.LFB690:
	.loc 1 6958 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1176, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movl	%r8d, -1172(%rbp)
	movq	%r9, -1184(%rbp)
	.loc 1 6961 8
	movl	$0, -20(%rbp)
	.loc 1 6972 18
	leaq	-1120(%rbp), %rdx
	movq	-1144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -56(%rbp)
	.loc 1 6973 8
	movq	-56(%rbp), %rax
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 6973 7
	testl	%eax, %eax
	je	.L2179
	.loc 1 6973 50 discriminator 1
	movq	-56(%rbp), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 6973 47 discriminator 1
	testl	%eax, %eax
	je	.L2179
	.loc 1 6974 14
	leaq	.LC118(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2179:
	.loc 1 6978 15
	leaq	-1120(%rbp), %rdx
	movq	-1144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	.loc 1 6978 13
	movq	%rax, -1128(%rbp)
	.loc 1 6979 16
	movq	-1128(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 6979 10
	testb	%al, %al
	je	.L2219
	.loc 1 6980 11
	movq	-1128(%rbp), %rax
	leaq	.LC119(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 6980 10
	testl	%eax, %eax
	jne	.L2179
	.loc 1 6980 63 discriminator 1
	movl	$1, -20(%rbp)
	.loc 1 6978 13 discriminator 1
	jmp	.L2179
.L2219:
	.loc 1 6979 7
	nop
	.loc 1 6983 7
	cmpl	$0, -20(%rbp)
	jne	.L2180
	.loc 1 6983 26 discriminator 1
	leaq	.LC120(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2180:
	.loc 1 6987 12
	leaq	-1120(%rbp), %rdx
	movq	-1144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	.loc 1 6987 10
	movq	%rax, -1128(%rbp)
	.loc 1 6988 8
	movq	-1128(%rbp), %rax
	movl	$3, %edx
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 6988 7
	testl	%eax, %eax
	je	.L2181
	.loc 1 6988 42 discriminator 1
	leaq	.LC122(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2181:
	.loc 1 6989 10
	movq	-1128(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1128(%rbp)
	.loc 1 6990 19
	movq	-1128(%rbp), %rax
	leaq	-1128(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	.loc 1 6990 11
	movl	%eax, -60(%rbp)
	.loc 1 6991 10
	jmp	.L2182
.L2183:
	.loc 1 6991 26 discriminator 2
	movq	-1128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1128(%rbp)
.L2182:
	.loc 1 6991 11 discriminator 1
	movq	-1128(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 6991 10 discriminator 1
	cmpb	$32, %al
	je	.L2183
	.loc 1 6992 8
	movq	-1128(%rbp), %rax
	movl	$3, %edx
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 6992 7
	testl	%eax, %eax
	je	.L2184
	.loc 1 6992 42 discriminator 1
	leaq	.LC122(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2184:
	.loc 1 6993 10
	movq	-1128(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1128(%rbp)
	.loc 1 6994 18
	movq	-1128(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	.loc 1 6994 10
	movl	%eax, -64(%rbp)
	.loc 1 6996 7
	cmpl	$16777216, -60(%rbp)
	jle	.L2185
	.loc 1 6996 45 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2185:
	.loc 1 6997 7
	cmpl	$16777216, -64(%rbp)
	jle	.L2186
	.loc 1 6997 44 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2186:
	.loc 1 6999 7
	movq	-1152(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 7000 7
	movq	-1160(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 7002 7
	cmpq	$0, -1168(%rbp)
	je	.L2187
	.loc 1 7002 20 discriminator 1
	movq	-1168(%rbp), %rax
	movl	$3, (%rax)
.L2187:
	.loc 1 7003 7
	cmpl	$0, -1172(%rbp)
	jne	.L2188
	.loc 1 7003 32 discriminator 1
	movl	$3, -1172(%rbp)
.L2188:
	.loc 1 7005 9
	movl	-1172(%rbp), %edx
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__mad4sizes_valid
	.loc 1 7005 7
	testl	%eax, %eax
	jne	.L2189
	.loc 1 7006 14
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2189:
	.loc 1 7009 25
	movl	-1172(%rbp), %edx
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad4
	movq	%rax, -72(%rbp)
	.loc 1 7010 7
	cmpq	$0, -72(%rbp)
	jne	.L2190
	.loc 1 7011 14
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2190:
	.loc 1 7015 7
	cmpl	$7, -64(%rbp)
	jle	.L2191
	.loc 1 7015 19 discriminator 1
	cmpl	$32767, -64(%rbp)
	jle	.L2192
.L2191:
	.loc 1 7017 13
	movl	$0, -40(%rbp)
	.loc 1 7017 7
	jmp	.L2193
.L2196:
	.loc 1 7018 16
	movl	$0, -36(%rbp)
	.loc 1 7018 10
	jmp	.L2194
.L2220:
.LBB1633:
	.loc 1 7020 12
	nop
.L2195:
	.loc 1 7021 13 discriminator 3
	leaq	-1132(%rbp), %rcx
	movq	-1144(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	.loc 1 7022 44 discriminator 3
	movl	-40(%rbp), %eax
	imull	-64(%rbp), %eax
	.loc 1 7022 52 discriminator 3
	imull	-1172(%rbp), %eax
	.loc 1 7022 63 discriminator 3
	movslq	%eax, %rdx
	.loc 1 7022 67 discriminator 3
	movl	-36(%rbp), %eax
	imull	-1172(%rbp), %eax
	.loc 1 7022 63 discriminator 3
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	.loc 1 7022 13 discriminator 3
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-1172(%rbp), %edx
	leaq	-1132(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	stbi__hdr_convert
.LBE1633:
	.loc 1 7018 31 discriminator 3
	addl	$1, -36(%rbp)
.L2194:
	.loc 1 7018 10 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L2220
	.loc 1 7017 29 discriminator 2
	addl	$1, -40(%rbp)
.L2193:
	.loc 1 7017 7 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L2196
	.loc 1 7015 7
	jmp	.L2197
.L2192:
	.loc 1 7027 16
	movq	$0, -32(%rbp)
	.loc 1 7029 14
	movl	$0, -40(%rbp)
	.loc 1 7029 7
	jmp	.L2198
.L2216:
	.loc 1 7030 15
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7030 13
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	.loc 1 7031 15
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7031 13
	movzbl	%al, %eax
	movl	%eax, -80(%rbp)
	.loc 1 7032 16
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7032 14
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	.loc 1 7033 13
	cmpl	$2, -76(%rbp)
	jne	.L2199
	.loc 1 7033 22 discriminator 1
	cmpl	$2, -80(%rbp)
	jne	.L2199
	.loc 1 7033 41 discriminator 2
	movl	-84(%rbp), %eax
	andl	$128, %eax
	.loc 1 7033 33 discriminator 2
	testl	%eax, %eax
	je	.L2200
.L2199:
.LBB1634:
	.loc 1 7037 23
	movl	-76(%rbp), %eax
	.loc 1 7037 21
	movb	%al, -1136(%rbp)
	.loc 1 7038 23
	movl	-80(%rbp), %eax
	.loc 1 7038 21
	movb	%al, -1135(%rbp)
	.loc 1 7039 23
	movl	-84(%rbp), %eax
	.loc 1 7039 21
	movb	%al, -1134(%rbp)
	.loc 1 7040 33
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7040 21
	movb	%al, -1133(%rbp)
	.loc 1 7041 13
	movl	-1172(%rbp), %edx
	leaq	-1136(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_convert
	.loc 1 7042 15
	movl	$1, -36(%rbp)
	.loc 1 7043 15
	movl	$0, -40(%rbp)
	.loc 1 7044 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2195
.L2200:
.LBE1634:
	.loc 1 7047 14
	sall	$8, -84(%rbp)
	.loc 1 7048 17
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	.loc 1 7048 14
	orl	%eax, -84(%rbp)
	.loc 1 7049 13
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.L2201
	.loc 1 7049 30 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7049 51 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7049 79 discriminator 1
	leaq	.LC124(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2201:
	.loc 1 7050 13
	cmpq	$0, -32(%rbp)
	jne	.L2202
	.loc 1 7051 36
	movl	-64(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -32(%rbp)
	.loc 1 7052 16
	cmpq	$0, -32(%rbp)
	jne	.L2202
	.loc 1 7053 16
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7054 23
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2202:
	.loc 1 7058 17
	movl	$0, -44(%rbp)
	.loc 1 7058 10
	jmp	.L2203
.L2213:
.LBB1635:
	.loc 1 7060 15
	movl	$0, -36(%rbp)
	.loc 1 7061 19
	jmp	.L2204
.L2212:
	.loc 1 7062 24
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -89(%rbp)
	.loc 1 7063 19
	cmpb	$-128, -89(%rbp)
	jbe	.L2205
	.loc 1 7065 27
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -90(%rbp)
	.loc 1 7066 25
	addb	$-128, -89(%rbp)
	.loc 1 7067 29
	movzbl	-89(%rbp), %eax
	.loc 1 7067 22
	cmpl	%eax, -88(%rbp)
	jge	.L2206
	.loc 1 7067 40 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7067 61 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7067 89 discriminator 1
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2206:
	.loc 1 7068 26
	movl	$0, -48(%rbp)
	.loc 1 7068 19
	jmp	.L2207
.L2208:
	.loc 1 7069 32 discriminator 3
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	.loc 1 7069 35 discriminator 3
	leal	0(,%rax,4), %edx
	.loc 1 7069 39 discriminator 3
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 7069 30 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 7069 44 discriminator 3
	movzbl	-90(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 7068 42 discriminator 3
	addl	$1, -48(%rbp)
.L2207:
	.loc 1 7068 33 discriminator 1
	movzbl	-89(%rbp), %eax
	.loc 1 7068 19 discriminator 1
	cmpl	%eax, -48(%rbp)
	jl	.L2208
	jmp	.L2204
.L2205:
	.loc 1 7072 29
	movzbl	-89(%rbp), %eax
	.loc 1 7072 22
	cmpl	%eax, -88(%rbp)
	jge	.L2209
	.loc 1 7072 40 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7072 61 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 7072 89 discriminator 1
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2217
.L2209:
	.loc 1 7073 26
	movl	$0, -48(%rbp)
	.loc 1 7073 19
	jmp	.L2210
.L2211:
	.loc 1 7074 32 discriminator 3
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	.loc 1 7074 35 discriminator 3
	leal	0(,%rax,4), %edx
	.loc 1 7074 39 discriminator 3
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.loc 1 7074 30 discriminator 3
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 7074 46 discriminator 3
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7074 44 discriminator 3
	movb	%al, (%rbx)
	.loc 1 7073 42 discriminator 3
	addl	$1, -48(%rbp)
.L2210:
	.loc 1 7073 33 discriminator 1
	movzbl	-89(%rbp), %eax
	.loc 1 7073 19 discriminator 1
	cmpl	%eax, -48(%rbp)
	jl	.L2211
.L2204:
	.loc 1 7061 27
	movl	-64(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -88(%rbp)
	.loc 1 7061 19
	cmpl	$0, -88(%rbp)
	jg	.L2212
.LBE1635:
	.loc 1 7058 29 discriminator 2
	addl	$1, -44(%rbp)
.L2203:
	.loc 1 7058 10 discriminator 1
	cmpl	$3, -44(%rbp)
	jle	.L2213
	.loc 1 7078 16
	movl	$0, -36(%rbp)
	.loc 1 7078 10
	jmp	.L2214
.L2215:
	.loc 1 7079 76 discriminator 3
	movl	-36(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	.loc 1 7079 13 discriminator 3
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 1 7079 42 discriminator 3
	movl	-40(%rbp), %eax
	imull	-64(%rbp), %eax
	movl	%eax, %edx
	.loc 1 7079 49 discriminator 3
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	.loc 1 7079 53 discriminator 3
	imull	-1172(%rbp), %eax
	cltq
	.loc 1 7079 39 discriminator 3
	leaq	0(,%rax,4), %rdx
	.loc 1 7079 13 discriminator 3
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-1172(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	stbi__hdr_convert
	.loc 1 7078 31 discriminator 3
	addl	$1, -36(%rbp)
.L2214:
	.loc 1 7078 10 discriminator 1
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L2215
	.loc 1 7029 31 discriminator 2
	addl	$1, -40(%rbp)
.L2198:
	.loc 1 7029 7 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L2216
	.loc 1 7081 10
	cmpq	$0, -32(%rbp)
	je	.L2197
	.loc 1 7082 10
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2197:
	.loc 1 7085 11
	movq	-72(%rbp), %rax
.L2217:
	.loc 1 7086 1 discriminator 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	stbi__hdr_load, .-stbi__hdr_load
	.type	stbi__hdr_info, @function
stbi__hdr_info:
.LFB691:
	.loc 1 7089 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	%rcx, -1088(%rbp)
	.loc 1 7092 8
	movl	$0, -4(%rbp)
	.loc 1 7095 7
	cmpq	$0, -1072(%rbp)
	jne	.L2222
	.loc 1 7095 14 discriminator 1
	leaq	-1052(%rbp), %rax
	movq	%rax, -1072(%rbp)
.L2222:
	.loc 1 7096 7
	cmpq	$0, -1080(%rbp)
	jne	.L2223
	.loc 1 7096 14 discriminator 1
	leaq	-1052(%rbp), %rax
	movq	%rax, -1080(%rbp)
.L2223:
	.loc 1 7097 7
	cmpq	$0, -1088(%rbp)
	jne	.L2224
	.loc 1 7097 20 discriminator 1
	leaq	-1052(%rbp), %rax
	movq	%rax, -1088(%rbp)
.L2224:
	.loc 1 7099 8
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	.loc 1 7099 7
	testl	%eax, %eax
	jne	.L2225
	.loc 1 7100 8
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7101 15
	movl	$0, %eax
	jmp	.L2235
.L2225:
	.loc 1 7105 15
	leaq	-1040(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	.loc 1 7105 13
	movq	%rax, -1048(%rbp)
	.loc 1 7106 16
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7106 10
	testb	%al, %al
	je	.L2237
	.loc 1 7107 11
	movq	-1048(%rbp), %rax
	leaq	.LC119(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 7107 10
	testl	%eax, %eax
	jne	.L2225
	.loc 1 7107 63 discriminator 1
	movl	$1, -4(%rbp)
	.loc 1 7105 13 discriminator 1
	jmp	.L2225
.L2237:
	.loc 1 7106 7
	nop
	.loc 1 7110 7
	cmpl	$0, -4(%rbp)
	jne	.L2230
	.loc 1 7111 8
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7112 15
	movl	$0, %eax
	jmp	.L2235
.L2230:
	.loc 1 7114 12
	leaq	-1040(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	.loc 1 7114 10
	movq	%rax, -1048(%rbp)
	.loc 1 7115 8
	movq	-1048(%rbp), %rax
	movl	$3, %edx
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 7115 7
	testl	%eax, %eax
	je	.L2231
	.loc 1 7116 8
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7117 15
	movl	$0, %eax
	jmp	.L2235
.L2231:
	.loc 1 7119 10
	movq	-1048(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1048(%rbp)
	.loc 1 7120 15
	movq	-1048(%rbp), %rax
	leaq	-1048(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	.loc 1 7120 9
	movl	%eax, %edx
	.loc 1 7120 7
	movq	-1080(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7121 10
	jmp	.L2232
.L2233:
	.loc 1 7121 26 discriminator 2
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)
.L2232:
	.loc 1 7121 11 discriminator 1
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7121 10 discriminator 1
	cmpb	$32, %al
	je	.L2233
	.loc 1 7122 8
	movq	-1048(%rbp), %rax
	movl	$3, %edx
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 7122 7
	testl	%eax, %eax
	je	.L2234
	.loc 1 7123 8
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7124 15
	movl	$0, %eax
	jmp	.L2235
.L2234:
	.loc 1 7126 10
	movq	-1048(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1048(%rbp)
	.loc 1 7127 15
	movq	-1048(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	.loc 1 7127 9
	movl	%eax, %edx
	.loc 1 7127 7
	movq	-1072(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7128 10
	movq	-1088(%rbp), %rax
	movl	$3, (%rax)
	.loc 1 7129 11
	movl	$1, %eax
.L2235:
	.loc 1 7130 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	stbi__hdr_info, .-stbi__hdr_info
	.type	stbi__bmp_info, @function
stbi__bmp_info:
.LFB692:
	.loc 1 7135 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 1 7139 15
	movl	$255, -20(%rbp)
	.loc 1 7140 8
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__bmp_parse_header
	movq	%rax, -8(%rbp)
	.loc 1 7141 4
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7142 7
	cmpq	$0, -8(%rbp)
	jne	.L2239
	.loc 1 7143 14
	movl	$0, %eax
	jmp	.L2247
.L2239:
	.loc 1 7144 7
	cmpq	$0, -64(%rbp)
	je	.L2241
	.loc 1 7144 17 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 7144 14 discriminator 1
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L2241:
	.loc 1 7145 7
	cmpq	$0, -72(%rbp)
	je	.L2242
	.loc 1 7145 17 discriminator 1
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 7145 14 discriminator 1
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
.L2242:
	.loc 1 7146 7
	cmpq	$0, -80(%rbp)
	je	.L2243
	.loc 1 7147 15
	movl	-48(%rbp), %eax
	.loc 1 7147 10
	cmpl	$24, %eax
	jne	.L2244
	.loc 1 7147 33 discriminator 1
	movl	-24(%rbp), %eax
	.loc 1 7147 26 discriminator 1
	cmpl	$-16777216, %eax
	jne	.L2244
	.loc 1 7148 16
	movq	-80(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L2243
.L2244:
	.loc 1 7150 22
	movl	-24(%rbp), %eax
	.loc 1 7150 30
	testl	%eax, %eax
	je	.L2245
	.loc 1 7150 30 is_stmt 0 discriminator 1
	movl	$4, %edx
	jmp	.L2246
.L2245:
	.loc 1 7150 30 discriminator 2
	movl	$3, %edx
.L2246:
	.loc 1 7150 16 is_stmt 1 discriminator 4
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L2243:
	.loc 1 7152 11
	movl	$1, %eax
.L2247:
	.loc 1 7153 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	stbi__bmp_info, .-stbi__bmp_info
	.type	stbi__psd_info, @function
stbi__psd_info:
.LFB693:
	.loc 1 7158 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 7160 7
	cmpq	$0, -32(%rbp)
	jne	.L2249
	.loc 1 7160 14 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -32(%rbp)
.L2249:
	.loc 1 7161 7
	cmpq	$0, -40(%rbp)
	jne	.L2250
	.loc 1 7161 14 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -40(%rbp)
.L2250:
	.loc 1 7162 7
	cmpq	$0, -48(%rbp)
	jne	.L2251
	.loc 1 7162 20 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -48(%rbp)
.L2251:
	.loc 1 7163 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 7163 7
	cmpl	$943870035, %eax
	je	.L2252
	.loc 1 7164 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7165 15
	movl	$0, %eax
	jmp	.L2259
.L2252:
	.loc 1 7167 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 7167 7
	cmpl	$1, %eax
	je	.L2254
	.loc 1 7168 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7169 15
	movl	$0, %eax
	jmp	.L2259
.L2254:
	.loc 1 7171 4
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 7172 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -4(%rbp)
	.loc 1 7173 7
	cmpl	$0, -4(%rbp)
	js	.L2255
	.loc 1 7173 25 discriminator 1
	cmpl	$16, -4(%rbp)
	jle	.L2256
.L2255:
	.loc 1 7174 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7175 15
	movl	$0, %eax
	jmp	.L2259
.L2256:
	.loc 1 7177 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	.loc 1 7177 7
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7178 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	.loc 1 7178 7
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7179 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -8(%rbp)
	.loc 1 7180 7
	cmpl	$8, -8(%rbp)
	je	.L2257
	.loc 1 7180 19 discriminator 1
	cmpl	$16, -8(%rbp)
	je	.L2257
	.loc 1 7181 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7182 15
	movl	$0, %eax
	jmp	.L2259
.L2257:
	.loc 1 7184 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 7184 7
	cmpl	$3, %eax
	je	.L2258
	.loc 1 7185 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7186 15
	movl	$0, %eax
	jmp	.L2259
.L2258:
	.loc 1 7188 10
	movq	-48(%rbp), %rax
	movl	$4, (%rax)
	.loc 1 7189 11
	movl	$1, %eax
.L2259:
	.loc 1 7190 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	stbi__psd_info, .-stbi__psd_info
	.type	stbi__psd_is16, @function
stbi__psd_is16:
.LFB694:
	.loc 1 7193 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 7195 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 7195 7
	cmpl	$943870035, %eax
	je	.L2261
	.loc 1 7196 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7197 15
	movl	$0, %eax
	jmp	.L2262
.L2261:
	.loc 1 7199 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 7199 7
	cmpl	$1, %eax
	je	.L2263
	.loc 1 7200 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7201 15
	movl	$0, %eax
	jmp	.L2262
.L2263:
	.loc 1 7203 4
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 7204 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -4(%rbp)
	.loc 1 7205 7
	cmpl	$0, -4(%rbp)
	js	.L2264
	.loc 1 7205 25 discriminator 1
	cmpl	$16, -4(%rbp)
	jle	.L2265
.L2264:
	.loc 1 7206 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7207 15
	movl	$0, %eax
	jmp	.L2262
.L2265:
	.loc 1 7209 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 7210 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	.loc 1 7211 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -8(%rbp)
	.loc 1 7212 7
	cmpl	$16, -8(%rbp)
	je	.L2266
	.loc 1 7213 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7214 15
	movl	$0, %eax
	jmp	.L2262
.L2266:
	.loc 1 7216 11
	movl	$1, %eax
.L2262:
	.loc 1 7217 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	stbi__psd_is16, .-stbi__psd_is16
	.type	stbi__pic_info, @function
stbi__pic_info:
.LFB695:
	.loc 1 7222 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 1 7223 8
	movl	$0, -4(%rbp)
	.loc 1 7223 19
	movl	$0, -8(%rbp)
	.loc 1 7226 7
	cmpq	$0, -80(%rbp)
	jne	.L2268
	.loc 1 7226 14 discriminator 1
	leaq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
.L2268:
	.loc 1 7227 7
	cmpq	$0, -88(%rbp)
	jne	.L2269
	.loc 1 7227 14 discriminator 1
	leaq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
.L2269:
	.loc 1 7228 7
	cmpq	$0, -96(%rbp)
	jne	.L2270
	.loc 1 7228 20 discriminator 1
	leaq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
.L2270:
	.loc 1 7230 9
	movq	-72(%rbp), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	.loc 1 7230 7
	testl	%eax, %eax
	jne	.L2271
	.loc 1 7231 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7232 14
	movl	$0, %eax
	jmp	.L2281
.L2271:
	.loc 1 7235 4
	movq	-72(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	stbi__skip
	.loc 1 7237 9
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 7237 7
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 7238 9
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	.loc 1 7238 7
	movq	-88(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 7239 8
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7239 7
	testl	%eax, %eax
	je	.L2273
	.loc 1 7240 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7241 14
	movl	$0, %eax
	jmp	.L2281
.L2273:
	.loc 1 7243 10
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7243 7
	testl	%eax, %eax
	je	.L2274
	.loc 1 7243 35 discriminator 1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	.loc 1 7243 32 discriminator 1
	movl	$268435456, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	.loc 1 7243 42 discriminator 1
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7243 19 discriminator 1
	cmpl	%eax, %edx
	jge	.L2274
	.loc 1 7244 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7245 14
	movl	$0, %eax
	jmp	.L2281
.L2274:
	.loc 1 7248 4
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2278:
.LBB1636:
	.loc 1 7253 10
	cmpl	$10, -8(%rbp)
	jne	.L2275
	.loc 1 7254 17
	movl	$0, %eax
	jmp	.L2281
.L2275:
	.loc 1 7256 36
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	.loc 1 7256 14
	leaq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 7257 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7257 15
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 1 7258 25
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7258 23
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 1 7259 25
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7259 23
	movq	-16(%rbp), %rdx
	movb	%al, 1(%rdx)
	.loc 1 7260 25
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7260 23
	movq	-16(%rbp), %rdx
	movb	%al, 2(%rdx)
	.loc 1 7261 25
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	.loc 1 7261 16
	orl	%eax, -4(%rbp)
	.loc 1 7263 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7263 10
	testl	%eax, %eax
	je	.L2276
	.loc 1 7264 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7265 18
	movl	$0, %eax
	jmp	.L2281
.L2276:
	.loc 1 7267 17
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7267 10
	cmpb	$8, %al
	je	.L2277
	.loc 1 7268 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7269 18
	movl	$0, %eax
	jmp	.L2281
.L2277:
.LBE1636:
	.loc 1 7271 4
	cmpl	$0, -20(%rbp)
	jne	.L2278
	.loc 1 7273 22
	movl	-4(%rbp), %eax
	andl	$16, %eax
	.loc 1 7273 33
	testl	%eax, %eax
	je	.L2279
	.loc 1 7273 33 is_stmt 0 discriminator 1
	movl	$4, %edx
	jmp	.L2280
.L2279:
	.loc 1 7273 33 discriminator 2
	movl	$3, %edx
.L2280:
	.loc 1 7273 10 is_stmt 1 discriminator 4
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7275 11 discriminator 4
	movl	$1, %eax
.L2281:
	.loc 1 7276 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	stbi__pic_info, .-stbi__pic_info
	.type	stbi__pnm_test, @function
stbi__pnm_test:
.LFB696:
	.loc 1 7294 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 7296 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7296 6
	movb	%al, -1(%rbp)
	.loc 1 7297 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7297 6
	movb	%al, -2(%rbp)
	.loc 1 7298 7
	cmpb	$80, -1(%rbp)
	jne	.L2283
	.loc 1 7298 17 discriminator 1
	cmpb	$53, -2(%rbp)
	je	.L2284
	.loc 1 7298 30 discriminator 2
	cmpb	$54, -2(%rbp)
	je	.L2284
.L2283:
	.loc 1 7299 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7300 15
	movl	$0, %eax
	jmp	.L2285
.L2284:
	.loc 1 7302 11
	movl	$1, %eax
.L2285:
	.loc 1 7303 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	stbi__pnm_test, .-stbi__pnm_test
	.type	stbi__pnm_load, @function
stbi__pnm_load:
.LFB697:
	.loc 1 7306 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 7310 9
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 1 7310 52
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	.loc 1 7310 34
	movq	-24(%rbp), %rsi
	.loc 1 7310 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_info
	.loc 1 7310 7
	testl	%eax, %eax
	jne	.L2287
	.loc 1 7311 14
	movl	$0, %eax
	jmp	.L2288
.L2287:
	.loc 1 7313 9
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 7313 7
	cmpl	$16777216, %eax
	jbe	.L2289
	.loc 1 7313 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2288
.L2289:
	.loc 1 7314 9
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7314 7
	cmpl	$16777216, %eax
	jbe	.L2290
	.loc 1 7314 47 discriminator 1
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2288
.L2290:
	.loc 1 7316 10
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 7316 7
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7317 10
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 1 7317 7
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7318 7
	cmpq	$0, -48(%rbp)
	je	.L2291
	.loc 1 7318 23 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 7318 20 discriminator 1
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L2291:
	.loc 1 7320 52
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 7320 9
	movl	%eax, %edx
	.loc 1 7320 42
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7320 9
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	.loc 1 7320 7
	testl	%eax, %eax
	jne	.L2292
	.loc 1 7321 14
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2288
.L2292:
	.loc 1 7323 61
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 7323 22
	movl	%eax, %edx
	.loc 1 7323 51
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7323 22
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -8(%rbp)
	.loc 1 7324 7
	cmpq	$0, -8(%rbp)
	jne	.L2293
	.loc 1 7324 21 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2288
.L2293:
	.loc 1 7325 24
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	.loc 1 7325 35
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 7325 32
	imull	%eax, %edx
	.loc 1 7325 46
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 7325 43
	imull	%edx, %eax
	.loc 1 7325 4
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	.loc 1 7327 7
	cmpl	$0, -52(%rbp)
	je	.L2294
	.loc 1 7327 33 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 7327 17 discriminator 1
	cmpl	%eax, -52(%rbp)
	je	.L2294
	.loc 1 7328 13
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	.loc 1 7329 10
	cmpq	$0, -8(%rbp)
	jne	.L2294
	.loc 1 7329 31 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L2288
.L2294:
	.loc 1 7331 11
	movq	-8(%rbp), %rax
.L2288:
	.loc 1 7332 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	stbi__pnm_load, .-stbi__pnm_load
	.type	stbi__pnm_isspace, @function
stbi__pnm_isspace:
.LFB698:
	.loc 1 7335 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 7336 72
	cmpb	$32, -4(%rbp)
	je	.L2296
	.loc 1 7336 20 discriminator 2
	cmpb	$9, -4(%rbp)
	je	.L2296
	.loc 1 7336 33 discriminator 4
	cmpb	$10, -4(%rbp)
	je	.L2296
	.loc 1 7336 46 discriminator 6
	cmpb	$11, -4(%rbp)
	je	.L2296
	.loc 1 7336 59 discriminator 8
	cmpb	$12, -4(%rbp)
	je	.L2296
	.loc 1 7336 72 discriminator 10
	cmpb	$13, -4(%rbp)
	jne	.L2297
.L2296:
	.loc 1 7336 72 is_stmt 0 discriminator 11
	movl	$1, %eax
	jmp	.L2299
.L2297:
	.loc 1 7336 72 discriminator 12
	movl	$0, %eax
.L2299:
	.loc 1 7337 1 is_stmt 1 discriminator 15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	stbi__pnm_isspace, .-stbi__pnm_isspace
	.type	stbi__pnm_skip_whitespace, @function
stbi__pnm_skip_whitespace:
.LFB699:
	.loc 1 7340 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 7342 13
	jmp	.L2301
.L2303:
	.loc 1 7343 22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7343 15
	movl	%eax, %edx
	.loc 1 7343 13
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L2301:
	.loc 1 7342 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7342 13
	testl	%eax, %eax
	jne	.L2302
	.loc 1 7342 52 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7342 34 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	stbi__pnm_isspace
	.loc 1 7342 31 discriminator 1
	testl	%eax, %eax
	jne	.L2303
.L2302:
	.loc 1 7345 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7345 10
	testl	%eax, %eax
	jne	.L2309
	.loc 1 7345 30 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7345 27 discriminator 1
	cmpb	$35, %al
	jne	.L2309
	.loc 1 7348 13
	jmp	.L2305
.L2307:
	.loc 1 7349 22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7349 15
	movl	%eax, %edx
	.loc 1 7349 13
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L2305:
	.loc 1 7348 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7348 13
	testl	%eax, %eax
	jne	.L2301
	.loc 1 7348 34 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7348 31 discriminator 1
	cmpb	$10, %al
	je	.L2301
	.loc 1 7348 48 discriminator 2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7348 45 discriminator 2
	cmpb	$13, %al
	jne	.L2307
	.loc 1 7342 13
	jmp	.L2301
.L2309:
	.loc 1 7351 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	stbi__pnm_skip_whitespace, .-stbi__pnm_skip_whitespace
	.type	stbi__pnm_isdigit, @function
stbi__pnm_isdigit:
.LFB700:
	.loc 1 7354 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 7355 20
	cmpb	$47, -4(%rbp)
	jle	.L2311
	.loc 1 7355 20 is_stmt 0 discriminator 1
	cmpb	$57, -4(%rbp)
	jg	.L2311
	.loc 1 7355 20 discriminator 3
	movl	$1, %eax
	jmp	.L2313
.L2311:
	.loc 1 7355 20 discriminator 4
	movl	$0, %eax
.L2313:
	.loc 1 7356 1 is_stmt 1 discriminator 7
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	stbi__pnm_isdigit, .-stbi__pnm_isdigit
	.type	stbi__pnm_getinteger, @function
stbi__pnm_getinteger:
.LFB701:
	.loc 1 7359 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 7360 8
	movl	$0, -4(%rbp)
	.loc 1 7362 10
	jmp	.L2315
.L2317:
	.loc 1 7363 20
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	.loc 1 7363 27
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 7363 30
	subl	$48, %eax
	.loc 1 7363 13
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 7364 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7364 12
	movl	%eax, %edx
	.loc 1 7364 10
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
.L2315:
	.loc 1 7362 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	.loc 1 7362 10
	testl	%eax, %eax
	jne	.L2316
	.loc 1 7362 49 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 7362 31 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	stbi__pnm_isdigit
	.loc 1 7362 28 discriminator 1
	testl	%eax, %eax
	jne	.L2317
.L2316:
	.loc 1 7367 11
	movl	-4(%rbp), %eax
	.loc 1 7368 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	stbi__pnm_getinteger, .-stbi__pnm_getinteger
	.section	.rodata
.LC125:
	.string	"max value > 255"
	.text
	.type	stbi__pnm_info, @function
stbi__pnm_info:
.LFB702:
	.loc 1 7371 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 7375 7
	cmpq	$0, -32(%rbp)
	jne	.L2320
	.loc 1 7375 14 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -32(%rbp)
.L2320:
	.loc 1 7376 7
	cmpq	$0, -40(%rbp)
	jne	.L2321
	.loc 1 7376 14 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -40(%rbp)
.L2321:
	.loc 1 7377 7
	cmpq	$0, -48(%rbp)
	jne	.L2322
	.loc 1 7377 20 discriminator 1
	leaq	-12(%rbp), %rax
	movq	%rax, -48(%rbp)
.L2322:
	.loc 1 7379 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7382 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7382 6
	movb	%al, -1(%rbp)
	.loc 1 7383 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7383 6
	movb	%al, -2(%rbp)
	.loc 1 7384 7
	cmpb	$80, -1(%rbp)
	jne	.L2323
	.loc 1 7384 17 discriminator 1
	cmpb	$53, -2(%rbp)
	je	.L2324
	.loc 1 7384 30 discriminator 2
	cmpb	$54, -2(%rbp)
	je	.L2324
.L2323:
	.loc 1 7385 8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	.loc 1 7386 15
	movl	$0, %eax
	jmp	.L2329
.L2324:
	.loc 1 7389 27
	cmpb	$54, -2(%rbp)
	jne	.L2326
	.loc 1 7389 27 is_stmt 0 discriminator 1
	movl	$3, %edx
	jmp	.L2327
.L2326:
	.loc 1 7389 27 discriminator 2
	movl	$1, %edx
.L2327:
	.loc 1 7389 10 is_stmt 1 discriminator 4
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 7391 15 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	.loc 1 7391 6 discriminator 4
	movb	%al, -13(%rbp)
	.loc 1 7392 4 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	.loc 1 7394 9 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	.loc 1 7394 7 discriminator 4
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 7395 4 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	.loc 1 7397 9 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	.loc 1 7397 7 discriminator 4
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 7398 4 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	.loc 1 7400 11 discriminator 4
	leaq	-13(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	movl	%eax, -8(%rbp)
	.loc 1 7402 7 discriminator 4
	cmpl	$255, -8(%rbp)
	jle	.L2328
	.loc 1 7403 14
	leaq	.LC125(%rip), %rdi
	call	stbi__err
	jmp	.L2329
.L2328:
	.loc 1 7405 14
	movl	$1, %eax
.L2329:
	.loc 1 7406 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	stbi__pnm_info, .-stbi__pnm_info
	.type	stbi__info_main, @function
stbi__info_main:
.LFB703:
	.loc 1 7410 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 1 7412 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_info
	.loc 1 7412 7
	testl	%eax, %eax
	je	.L2331
	.loc 1 7412 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2331:
	.loc 1 7416 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_info
	.loc 1 7416 7
	testl	%eax, %eax
	je	.L2333
	.loc 1 7416 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2333:
	.loc 1 7420 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_info
	.loc 1 7420 7
	testl	%eax, %eax
	je	.L2334
	.loc 1 7420 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2334:
	.loc 1 7424 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_info
	.loc 1 7424 7
	testl	%eax, %eax
	je	.L2335
	.loc 1 7424 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2335:
	.loc 1 7428 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_info
	.loc 1 7428 7
	testl	%eax, %eax
	je	.L2336
	.loc 1 7428 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2336:
	.loc 1 7432 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_info
	.loc 1 7432 7
	testl	%eax, %eax
	je	.L2337
	.loc 1 7432 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2337:
	.loc 1 7436 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_info
	.loc 1 7436 7
	testl	%eax, %eax
	je	.L2338
	.loc 1 7436 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2338:
	.loc 1 7440 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_info
	.loc 1 7440 7
	testl	%eax, %eax
	je	.L2339
	.loc 1 7440 47 discriminator 1
	movl	$1, %eax
	jmp	.L2332
.L2339:
	.loc 1 7445 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__tga_info
	.loc 1 7445 7
	testl	%eax, %eax
	je	.L2340
	.loc 1 7446 15
	movl	$1, %eax
	jmp	.L2332
.L2340:
	.loc 1 7448 11
	leaq	.LC0(%rip), %rdi
	call	stbi__err
.L2332:
	.loc 1 7449 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	stbi__info_main, .-stbi__info_main
	.type	stbi__is_16_main, @function
stbi__is_16_main:
.LFB704:
	.loc 1 7452 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 7454 8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_is16
	.loc 1 7454 7
	testl	%eax, %eax
	je	.L2342
	.loc 1 7454 35 discriminator 1
	movl	$1, %eax
	jmp	.L2343
.L2342:
	.loc 1 7458 8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_is16
	.loc 1 7458 7
	testl	%eax, %eax
	je	.L2344
	.loc 1 7458 35 discriminator 1
	movl	$1, %eax
	jmp	.L2343
.L2344:
	.loc 1 7461 11
	movl	$0, %eax
.L2343:
	.loc 1 7462 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	stbi__is_16_main, .-stbi__is_16_main
	.globl	stbi_info
	.type	stbi_info, @function
stbi_info:
.LFB705:
	.loc 1 7466 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 7467 15
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	.loc 1 7469 8
	cmpq	$0, -8(%rbp)
	jne	.L2346
	.loc 1 7469 20 discriminator 1
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	jmp	.L2347
.L2346:
	.loc 1 7470 14
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_info_from_file
	movl	%eax, -12(%rbp)
	.loc 1 7471 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 7472 12
	movl	-12(%rbp), %eax
.L2347:
	.loc 1 7473 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	stbi_info, .-stbi_info
	.globl	stbi_info_from_file
	.type	stbi_info_from_file, @function
stbi_info_from_file:
.LFB706:
	.loc 1 7476 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	.loc 1 7479 15
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	.loc 1 7480 4
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 7481 8
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	movl	%eax, -12(%rbp)
	.loc 1 7482 4
	movq	-8(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 7483 11
	movl	-12(%rbp), %eax
	.loc 1 7484 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	stbi_info_from_file, .-stbi_info_from_file
	.globl	stbi_is_16_bit
	.type	stbi_is_16_bit, @function
stbi_is_16_bit:
.LFB707:
	.loc 1 7487 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 7488 15
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	.loc 1 7490 8
	cmpq	$0, -8(%rbp)
	jne	.L2351
	.loc 1 7490 20 discriminator 1
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	jmp	.L2352
.L2351:
	.loc 1 7491 14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_is_16_bit_from_file
	movl	%eax, -12(%rbp)
	.loc 1 7492 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 7493 12
	movl	-12(%rbp), %eax
.L2352:
	.loc 1 7494 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	stbi_is_16_bit, .-stbi_is_16_bit
	.globl	stbi_is_16_bit_from_file
	.type	stbi_is_16_bit_from_file, @function
stbi_is_16_bit_from_file:
.LFB708:
	.loc 1 7497 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	.loc 1 7500 15
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -8(%rbp)
	.loc 1 7501 4
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	.loc 1 7502 8
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	movl	%eax, -12(%rbp)
	.loc 1 7503 4
	movq	-8(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 7504 11
	movl	-12(%rbp), %eax
	.loc 1 7505 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	stbi_is_16_bit_from_file, .-stbi_is_16_bit_from_file
	.globl	stbi_info_from_memory
	.type	stbi_info_from_memory, @function
stbi_info_from_memory:
.LFB709:
	.loc 1 7509 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	.loc 1 7511 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 7512 11
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	.loc 1 7513 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	stbi_info_from_memory, .-stbi_info_from_memory
	.globl	stbi_info_from_callbacks
	.type	stbi_info_from_callbacks, @function
stbi_info_from_callbacks:
.LFB710:
	.loc 1 7516 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	.loc 1 7518 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 7519 11
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	.loc 1 7520 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	stbi_info_from_callbacks, .-stbi_info_from_callbacks
	.globl	stbi_is_16_bit_from_memory
	.type	stbi_is_16_bit_from_memory, @function
stbi_is_16_bit_from_memory:
.LFB711:
	.loc 1 7523 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	.loc 1 7525 4
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	.loc 1 7526 11
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	.loc 1 7527 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	stbi_is_16_bit_from_memory, .-stbi_is_16_bit_from_memory
	.globl	stbi_is_16_bit_from_callbacks
	.type	stbi_is_16_bit_from_callbacks, @function
stbi_is_16_bit_from_callbacks:
.LFB712:
	.loc 1 7530 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	.loc 1 7532 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	.loc 1 7533 11
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	.loc 1 7534 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	stbi_is_16_bit_from_callbacks, .-stbi_is_16_bit_from_callbacks
	.globl	scrollCallback
	.type	scrollCallback, @function
scrollCallback:
.LFB713:
	.file 3 "input.c"
	.loc 3 71 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	.loc 3 72 42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	glfwGetWindowUserPointer@PLT
	movq	%rax, -8(%rbp)
	.loc 3 73 22
	movq	-8(%rbp), %rax
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, 80(%rax)
	.loc 3 74 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	scrollCallback, .-scrollCallback
	.globl	updateInput
	.type	updateInput, @function
updateInput:
.LFB714:
	.loc 3 78 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 3 90 2
	movq	-24(%rbp), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2365
	.loc 3 90 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2366
	.loc 3 90 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 21(%rax)
	jmp	.L2367
.L2366:
	.loc 3 90 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 21(%rax)
.L2367:
	.loc 3 90 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L2368
.L2365:
	.loc 3 90 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 21(%rax)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L2368:
	.loc 3 91 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2369
	.loc 3 91 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	jne	.L2370
	.loc 3 91 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 22(%rax)
	jmp	.L2371
.L2370:
	.loc 3 91 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 22(%rax)
.L2371:
	.loc 3 91 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 1(%rax)
	jmp	.L2372
.L2369:
	.loc 3 91 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 22(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 1(%rax)
.L2372:
	.loc 3 92 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2373
	.loc 3 92 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	jne	.L2374
	.loc 3 92 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 23(%rax)
	jmp	.L2375
.L2374:
	.loc 3 92 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 23(%rax)
.L2375:
	.loc 3 92 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 2(%rax)
	jmp	.L2376
.L2373:
	.loc 3 92 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 23(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 2(%rax)
.L2376:
	.loc 3 93 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$68, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2377
	.loc 3 93 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %eax
	testb	%al, %al
	jne	.L2378
	.loc 3 93 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 24(%rax)
	jmp	.L2379
.L2378:
	.loc 3 93 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 24(%rax)
.L2379:
	.loc 3 93 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 3(%rax)
	jmp	.L2380
.L2377:
	.loc 3 93 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 3(%rax)
.L2380:
	.loc 3 94 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2381
	.loc 3 94 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	4(%rax), %eax
	testb	%al, %al
	jne	.L2382
	.loc 3 94 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 25(%rax)
	jmp	.L2383
.L2382:
	.loc 3 94 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 25(%rax)
.L2383:
	.loc 3 94 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 4(%rax)
	jmp	.L2384
.L2381:
	.loc 3 94 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 25(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 4(%rax)
.L2384:
	.loc 3 95 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2385
	.loc 3 95 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	6(%rax), %eax
	testb	%al, %al
	jne	.L2386
	.loc 3 95 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 27(%rax)
	jmp	.L2387
.L2386:
	.loc 3 95 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 27(%rax)
.L2387:
	.loc 3 95 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	6(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 6(%rax)
	jmp	.L2388
.L2385:
	.loc 3 95 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 27(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 6(%rax)
.L2388:
	.loc 3 96 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2389
	.loc 3 96 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	7(%rax), %eax
	testb	%al, %al
	jne	.L2390
	.loc 3 96 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 28(%rax)
	jmp	.L2391
.L2390:
	.loc 3 96 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 28(%rax)
.L2391:
	.loc 3 96 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	7(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 7(%rax)
	jmp	.L2392
.L2389:
	.loc 3 96 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 28(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 7(%rax)
.L2392:
	.loc 3 97 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2393
	.loc 3 97 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	5(%rax), %eax
	testb	%al, %al
	jne	.L2394
	.loc 3 97 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 26(%rax)
	jmp	.L2395
.L2394:
	.loc 3 97 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 26(%rax)
.L2395:
	.loc 3 97 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	5(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 5(%rax)
	jmp	.L2396
.L2393:
	.loc 3 97 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 26(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 5(%rax)
.L2396:
	.loc 3 98 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2397
	.loc 3 98 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	jne	.L2398
	.loc 3 98 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 29(%rax)
	jmp	.L2399
.L2398:
	.loc 3 98 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 29(%rax)
.L2399:
	.loc 3 98 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 8(%rax)
	jmp	.L2400
.L2397:
	.loc 3 98 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 29(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 8(%rax)
.L2400:
	.loc 3 99 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2401
	.loc 3 99 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	9(%rax), %eax
	testb	%al, %al
	jne	.L2402
	.loc 3 99 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 30(%rax)
	jmp	.L2403
.L2402:
	.loc 3 99 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 30(%rax)
.L2403:
	.loc 3 99 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	9(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 9(%rax)
	jmp	.L2404
.L2401:
	.loc 3 99 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 30(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 9(%rax)
.L2404:
	.loc 3 100 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2405
	.loc 3 100 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	10(%rax), %eax
	testb	%al, %al
	jne	.L2406
	.loc 3 100 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 31(%rax)
	jmp	.L2407
.L2406:
	.loc 3 100 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 31(%rax)
.L2407:
	.loc 3 100 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	10(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 10(%rax)
	jmp	.L2408
.L2405:
	.loc 3 100 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 31(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 10(%rax)
.L2408:
	.loc 3 101 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2409
	.loc 3 101 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	11(%rax), %eax
	testb	%al, %al
	jne	.L2410
	.loc 3 101 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 32(%rax)
	jmp	.L2411
.L2410:
	.loc 3 101 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 32(%rax)
.L2411:
	.loc 3 101 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	11(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 11(%rax)
	jmp	.L2412
.L2409:
	.loc 3 101 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 11(%rax)
.L2412:
	.loc 3 102 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2413
	.loc 3 102 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	testb	%al, %al
	jne	.L2414
	.loc 3 102 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 33(%rax)
	jmp	.L2415
.L2414:
	.loc 3 102 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 33(%rax)
.L2415:
	.loc 3 102 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.L2416
.L2413:
	.loc 3 102 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 33(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 12(%rax)
.L2416:
	.loc 3 103 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2417
	.loc 3 103 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	testb	%al, %al
	jne	.L2418
	.loc 3 103 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 34(%rax)
	jmp	.L2419
.L2418:
	.loc 3 103 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 34(%rax)
.L2419:
	.loc 3 103 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 13(%rax)
	jmp	.L2420
.L2417:
	.loc 3 103 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 34(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 13(%rax)
.L2420:
	.loc 3 104 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2421
	.loc 3 104 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	testb	%al, %al
	jne	.L2422
	.loc 3 104 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 35(%rax)
	jmp	.L2423
.L2422:
	.loc 3 104 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 35(%rax)
.L2423:
	.loc 3 104 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 14(%rax)
	jmp	.L2424
.L2421:
	.loc 3 104 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 35(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 14(%rax)
.L2424:
	.loc 3 105 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2425
	.loc 3 105 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	15(%rax), %eax
	testb	%al, %al
	jne	.L2426
	.loc 3 105 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 36(%rax)
	jmp	.L2427
.L2426:
	.loc 3 105 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 36(%rax)
.L2427:
	.loc 3 105 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	15(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 15(%rax)
	jmp	.L2428
.L2425:
	.loc 3 105 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 36(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 15(%rax)
.L2428:
	.loc 3 106 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2429
	.loc 3 106 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %eax
	testb	%al, %al
	jne	.L2430
	.loc 3 106 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 39(%rax)
	jmp	.L2431
.L2430:
	.loc 3 106 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 39(%rax)
.L2431:
	.loc 3 106 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 18(%rax)
	jmp	.L2432
.L2429:
	.loc 3 106 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 39(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 18(%rax)
.L2432:
	.loc 3 107 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2433
	.loc 3 107 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %eax
	testb	%al, %al
	jne	.L2434
	.loc 3 107 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 40(%rax)
	jmp	.L2435
.L2434:
	.loc 3 107 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 40(%rax)
.L2435:
	.loc 3 107 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 19(%rax)
	jmp	.L2436
.L2433:
	.loc 3 107 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 19(%rax)
.L2436:
	.loc 3 108 2 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	glfwGetKey@PLT
	cmpl	$1, %eax
	jne	.L2437
	.loc 3 108 2 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	jne	.L2438
	.loc 3 108 2 discriminator 3
	movq	-32(%rbp), %rax
	movb	$1, 41(%rax)
	jmp	.L2439
.L2438:
	.loc 3 108 2 discriminator 4
	movq	-32(%rbp), %rax
	movb	$0, 41(%rax)
.L2439:
	.loc 3 108 2 discriminator 6
	movq	-32(%rbp), %rax
	movzbl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 20(%rax)
	jmp	.L2440
.L2437:
	.loc 3 108 2 discriminator 2
	movq	-32(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 20(%rax)
.L2440:
	.loc 3 111 5 is_stmt 1
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	glfwGetMouseButton@PLT
	.loc 3 111 4
	cmpl	$1, %eax
	jne	.L2441
	.loc 3 113 11
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 3 113 5
	testb	%al, %al
	jne	.L2442
	.loc 3 114 22
	movq	-32(%rbp), %rax
	movb	$1, 37(%rax)
	jmp	.L2443
.L2442:
	.loc 3 116 22
	movq	-32(%rbp), %rax
	movb	$0, 37(%rax)
.L2443:
	.loc 3 117 27
	movq	-32(%rbp), %rax
	movb	$1, 16(%rax)
	jmp	.L2444
.L2441:
	.loc 3 120 21
	movq	-32(%rbp), %rax
	movb	$0, 37(%rax)
	.loc 3 121 26
	movq	-32(%rbp), %rax
	movb	$0, 16(%rax)
.L2444:
	.loc 3 124 5
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	glfwGetMouseButton@PLT
	.loc 3 124 4
	cmpl	$1, %eax
	jne	.L2445
	.loc 3 126 11
	movq	-32(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 3 126 5
	testb	%al, %al
	jne	.L2446
	.loc 3 127 22
	movq	-32(%rbp), %rax
	movb	$1, 38(%rax)
	jmp	.L2447
.L2446:
	.loc 3 129 22
	movq	-32(%rbp), %rax
	movb	$0, 38(%rax)
.L2447:
	.loc 3 130 27
	movq	-32(%rbp), %rax
	movb	$1, 17(%rax)
	jmp	.L2448
.L2445:
	.loc 3 133 21
	movq	-32(%rbp), %rax
	movb	$0, 38(%rax)
	.loc 3 134 26
	movq	-32(%rbp), %rax
	movb	$0, 17(%rax)
.L2448:
	.loc 3 137 27
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0
	.loc 3 137 8
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 3 138 27
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0
	.loc 3 138 8
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 3 140 2
	movq	-32(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	glfwGetCursorPos@PLT
	.loc 3 142 30
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0
	.loc 3 142 40
	pxor	%xmm1, %xmm1
	cvtss2sd	-4(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	.loc 3 142 23
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	.loc 3 143 30
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0
	.loc 3 143 40
	pxor	%xmm1, %xmm1
	cvtss2sd	-8(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	.loc 3 143 23
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	.loc 3 144 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	updateInput, .-updateInput
	.globl	createUnit
	.type	createUnit, @function
createUnit:
.LFB715:
	.file 4 "unit.c"
	.loc 4 27 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	.loc 4 28 20
	movq	-16(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 28 45
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10200(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 29 20
	movq	-16(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 29 45
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10204(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 30 7
	movq	-16(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 30 19
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 11808(%rax)
	.loc 4 31 14
	movq	-16(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 31 26
	subl	$1, %eax
	.loc 4 32 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	createUnit, .-createUnit
	.globl	removeUnit
	.type	removeUnit, @function
removeUnit:
.LFB716:
	.loc 4 34 46
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	.loc 4 36 8
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc 4 36 2
	jmp	.L2452
.L2453:
	.loc 4 38 17 discriminator 3
	movl	-12(%rbp), %eax
	subl	$1, %eax
	.loc 4 38 21 discriminator 3
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10192(%rax), %rdx
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	.loc 4 36 45 discriminator 3
	addl	$1, -12(%rbp)
.L2452:
	.loc 4 36 30 discriminator 1
	movq	-40(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 36 2 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L2453
	.loc 4 40 7
	movq	-40(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 40 19
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 11808(%rax)
	.loc 4 41 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	removeUnit, .-removeUnit
	.globl	findUnit
	.type	findUnit, @function
findUnit:
.LFB717:
	.loc 4 43 64
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 4 45 8
	movl	$0, -4(%rbp)
	.loc 4 45 2
	jmp	.L2455
.L2458:
	.loc 4 47 21
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	.loc 4 47 5
	cmpl	%eax, -20(%rbp)
	jne	.L2456
	.loc 4 48 21 discriminator 1
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %eax
	.loc 4 47 47 discriminator 1
	cmpl	%eax, -24(%rbp)
	jne	.L2456
	.loc 4 49 11
	movl	-4(%rbp), %eax
	jmp	.L2457
.L2456:
	.loc 4 45 38 discriminator 2
	addl	$1, -4(%rbp)
.L2455:
	.loc 4 45 23 discriminator 1
	movq	-32(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 4 45 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jle	.L2458
	.loc 4 51 9
	movl	$-1, %eax
.L2457:
	.loc 4 52 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	findUnit, .-findUnit
	.globl	createWorkshop
	.type	createWorkshop, @function
createWorkshop:
.LFB718:
	.loc 4 55 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 56 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 57 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$0, (%rax)
	.loc 4 58 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 59 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$80, (%rax)
	.loc 4 60 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$80, (%rax)
	.loc 4 61 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$0, (%rax)
	.loc 4 62 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$0, (%rax)
	.loc 4 63 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$0, (%rax)
	.loc 4 64 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 65 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$1, (%rax)
	.loc 4 66 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 67 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	createWorkshop, .-createWorkshop
	.globl	createGolem
	.type	createGolem, @function
createGolem:
.LFB719:
	.loc 4 70 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 71 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 72 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$1, (%rax)
	.loc 4 73 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 74 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$30, (%rax)
	.loc 4 75 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$30, (%rax)
	.loc 4 76 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 77 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$10, (%rax)
	.loc 4 78 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$1, (%rax)
	.loc 4 79 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 80 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$2, (%rax)
	.loc 4 81 5
	cmpl	$0, -28(%rbp)
	jne	.L2461
	.loc 4 82 29
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$1, (%rax)
	jmp	.L2462
.L2461:
	.loc 4 83 10
	cmpl	$1, -28(%rbp)
	jne	.L2462
	.loc 4 84 29
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$4, (%rax)
.L2462:
	.loc 4 85 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	createGolem, .-createGolem
	.globl	createWisp
	.type	createWisp, @function
createWisp:
.LFB720:
	.loc 4 88 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 89 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 90 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$2, (%rax)
	.loc 4 91 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 92 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$10, (%rax)
	.loc 4 93 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$10, (%rax)
	.loc 4 94 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 95 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$5, (%rax)
	.loc 4 96 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$3, (%rax)
	.loc 4 97 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 98 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$3, (%rax)
	.loc 4 99 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 100 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	createWisp, .-createWisp
	.globl	createUnboundElemental
	.type	createUnboundElemental, @function
createUnboundElemental:
.LFB721:
	.loc 4 103 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 104 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 105 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$3, (%rax)
	.loc 4 106 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 107 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$20, (%rax)
	.loc 4 108 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$20, (%rax)
	.loc 4 109 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 110 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$10, (%rax)
	.loc 4 111 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$2, (%rax)
	.loc 4 112 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 113 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$3, (%rax)
	.loc 4 114 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 115 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	createUnboundElemental, .-createUnboundElemental
	.globl	createFireElemental
	.type	createFireElemental, @function
createFireElemental:
.LFB722:
	.loc 4 118 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 119 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 120 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$4, (%rax)
	.loc 4 121 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 122 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$40, (%rax)
	.loc 4 123 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$40, (%rax)
	.loc 4 124 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 125 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$20, (%rax)
	.loc 4 126 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$2, (%rax)
	.loc 4 127 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 128 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$3, (%rax)
	.loc 4 129 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 130 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	createFireElemental, .-createFireElemental
	.globl	createWaterElemental
	.type	createWaterElemental, @function
createWaterElemental:
.LFB723:
	.loc 4 133 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 134 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 135 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$5, (%rax)
	.loc 4 136 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 137 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$40, (%rax)
	.loc 4 138 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$40, (%rax)
	.loc 4 139 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 140 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$20, (%rax)
	.loc 4 141 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$2, (%rax)
	.loc 4 142 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 143 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$3, (%rax)
	.loc 4 144 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 145 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	createWaterElemental, .-createWaterElemental
	.globl	createIceElemental
	.type	createIceElemental, @function
createIceElemental:
.LFB724:
	.loc 4 148 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 149 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 150 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$6, (%rax)
	.loc 4 151 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 152 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$40, (%rax)
	.loc 4 153 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$40, (%rax)
	.loc 4 154 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$2, (%rax)
	.loc 4 155 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$20, (%rax)
	.loc 4 156 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$2, (%rax)
	.loc 4 157 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 158 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$3, (%rax)
	.loc 4 159 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 160 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	createIceElemental, .-createIceElemental
	.globl	createArcaneElemental
	.type	createArcaneElemental, @function
createArcaneElemental:
.LFB725:
	.loc 4 163 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 4 164 11
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	createUnit
	movl	%eax, -4(%rbp)
	.loc 4 165 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	$7, (%rax)
	.loc 4 166 24
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	10212(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 4 167 26
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	$150, (%rax)
	.loc 4 168 31
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	$150, (%rax)
	.loc 4 169 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10216, %rax
	movl	$3, (%rax)
	.loc 4 170 33
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	$80, (%rax)
	.loc 4 171 27
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	$4, (%rax)
	.loc 4 172 30
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 4 173 32
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10232, %rax
	movl	$6, (%rax)
	.loc 4 174 28
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10236, %rax
	movl	$0, (%rax)
	.loc 4 175 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	createArcaneElemental, .-createArcaneElemental
	.section	.rodata
.LC126:
	.string	"data.save"
	.text
	.globl	saveState
	.type	saveState, @function
saveState:
.LFB726:
	.file 5 "game.c"
	.loc 5 121 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 122 2
	movq	-8(%rbp), %rax
	movl	$11873, %edx
	movq	%rax, %rsi
	leaq	.LC126(%rip), %rdi
	call	writeFile@PLT
	.loc 5 123 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	saveState, .-saveState
	.globl	loadState
	.type	loadState, @function
loadState:
.LFB727:
	.loc 5 126 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 127 15
	leaq	.LC126(%rip), %rdi
	call	loadFile@PLT
	movq	%rax, -8(%rbp)
	.loc 5 128 2
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$11872, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 5 129 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	loadState, .-loadState
	.globl	initializeGameState
	.type	initializeGameState, @function
initializeGameState:
.LFB728:
	.loc 5 133 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 5 134 23
	movq	-8(%rbp), %rax
	movl	$2, 11796(%rax)
	.loc 5 135 14
	movq	-8(%rbp), %rax
	movl	$0, 11800(%rax)
	.loc 5 136 23
	movq	-8(%rbp), %rax
	movl	$0, 11828(%rax)
	.loc 5 137 14
	movq	-8(%rbp), %rax
	movl	$-1, 11800(%rax)
	.loc 5 138 20
	movq	-8(%rbp), %rax
	movl	$1, 11804(%rax)
	.loc 5 139 14
	movq	-8(%rbp), %rax
	movl	$0, 11836(%rax)
	.loc 5 140 20
	movq	-8(%rbp), %rax
	movl	$0, 11808(%rax)
	.loc 5 141 25
	movq	-8(%rbp), %rax
	movss	.LC127(%rip), %xmm0
	movss	%xmm0, 11844(%rax)
	.loc 5 142 23
	movq	-8(%rbp), %rax
	movl	$-1, 11812(%rax)
	.loc 5 143 21
	movq	-8(%rbp), %rax
	movl	$-1, 11816(%rax)
	.loc 5 145 22
	movq	-8(%rbp), %rax
	movss	.LC128(%rip), %xmm0
	movss	%xmm0, 11760(%rax)
	.loc 5 146 22
	movq	-8(%rbp), %rax
	movss	.LC128(%rip), %xmm0
	movss	%xmm0, 11764(%rax)
	.loc 5 148 22
	movq	-8(%rbp), %rax
	movss	.LC129(%rip), %xmm0
	movss	%xmm0, 11768(%rax)
	.loc 5 149 22
	movq	-8(%rbp), %rax
	movss	.LC130(%rip), %xmm0
	movss	%xmm0, 11772(%rax)
	.loc 5 150 22
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 11776(%rax)
	.loc 5 151 22
	movq	-8(%rbp), %rax
	movss	.LC128(%rip), %xmm0
	movss	%xmm0, 11780(%rax)
	.loc 5 153 22
	movq	-8(%rbp), %rax
	movss	.LC131(%rip), %xmm0
	movss	%xmm0, 11788(%rax)
	.loc 5 154 22
	movq	-8(%rbp), %rax
	movss	.LC132(%rip), %xmm0
	movss	%xmm0, 11792(%rax)
	.loc 5 156 22
	movq	-8(%rbp), %rax
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, 11784(%rax)
	.loc 5 157 35
	movq	-8(%rbp), %rax
	movl	$-1, 10008(%rax)
	.loc 5 158 35
	movq	-8(%rbp), %rax
	movl	$-1, 10032(%rax)
	.loc 5 163 2
	movq	-8(%rbp), %rax
	addq	$11592, %rax
	movabsq	$8101809099596001111, %rsi
	movq	%rsi, (%rax)
	movb	$0, 8(%rax)
	.loc 5 164 2
	movq	-8(%rbp), %rax
	addq	$11612, %rax
	movl	$1701605191, (%rax)
	movw	$109, 4(%rax)
	.loc 5 165 2
	movq	-8(%rbp), %rax
	addq	$11652, %rax
	movabsq	$2334111957543710293, %rdx
	movabsq	$7022359100883561541, %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movw	$108, 16(%rax)
	.loc 5 166 2
	movq	-8(%rbp), %rax
	addq	$11672, %rax
	movabsq	$7308292300758739270, %rdi
	movq	%rdi, (%rax)
	movl	$1953391981, 8(%rax)
	movw	$27745, 12(%rax)
	movb	$0, 14(%rax)
	.loc 5 167 2
	movq	-8(%rbp), %rax
	addq	$11692, %rax
	movabsq	$7801677605189738839, %rsi
	movabsq	$30506450180992357, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	.loc 5 168 2
	movq	-8(%rbp), %rax
	addq	$11712, %rax
	movabsq	$7882825766933979977, %rdx
	movq	%rdx, (%rax)
	movl	$1635020389, 8(%rax)
	movw	$108, 12(%rax)
	.loc 5 169 2
	movq	-8(%rbp), %rax
	addq	$11732, %rax
	movabsq	$4981092712626483777, %rdx
	movabsq	$7809651246334043500, %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movb	$0, 16(%rax)
	.loc 5 170 2
	movq	-8(%rbp), %rax
	addq	$11632, %rax
	movl	$1886611799, (%rax)
	movb	$0, 4(%rax)
	.loc 5 173 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	initializeGameState, .-initializeGameState
	.globl	updateEssenceGeneration
	.type	updateEssenceGeneration, @function
updateEssenceGeneration:
.LFB729:
	.loc 5 179 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 180 42
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10004, %rax
	movl	$0, (%rax)
	.loc 5 182 8
	movl	$0, -4(%rbp)
	.loc 5 182 2
	jmp	.L2473
.L2475:
	.loc 5 184 21
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %eax
	.loc 5 184 5
	cmpl	%eax, -20(%rbp)
	jne	.L2474
.LBB1637:
	.loc 5 186 8
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 5 187 8
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 5 188 22
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 188 6
	cmpl	$1, %eax
	jne	.L2474
	.loc 5 189 32 discriminator 1
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 5 188 42 discriminator 1
	cmpb	$2, %al
	jne	.L2474
	.loc 5 190 45
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10004, %rax
	movl	(%rax), %eax
	leal	20(%rax), %ecx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10004, %rax
	movl	%ecx, (%rax)
.L2474:
.LBE1637:
	.loc 5 182 37 discriminator 2
	addl	$1, -4(%rbp)
.L2473:
	.loc 5 182 22 discriminator 1
	movq	-32(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 182 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2475
	.loc 5 193 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	updateEssenceGeneration, .-updateEssenceGeneration
	.globl	updateEssenceTotal
	.type	updateEssenceTotal, @function
updateEssenceTotal:
.LFB730:
	.loc 5 196 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 5 197 37
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %ecx
	.loc 5 198 23
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10004, %rax
	movl	(%rax), %eax
	.loc 5 197 37
	addl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	%ecx, (%rax)
	.loc 5 199 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	updateEssenceTotal, .-updateEssenceTotal
	.section	.rodata
.LC134:
	.string	"%s"
	.text
	.globl	alertMessage
	.type	alertMessage, @function
alertMessage:
.LFB731:
	.loc 5 202 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	.loc 5 203 16
	movq	-24(%rbp), %rax
	leaq	11392(%rax), %rdi
	.loc 5 203 2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC134(%rip), %rdx
	movl	$100, %esi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 5 204 25
	movq	-24(%rbp), %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, 11844(%rax)
	.loc 5 205 29
	movq	-24(%rbp), %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, 11848(%rax)
	.loc 5 206 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	alertMessage, .-alertMessage
	.section	.rodata
	.align 8
.LC135:
	.string	"Your Elemental has been bound to fire!"
	.align 8
.LC137:
	.string	"Your Elemental has been bound to water!"
	.align 8
.LC138:
	.string	"Your Elemental has been bound to ice!"
	.text
	.globl	updateAltars
	.type	updateAltars, @function
updateAltars:
.LFB732:
	.loc 5 209 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 211 8
	movl	$0, -4(%rbp)
	.loc 5 211 2
	jmp	.L2479
.L2483:
.LBB1638:
	.loc 5 213 7
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	.loc 5 214 7
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 5 215 21
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 215 5
	cmpl	$3, %eax
	jne	.L2480
	.loc 5 217 32
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 5 217 6
	cmpb	$4, %al
	jne	.L2481
	.loc 5 219 5
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 220 5
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	createFireElemental
	.loc 5 221 5
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC135(%rip), %rdi
	call	alertMessage
	.loc 5 222 6
	subl	$1, -4(%rbp)
.L2481:
	.loc 5 224 32
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 5 224 6
	cmpb	$5, %al
	jne	.L2482
	.loc 5 226 5
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 227 5
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	createWaterElemental
	.loc 5 228 5
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC137(%rip), %rdi
	call	alertMessage
	.loc 5 229 6
	subl	$1, -4(%rbp)
.L2482:
	.loc 5 231 32
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 5 231 6
	cmpb	$6, %al
	jne	.L2480
	.loc 5 233 5
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 234 5
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	createIceElemental
	.loc 5 235 5
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC138(%rip), %rdi
	call	alertMessage
	.loc 5 236 6
	subl	$1, -4(%rbp)
.L2480:
.LBE1638:
	.loc 5 211 37 discriminator 2
	addl	$1, -4(%rbp)
.L2479:
	.loc 5 211 22 discriminator 1
	movq	-32(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 211 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2483
	.loc 5 240 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	updateAltars, .-updateAltars
	.section	.rodata
.LC139:
	.string	"NOT ENOUGH ESSENCE!"
	.text
	.globl	startArcanePulse
	.type	startArcanePulse, @function
startArcanePulse:
.LFB733:
	.loc 5 243 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 244 25
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 244 32
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %eax
	.loc 5 244 4
	cmpl	$599, %eax
	jle	.L2485
	.loc 5 246 23
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 246 45
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %edx
	.loc 5 246 23
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 246 45
	leal	-600(%rdx), %ecx
	movq	-8(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	%ecx, (%rax)
	.loc 5 247 23
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 247 46
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	$6, (%rax)
	.loc 5 252 1
	jmp	.L2487
.L2485:
	.loc 5 251 3
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC139(%rip), %rdi
	call	alertMessage
.L2487:
	.loc 5 252 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	startArcanePulse, .-startArcanePulse
	.globl	killAllEnemies
	.type	killAllEnemies, @function
killAllEnemies:
.LFB734:
	.loc 5 255 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 257 8
	movl	$0, -4(%rbp)
	.loc 5 257 2
	jmp	.L2489
.L2491:
	.loc 5 259 21
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %eax
	.loc 5 259 5
	cmpl	%eax, -20(%rbp)
	je	.L2490
	.loc 5 259 53 discriminator 1
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 259 35 discriminator 1
	testl	%eax, %eax
	je	.L2490
	.loc 5 261 4
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 262 5
	subl	$1, -4(%rbp)
.L2490:
	.loc 5 257 37 discriminator 2
	addl	$1, -4(%rbp)
.L2489:
	.loc 5 257 22 discriminator 1
	movq	-32(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 257 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2491
	.loc 5 265 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	killAllEnemies, .-killAllEnemies
	.section	.rodata
	.align 8
.LC140:
	.string	"ALL YOUR UNITS WERE DESTROYED!"
	.text
	.globl	updateArcanePulse
	.type	updateArcanePulse, @function
updateArcanePulse:
.LFB735:
	.loc 5 268 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 269 25
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 269 32
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 5 269 4
	cmpl	$-1, %eax
	je	.L2494
	.loc 5 271 23
	movq	-8(%rbp), %rax
	movl	11800(%rax), %edx
	.loc 5 271 30
	movq	-8(%rbp), %rsi
	movslq	%edx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 5 271 45
	leal	-1(%rax), %ecx
	movq	-8(%rbp), %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10008, %rax
	movl	%ecx, (%rax)
	.loc 5 272 26
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 272 33
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 5 272 5
	testl	%eax, %eax
	jne	.L2494
	.loc 5 274 4
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	killAllEnemies
	.loc 5 275 24
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 275 47
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	$-1, (%rax)
	.loc 5 276 4
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC141(%rip), %xmm0
	leaq	.LC140(%rip), %rdi
	call	alertMessage
.L2494:
	.loc 5 279 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	updateArcanePulse, .-updateArcanePulse
	.globl	unitDistance
	.type	unitDistance, @function
unitDistance:
.LFB736:
	.loc 5 282 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	.loc 5 283 9
	movq	-16(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10200, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	%rdi, %rax
	addq	$10204, %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %r8
	movl	-4(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rdi, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	salq	$4, %rax
	addq	%r8, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	hexDistance@PLT
	.loc 5 285 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	unitDistance, .-unitDistance
	.globl	updateArcaneElemental
	.type	updateArcaneElemental, @function
updateArcaneElemental:
.LFB737:
	.loc 5 288 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 5 290 8
	movl	$0, -4(%rbp)
	.loc 5 290 2
	jmp	.L2498
.L2506:
	.loc 5 292 21
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 292 5
	cmpl	$4, %eax
	jne	.L2499
	.loc 5 294 10
	movl	$0, -8(%rbp)
	.loc 5 294 4
	jmp	.L2500
.L2505:
	.loc 5 296 23
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 296 7
	cmpl	$5, %eax
	jne	.L2501
	.loc 5 297 11
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	unitDistance
	.loc 5 297 8
	cmpl	$1, %eax
	jne	.L2501
	.loc 5 299 12
	movl	$0, -12(%rbp)
	.loc 5 299 6
	jmp	.L2502
.L2504:
	.loc 5 301 25
	movq	-40(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 301 9
	cmpl	$6, %eax
	jne	.L2503
	.loc 5 302 13
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	unitDistance
	.loc 5 302 10
	cmpl	$1, %eax
	jne	.L2503
	.loc 5 302 47 discriminator 1
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	unitDistance
	.loc 5 302 44 discriminator 1
	cmpl	$1, %eax
	jne	.L2503
.LBB1639:
	.loc 5 304 12
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 5 305 12
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 5 306 8
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 307 8
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 308 8
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
	.loc 5 309 9
	subl	$1, -4(%rbp)
	.loc 5 310 9
	subl	$1, -8(%rbp)
	.loc 5 311 9
	subl	$1, -12(%rbp)
	.loc 5 312 8
	movq	-40(%rbp), %rax
	movl	11800(%rax), %edx
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	createArcaneElemental
.L2503:
.LBE1639:
	.loc 5 299 41 discriminator 2
	addl	$1, -12(%rbp)
.L2502:
	.loc 5 299 26 discriminator 1
	movq	-40(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 299 6 discriminator 1
	cmpl	%eax, -12(%rbp)
	jl	.L2504
.L2501:
	.loc 5 294 39 discriminator 2
	addl	$1, -8(%rbp)
.L2500:
	.loc 5 294 24 discriminator 1
	movq	-40(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 294 4 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L2505
.L2499:
	.loc 5 290 37 discriminator 2
	addl	$1, -4(%rbp)
.L2498:
	.loc 5 290 22 discriminator 1
	movq	-40(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 290 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2506
	.loc 5 322 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	updateArcaneElemental, .-updateArcaneElemental
	.globl	isUnitInVisionRange
	.type	isUnitInVisionRange, @function
isUnitInVisionRange:
.LFB738:
	.loc 5 325 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 326 6
	movl	$0, -4(%rbp)
	.loc 5 328 8
	movl	$0, -8(%rbp)
	.loc 5 328 2
	jmp	.L2508
.L2510:
	.loc 5 330 6
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10200, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	%rdi, %rax
	addq	$10204, %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %r8
	movl	-20(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rdi, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	salq	$4, %rax
	addq	%r8, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	hexDistance@PLT
	movl	%eax, %edx
	.loc 5 333 19
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10232, %rax
	movl	(%rax), %eax
	.loc 5 330 5
	cmpl	%eax, %edx
	jg	.L2509
	.loc 5 335 19
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %edx
	.loc 5 335 33
	movq	-32(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 334 4
	cmpl	%eax, %edx
	jne	.L2509
	.loc 5 337 13
	movl	$1, -4(%rbp)
.L2509:
	.loc 5 328 37 discriminator 2
	addl	$1, -8(%rbp)
.L2508:
	.loc 5 328 22 discriminator 1
	movq	-32(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 328 2 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L2510
	.loc 5 340 9
	movl	-4(%rbp), %eax
	.loc 5 341 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	isUnitInVisionRange, .-isUnitInVisionRange
	.section	.rodata
	.align 8
.LC142:
	.string	"ENEMY IS WINDING UP AN ARCANE PULSE!"
	.text
	.globl	turn
	.type	turn, @function
turn:
.LFB739:
	.loc 5 345 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 347 10
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 347 4
	cmpl	$-1, %eax
	je	.L2513
	.loc 5 349 3
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	updateEssenceTotal
	.loc 5 350 3
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	updateAltars
	.loc 5 351 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	updateArcanePulse
	.loc 5 352 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	updateArcaneElemental
	.loc 5 353 26
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 353 33
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 5 353 5
	cmpl	$-1, %eax
	je	.L2514
	.loc 5 355 4
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC115(%rip), %xmm0
	leaq	.LC142(%rip), %rdi
	call	alertMessage
.L2514:
	.loc 5 357 15
	movq	-24(%rbp), %rax
	movl	$4, 11836(%rax)
.L2513:
	.loc 5 360 22
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 360 29
	leal	1(%rax), %edx
	.loc 5 360 39
	movq	-24(%rbp), %rax
	movl	11796(%rax), %ecx
	.loc 5 360 33
	movl	%edx, %eax
	cltd
	idivl	%ecx
	.loc 5 360 14
	movq	-24(%rbp), %rax
	movl	%edx, 11800(%rax)
	.loc 5 361 7
	movq	-24(%rbp), %rax
	movl	11804(%rax), %eax
	.loc 5 361 19
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 11804(%rax)
	.loc 5 364 8
	movl	$0, -4(%rbp)
	.loc 5 364 2
	jmp	.L2515
.L2516:
	.loc 5 366 47 discriminator 3
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	(%rax), %edx
	.loc 5 366 30 discriminator 3
	movq	-24(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	%edx, (%rax)
	.loc 5 364 37 discriminator 3
	addl	$1, -4(%rbp)
.L2515:
	.loc 5 364 22 discriminator 1
	movq	-24(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 364 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2516
	.loc 5 369 23
	movq	-24(%rbp), %rax
	movl	$-1, 11812(%rax)
	.loc 5 370 23
	movq	-24(%rbp), %rax
	movl	$0, 11828(%rax)
	.loc 5 372 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	turn, .-turn
	.globl	isInMapBounds
	.type	isInMapBounds, @function
isInMapBounds:
.LFB740:
	.loc 5 375 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	.loc 5 376 15
	movq	-16(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 376 4
	cmpl	%eax, -4(%rbp)
	jge	.L2518
	.loc 5 376 24 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L2519
.L2518:
	.loc 5 377 10
	movl	$0, %eax
	jmp	.L2520
.L2519:
	.loc 5 379 15
	movq	-16(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 379 4
	cmpl	%eax, -8(%rbp)
	jge	.L2521
	.loc 5 379 24 discriminator 1
	cmpl	$0, -8(%rbp)
	jns	.L2522
.L2521:
	.loc 5 380 10
	movl	$0, %eax
	jmp	.L2520
.L2522:
	.loc 5 382 26
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 5 382 4
	testb	%al, %al
	jne	.L2523
	.loc 5 383 10
	movl	$0, %eax
	jmp	.L2520
.L2523:
	.loc 5 385 9
	movl	$1, %eax
.L2520:
	.loc 5 386 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	isInMapBounds, .-isInMapBounds
	.globl	setMoveCursor
	.type	setMoveCursor, @function
setMoveCursor:
.LFB741:
	.loc 5 390 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 5 391 5
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	isInMapBounds
	.loc 5 391 4
	testl	%eax, %eax
	je	.L2534
	.loc 5 393 18
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 11820(%rax)
	.loc 5 394 18
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 11824(%rax)
	.loc 5 395 38
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 395 54
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	.loc 5 395 5
	cmpl	%eax, -36(%rbp)
	jne	.L2527
	.loc 5 396 35 discriminator 1
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 396 51 discriminator 1
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %eax
	.loc 5 395 66 discriminator 1
	cmpl	%eax, -40(%rbp)
	je	.L2528
.L2527:
	.loc 5 399 27
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 398 4
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %esi
	.loc 5 398 40
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 398 4
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	.loc 5 397 21
	movq	-48(%rbp), %rdx
	movl	11812(%rdx), %ebx
	.loc 5 398 4
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	%eax, %edi
	call	calculateRotation@PLT
	movl	%eax, %edx
	.loc 5 397 47
	movq	-48(%rbp), %rsi
	movslq	%ebx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10236, %rax
	movl	%edx, (%rax)
.L2528:
	.loc 5 401 23
	movq	-48(%rbp), %rax
	movl	$1, 11828(%rax)
	.loc 5 404 10
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 404 4
	cmpl	$-1, %eax
	je	.L2529
	.loc 5 405 28
	movq	-48(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	11820(%rax), %edx
	.loc 5 406 31
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 405 28
	movq	-48(%rbp), %rdi
	movslq	%eax, %rsi
	movq	%rsi, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	%rdi, %rax
	addq	$10204, %rax
	movl	(%rax), %esi
	.loc 5 405 58
	movq	-48(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 405 28
	movq	-48(%rbp), %r8
	movslq	%eax, %rdi
	movq	%rdi, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	salq	$4, %rax
	addq	%r8, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	hexDistance@PLT
	.loc 5 405 26
	movq	-48(%rbp), %rdx
	movl	%eax, 11832(%rdx)
	jmp	.L2530
.L2529:
	.loc 5 410 26
	movq	-48(%rbp), %rax
	movl	$0, 11832(%rax)
.L2530:
	.loc 5 412 10
	movq	-48(%rbp), %rax
	movl	11832(%rax), %eax
	.loc 5 412 4
	testl	%eax, %eax
	jne	.L2531
	.loc 5 413 24
	movq	-48(%rbp), %rax
	movl	$0, 11828(%rax)
.L2531:
	.loc 5 416 15
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	movl	%eax, -20(%rbp)
	.loc 5 417 4
	cmpl	$-1, -20(%rbp)
	je	.L2532
	.loc 5 417 41 discriminator 1
	movq	-48(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %edx
	.loc 5 417 55 discriminator 1
	movq	-48(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 417 18 discriminator 1
	cmpl	%eax, %edx
	jne	.L2532
	.loc 5 418 10
	movl	$-1, -20(%rbp)
.L2532:
	.loc 5 419 4
	cmpl	$-1, -20(%rbp)
	je	.L2533
	.loc 5 419 22 discriminator 1
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isUnitInVisionRange
	.loc 5 419 18 discriminator 1
	testl	%eax, %eax
	jne	.L2533
	.loc 5 420 10
	movl	$-1, -20(%rbp)
.L2533:
	.loc 5 422 21
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 11816(%rax)
	jmp	.L2524
.L2534:
	.loc 5 392 3
	nop
.L2524:
	.loc 5 424 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	setMoveCursor, .-setMoveCursor
	.globl	selectUnit
	.type	selectUnit, @function
selectUnit:
.LFB742:
	.loc 5 430 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 5 431 4
	cmpl	$-1, -4(%rbp)
	jne	.L2536
	.loc 5 433 15
	movq	-16(%rbp), %rax
	movl	$0, 11836(%rax)
	.loc 5 434 24
	movq	-16(%rbp), %rax
	movl	$-1, 11812(%rax)
	.loc 5 447 1
	jmp	.L2538
.L2536:
	.loc 5 438 24
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 11812(%rax)
	.loc 5 439 15
	movq	-16(%rbp), %rax
	movl	$0, 11836(%rax)
	.loc 5 440 3
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	setMoveCursor
	.loc 5 443 21
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 5 443 5
	testl	%eax, %eax
	jne	.L2538
	.loc 5 444 16
	movq	-16(%rbp), %rax
	movl	$3, 11836(%rax)
.L2538:
	.loc 5 447 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	selectUnit, .-selectUnit
	.section	.rodata
.LC143:
	.string	"game.c"
	.text
	.globl	step
	.type	step, @function
step:
.LFB743:
	.loc 5 450 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 451 6
	movq	-24(%rbp), %rax
	movl	11812(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 5 452 10
	movq	-24(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 452 4
	cmpl	$-1, %eax
	jne	.L2541
	.loc 5 454 5
	movl	$0, -4(%rbp)
	.loc 5 456 7
	jmp	.L2541
.L2543:
	.loc 5 458 4
	addl	$1, -4(%rbp)
	.loc 5 459 28
	movq	-24(%rbp), %rax
	movl	11808(%rax), %ecx
	.loc 5 459 21
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	.loc 5 459 41
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %edx
	.loc 5 459 55
	movq	-24(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 459 5
	cmpl	%eax, %edx
	jne	.L2541
	.loc 5 461 24
	movq	-24(%rbp), %rax
	movl	11808(%rax), %ecx
	.loc 5 461 4
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	selectUnit
	.loc 5 462 4
	jmp	.L2544
.L2541:
	.loc 5 456 18
	movq	-24(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 5 456 31
	addl	%eax, %eax
	.loc 5 456 7
	cmpl	%eax, -4(%rbp)
	jle	.L2543
	.loc 5 465 2 discriminator 1
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx
	movl	$465, %edx
	leaq	.LC143(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L2544:
	.loc 5 467 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	step, .-step
	.section	.rodata
.LC144:
	.string	"Not enough MP!"
.LC145:
	.string	"Can't move there!"
	.text
	.globl	moveSelectedUnit
	.type	moveSelectedUnit, @function
moveSelectedUnit:
.LFB744:
	.loc 5 471 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 472 5
	movq	-8(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	.loc 5 472 4
	cmpl	$-1, %eax
	jne	.L2546
	.loc 5 474 11
	movq	-8(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 5 474 48
	movq	-8(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 474 64
	movq	-8(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	(%rax), %eax
	.loc 5 474 5
	cmpl	%eax, %ecx
	jg	.L2547
	.loc 5 475 22
	movq	-8(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 475 49
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	(%rax), %edx
	.loc 5 475 56
	movq	-8(%rbp), %rax
	movl	11832(%rax), %esi
	.loc 5 475 22
	movq	-8(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 475 49
	movl	%edx, %ecx
	subl	%esi, %ecx
	movq	-8(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	%ecx, (%rax)
	.loc 5 476 22
	movq	-8(%rbp), %rax
	movl	11812(%rax), %ecx
	.loc 5 476 57
	movq	-8(%rbp), %rax
	movl	11820(%rax), %edx
	.loc 5 476 50
	movq	-8(%rbp), %rsi
	movslq	%ecx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10200, %rax
	movl	%edx, (%rax)
	.loc 5 477 22
	movq	-8(%rbp), %rax
	movl	11812(%rax), %ecx
	.loc 5 477 57
	movq	-8(%rbp), %rax
	movl	11824(%rax), %edx
	.loc 5 477 50
	movq	-8(%rbp), %rsi
	movslq	%ecx, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10204, %rax
	movl	%edx, (%rax)
	.loc 5 479 4
	movq	-8(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	setMoveCursor
	.loc 5 480 4
	movq	-8(%rbp), %rax
	movl	11800(%rax), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	updateEssenceGeneration
	.loc 5 490 1
	jmp	.L2549
.L2547:
	.loc 5 483 4
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC115(%rip), %xmm0
	leaq	.LC144(%rip), %rdi
	call	alertMessage
	.loc 5 490 1
	jmp	.L2549
.L2546:
	.loc 5 488 3
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC145(%rip), %rdi
	call	alertMessage
.L2549:
	.loc 5 490 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	moveSelectedUnit, .-moveSelectedUnit
	.section	.rodata
	.align 8
.LC146:
	.string	"Game Over! Hold ESCAPE to close the game."
	.text
	.globl	attackSelectedUnit
	.type	attackSelectedUnit, @function
attackSelectedUnit:
.LFB745:
	.loc 5 493 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 5 494 15
	movq	-40(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	movl	%eax, -8(%rbp)
	.loc 5 495 43
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 495 8
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	10192(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 5 496 4
	cmpl	$-1, -8(%rbp)
	je	.L2557
.LBB1640:
	.loc 5 498 9
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	10192(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 5 499 17
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 5 499 40
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	.loc 5 499 5
	cmpl	%eax, %edx
	je	.L2557
	.loc 5 500 19 discriminator 1
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	.loc 5 499 47 discriminator 1
	testl	%eax, %eax
	jle	.L2557
	.loc 5 501 11
	movq	-40(%rbp), %rax
	movl	11832(%rax), %edx
	.loc 5 501 45
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	.loc 5 500 34
	cmpl	%eax, %edx
	jg	.L2557
.LBB1641:
	.loc 5 503 8
	movl	$1, -4(%rbp)
	.loc 5 504 20
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 504 6
	cmpl	$4, %eax
	jne	.L2552
	.loc 5 504 64 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 504 50 discriminator 1
	cmpl	$6, %eax
	jne	.L2552
	.loc 5 505 16
	movl	$2, -4(%rbp)
.L2552:
	.loc 5 506 20
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 506 6
	cmpl	$5, %eax
	jne	.L2553
	.loc 5 506 65 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 506 51 discriminator 1
	cmpl	$4, %eax
	jne	.L2553
	.loc 5 507 16
	movl	$2, -4(%rbp)
.L2553:
	.loc 5 508 20
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 508 6
	cmpl	$6, %eax
	jne	.L2554
	.loc 5 508 63 discriminator 1
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 508 49 discriminator 1
	cmpl	$5, %eax
	jne	.L2554
	.loc 5 509 16
	movl	$2, -4(%rbp)
.L2554:
	.loc 5 510 32
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	(%rax), %ecx
	.loc 5 510 66
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 510 82
	movq	-40(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10220, %rax
	movl	(%rax), %eax
	.loc 5 510 46
	imull	-4(%rbp), %eax
	.loc 5 510 32
	subl	%eax, %ecx
	movq	-40(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	movl	%ecx, (%rax)
	.loc 5 511 27
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10192, %rax
	movl	(%rax), %eax
	.loc 5 511 6
	testl	%eax, %eax
	jg	.L2555
	.loc 5 513 19
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 513 7
	testl	%eax, %eax
	jne	.L2556
	.loc 5 515 17
	movq	-40(%rbp), %rax
	movl	$1, 11864(%rax)
	.loc 5 516 6
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC147(%rip), %xmm0
	leaq	.LC146(%rip), %rdi
	call	alertMessage
	.loc 5 517 18
	movq	-40(%rbp), %rax
	movl	$0, 11836(%rax)
	.loc 5 518 6
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
	.loc 5 519 27
	movq	-40(%rbp), %rax
	movl	$0, 11828(%rax)
.L2556:
	.loc 5 521 5
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	removeUnit
.L2555:
	.loc 5 523 22
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 523 50
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	$0, (%rax)
	.loc 5 524 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2557:
.LBE1641:
.LBE1640:
	.loc 5 527 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	attackSelectedUnit, .-attackSelectedUnit
	.globl	clampMapOffset
	.type	clampMapOffset, @function
clampMapOffset:
.LFB746:
	.loc 5 530 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 5 531 10
	movq	-8(%rbp), %rax
	movss	11760(%rax), %xmm0
	.loc 5 531 32
	movq	-8(%rbp), %rax
	movss	11776(%rax), %xmm1
	.loc 5 531 4
	comiss	%xmm1, %xmm0
	jbe	.L2559
	.loc 5 532 30
	movq	-8(%rbp), %rax
	movss	11776(%rax), %xmm0
	.loc 5 532 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11760(%rax)
.L2559:
	.loc 5 533 10
	movq	-8(%rbp), %rax
	movss	11764(%rax), %xmm0
	.loc 5 533 32
	movq	-8(%rbp), %rax
	movss	11780(%rax), %xmm1
	.loc 5 533 4
	comiss	%xmm1, %xmm0
	jbe	.L2561
	.loc 5 534 30
	movq	-8(%rbp), %rax
	movss	11780(%rax), %xmm0
	.loc 5 534 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11764(%rax)
.L2561:
	.loc 5 535 10
	movq	-8(%rbp), %rax
	movss	11760(%rax), %xmm1
	.loc 5 535 32
	movq	-8(%rbp), %rax
	movss	11768(%rax), %xmm0
	.loc 5 535 4
	comiss	%xmm1, %xmm0
	jbe	.L2563
	.loc 5 536 30
	movq	-8(%rbp), %rax
	movss	11768(%rax), %xmm0
	.loc 5 536 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11760(%rax)
.L2563:
	.loc 5 537 10
	movq	-8(%rbp), %rax
	movss	11764(%rax), %xmm1
	.loc 5 537 32
	movq	-8(%rbp), %rax
	movss	11772(%rax), %xmm0
	.loc 5 537 4
	comiss	%xmm1, %xmm0
	ja	.L2570
	.loc 5 539 1
	jmp	.L2571
.L2570:
	.loc 5 538 30
	movq	-8(%rbp), %rax
	movss	11772(%rax), %xmm0
	.loc 5 538 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11764(%rax)
.L2571:
	.loc 5 539 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	clampMapOffset, .-clampMapOffset
	.globl	clampHexSize
	.type	clampHexSize, @function
clampHexSize:
.LFB747:
	.loc 5 542 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 5 543 10
	movq	-8(%rbp), %rax
	movss	11784(%rax), %xmm0
	.loc 5 543 32
	movq	-8(%rbp), %rax
	movss	11792(%rax), %xmm1
	.loc 5 543 4
	comiss	%xmm1, %xmm0
	jbe	.L2573
	.loc 5 544 30
	movq	-8(%rbp), %rax
	movss	11792(%rax), %xmm0
	.loc 5 544 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11784(%rax)
.L2573:
	.loc 5 545 10
	movq	-8(%rbp), %rax
	movss	11784(%rax), %xmm1
	.loc 5 545 32
	movq	-8(%rbp), %rax
	movss	11788(%rax), %xmm0
	.loc 5 545 4
	comiss	%xmm1, %xmm0
	ja	.L2578
	.loc 5 547 1
	jmp	.L2579
.L2578:
	.loc 5 546 30
	movq	-8(%rbp), %rax
	movss	11788(%rax), %xmm0
	.loc 5 546 23
	movq	-8(%rbp), %rax
	movss	%xmm0, 11784(%rax)
.L2579:
	.loc 5 547 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	clampHexSize, .-clampHexSize
	.section	.rodata
.LC148:
	.string	"Saving game..."
.LC149:
	.string	"Loaded game!"
.LC151:
	.string	"NOT ENOGH ESSENCE!"
	.align 8
.LC152:
	.string	"Your spawn tile is occupied!!!"
	.text
	.globl	processInput
	.type	processInput, @function
processInput:
.LFB748:
	.loc 5 550 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 5 551 10
	movq	-56(%rbp), %rax
	movzbl	7(%rax), %eax
	.loc 5 551 4
	cmpb	$29, %al
	jbe	.L2581
	.loc 5 553 14
	movq	-64(%rbp), %rax
	movl	$1, 11868(%rax)
.L2581:
	.loc 5 555 10
	movq	-64(%rbp), %rax
	movl	11864(%rax), %eax
	.loc 5 555 4
	cmpl	$1, %eax
	je	.L2635
	.loc 5 557 24
	movq	-56(%rbp), %rax
	movzbl	20(%rax), %eax
	movzbl	%al, %edx
	.loc 5 557 17
	movq	-64(%rbp), %rax
	movl	%edx, 11840(%rax)
	.loc 5 557 10
	movq	-64(%rbp), %rax
	movl	11840(%rax), %eax
	.loc 5 557 4
	testl	%eax, %eax
	je	.L2584
	.loc 5 558 15
	movq	-64(%rbp), %rax
	movl	$1, 11840(%rax)
	jmp	.L2585
.L2584:
	.loc 5 560 15
	movq	-64(%rbp), %rax
	movl	$0, 11840(%rax)
.L2585:
	.loc 5 561 10
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 5 561 4
	testb	%al, %al
	je	.L2586
	.loc 5 561 34 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	19(%rax), %eax
	.loc 5 561 26 discriminator 1
	testb	%al, %al
	je	.L2586
	.loc 5 563 24
	movq	-56(%rbp), %rax
	movb	$0, 2(%rax)
.L2586:
	.loc 5 565 10
	movq	-56(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 565 4
	testb	%al, %al
	je	.L2587
	.loc 5 565 29 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	19(%rax), %eax
	.loc 5 565 21 discriminator 1
	testb	%al, %al
	je	.L2587
	.loc 5 567 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	saveState
	.loc 5 568 3
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC148(%rip), %rdi
	call	alertMessage
.L2587:
	.loc 5 570 10
	movq	-56(%rbp), %rax
	movzbl	39(%rax), %eax
	.loc 5 570 4
	testb	%al, %al
	je	.L2588
	.loc 5 570 29 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	19(%rax), %eax
	.loc 5 570 21 discriminator 1
	testb	%al, %al
	je	.L2588
	.loc 5 572 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	loadState
	.loc 5 573 3
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC149(%rip), %rdi
	call	alertMessage
.L2588:
	.loc 5 575 10
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 575 4
	cmpl	$4, %eax
	jne	.L2589
	.loc 5 577 11
	movq	-56(%rbp), %rax
	movzbl	26(%rax), %eax
	.loc 5 577 5
	testb	%al, %al
	je	.L2590
	.loc 5 579 16
	movq	-64(%rbp), %rax
	movl	$0, 11836(%rax)
	jmp	.L2590
.L2589:
	.loc 5 582 15
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 582 9
	testl	%eax, %eax
	jne	.L2591
	.loc 5 584 11
	movq	-56(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 5 584 5
	testb	%al, %al
	je	.L2592
	.loc 5 586 24
	movq	-64(%rbp), %rax
	movss	11760(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 5 586 41
	movq	-56(%rbp), %rax
	movsd	64(%rax), %xmm2
	.loc 5 586 34
	movsd	.LC150(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 5 586 24
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11760(%rax)
	.loc 5 587 24
	movq	-64(%rbp), %rax
	movss	11764(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 5 587 41
	movq	-56(%rbp), %rax
	movsd	72(%rax), %xmm2
	.loc 5 587 34
	movsd	.LC150(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	.loc 5 587 24
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11764(%rax)
.L2592:
	.loc 5 590 11
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 5 590 5
	testb	%al, %al
	je	.L2593
	.loc 5 592 4
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
	.loc 5 593 25
	movq	-64(%rbp), %rax
	movl	$0, 11828(%rax)
.L2593:
	.loc 5 595 11
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 5 595 5
	testb	%al, %al
	je	.L2594
	.loc 5 597 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2594:
	.loc 5 599 11
	movq	-56(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 5 599 5
	testb	%al, %al
	je	.L2595
	.loc 5 599 30 discriminator 1
	movq	-64(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 599 22 discriminator 1
	cmpl	$-1, %eax
	je	.L2595
	.loc 5 601 16
	movq	-64(%rbp), %rax
	movl	$1, 11836(%rax)
.L2595:
	.loc 5 603 11
	movq	-56(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 603 5
	testb	%al, %al
	je	.L2596
	.loc 5 603 30 discriminator 1
	movq	-64(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 603 22 discriminator 1
	cmpl	$-1, %eax
	je	.L2596
	.loc 5 605 16
	movq	-64(%rbp), %rax
	movl	$2, 11836(%rax)
.L2596:
	.loc 5 607 11
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 607 5
	testb	%al, %al
	je	.L2597
	.loc 5 609 24
	movq	-64(%rbp), %rax
	movss	11764(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 5 609 32
	movq	-64(%rbp), %rax
	movsd	11856(%rax), %xmm1
	.loc 5 609 24
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11764(%rax)
.L2597:
	.loc 5 611 11
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	.loc 5 611 5
	testb	%al, %al
	je	.L2598
	.loc 5 613 24
	movq	-64(%rbp), %rax
	movss	11760(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 5 613 32
	movq	-64(%rbp), %rax
	movsd	11856(%rax), %xmm0
	.loc 5 613 24
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11760(%rax)
.L2598:
	.loc 5 615 11
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	.loc 5 615 5
	testb	%al, %al
	je	.L2599
	.loc 5 617 24
	movq	-64(%rbp), %rax
	movss	11764(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 5 617 32
	movq	-64(%rbp), %rax
	movsd	11856(%rax), %xmm0
	.loc 5 617 24
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11764(%rax)
.L2599:
	.loc 5 619 11
	movq	-56(%rbp), %rax
	movzbl	3(%rax), %eax
	.loc 5 619 5
	testb	%al, %al
	je	.L2600
	.loc 5 621 24
	movq	-64(%rbp), %rax
	movss	11760(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 5 621 32
	movq	-64(%rbp), %rax
	movsd	11856(%rax), %xmm1
	.loc 5 621 24
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11760(%rax)
.L2600:
	.loc 5 623 11
	movq	-56(%rbp), %rax
	movzbl	26(%rax), %eax
	.loc 5 623 5
	testb	%al, %al
	je	.L2590
	.loc 5 624 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	turn
	jmp	.L2590
.L2591:
	.loc 5 626 15
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 626 9
	cmpl	$1, %eax
	jne	.L2601
	.loc 5 628 11
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 5 628 5
	testb	%al, %al
	je	.L2602
	.loc 5 629 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2602:
	.loc 5 631 11
	movq	-56(%rbp), %rax
	movzbl	27(%rax), %eax
	.loc 5 631 5
	testb	%al, %al
	jne	.L2603
	.loc 5 631 34 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	37(%rax), %eax
	.loc 5 631 26 discriminator 1
	testb	%al, %al
	je	.L2604
.L2603:
	.loc 5 633 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	moveSelectedUnit
	.loc 5 634 25
	movq	-64(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 634 41
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10224, %rax
	movl	(%rax), %eax
	.loc 5 634 6
	testl	%eax, %eax
	jne	.L2604
	.loc 5 635 5
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2604:
	.loc 5 643 11
	movq	-56(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 643 5
	testb	%al, %al
	je	.L2605
	.loc 5 645 14
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 644 4
	leal	1(%rax), %esi
	.loc 5 644 23
	movq	-64(%rbp), %rax
	movl	11820(%rax), %edx
	.loc 5 644 42
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 644 53
	addl	$1, %eax
	.loc 5 644 58
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	.loc 5 644 4
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	setMoveCursor
.L2605:
	.loc 5 648 11
	movq	-56(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 648 5
	testb	%al, %al
	je	.L2606
	.loc 5 650 14
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 649 4
	leal	-1(%rax), %esi
	.loc 5 649 23
	movq	-64(%rbp), %rax
	movl	11820(%rax), %ecx
	.loc 5 649 41
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 649 52
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	.loc 5 649 4
	addl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	setMoveCursor
.L2606:
	.loc 5 653 11
	movq	-56(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 653 5
	testb	%al, %al
	je	.L2607
	.loc 5 654 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 654 23
	movq	-64(%rbp), %rdx
	movl	11820(%rdx), %edx
	.loc 5 654 4
	leal	-1(%rdx), %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	setMoveCursor
.L2607:
	.loc 5 656 11
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 656 5
	testb	%al, %al
	je	.L2608
	.loc 5 657 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 657 23
	movq	-64(%rbp), %rdx
	movl	11820(%rdx), %edx
	.loc 5 657 4
	leal	1(%rdx), %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	setMoveCursor
.L2608:
	.loc 5 659 11
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 5 659 5
	testb	%al, %al
	je	.L2609
	.loc 5 660 4
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
	.loc 5 661 25
	movq	-64(%rbp), %rax
	movl	$0, 11828(%rax)
.L2609:
	.loc 5 663 11
	movq	-56(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 663 5
	testb	%al, %al
	je	.L2590
	.loc 5 663 30 discriminator 1
	movq	-64(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 663 22 discriminator 1
	cmpl	$-1, %eax
	je	.L2590
	.loc 5 665 16
	movq	-64(%rbp), %rax
	movl	$2, 11836(%rax)
	.loc 5 666 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	setMoveCursor
	jmp	.L2590
.L2601:
	.loc 5 670 15
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 670 9
	cmpl	$2, %eax
	jne	.L2610
	.loc 5 672 11
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 5 672 5
	testb	%al, %al
	je	.L2611
	.loc 5 674 4
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
	.loc 5 675 25
	movq	-64(%rbp), %rax
	movl	$0, 11828(%rax)
	.loc 5 676 25
	movq	-64(%rbp), %rax
	movl	$0, 11828(%rax)
.L2611:
	.loc 5 678 11
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 5 678 5
	testb	%al, %al
	je	.L2612
	.loc 5 679 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2612:
	.loc 5 681 11
	movq	-56(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 5 681 5
	testb	%al, %al
	je	.L2613
	.loc 5 681 30 discriminator 1
	movq	-64(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 5 681 22 discriminator 1
	cmpl	$-1, %eax
	je	.L2613
	.loc 5 682 16
	movq	-64(%rbp), %rax
	movl	$1, 11836(%rax)
	.loc 5 683 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	setMoveCursor
.L2613:
	.loc 5 685 11
	movq	-56(%rbp), %rax
	movzbl	27(%rax), %eax
	.loc 5 685 5
	testb	%al, %al
	jne	.L2614
	.loc 5 685 34 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	37(%rax), %eax
	.loc 5 685 26 discriminator 1
	testb	%al, %al
	je	.L2615
.L2614:
	.loc 5 686 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	attackSelectedUnit
.L2615:
	.loc 5 688 11
	movq	-56(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 688 5
	testb	%al, %al
	je	.L2616
	.loc 5 690 14
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 689 4
	leal	1(%rax), %esi
	.loc 5 689 23
	movq	-64(%rbp), %rax
	movl	11820(%rax), %edx
	.loc 5 689 42
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 689 53
	addl	$1, %eax
	.loc 5 689 58
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	.loc 5 689 4
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	setMoveCursor
.L2616:
	.loc 5 693 11
	movq	-56(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 693 5
	testb	%al, %al
	je	.L2617
	.loc 5 695 14
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 694 4
	leal	-1(%rax), %esi
	.loc 5 694 23
	movq	-64(%rbp), %rax
	movl	11820(%rax), %ecx
	.loc 5 694 41
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 694 52
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	.loc 5 694 4
	addl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	setMoveCursor
.L2617:
	.loc 5 698 11
	movq	-56(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 698 5
	testb	%al, %al
	je	.L2618
	.loc 5 699 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 699 23
	movq	-64(%rbp), %rdx
	movl	11820(%rdx), %edx
	.loc 5 699 4
	leal	-1(%rdx), %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	setMoveCursor
.L2618:
	.loc 5 701 11
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 701 5
	testb	%al, %al
	je	.L2590
	.loc 5 702 4
	movq	-64(%rbp), %rax
	movl	11824(%rax), %eax
	.loc 5 702 23
	movq	-64(%rbp), %rdx
	movl	11820(%rdx), %edx
	.loc 5 702 4
	leal	1(%rdx), %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	setMoveCursor
	jmp	.L2590
.L2610:
	.loc 5 704 15
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 704 9
	cmpl	$3, %eax
	jne	.L2590
	.loc 5 706 11
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 5 706 5
	testb	%al, %al
	je	.L2619
	.loc 5 708 4
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
	.loc 5 709 25
	movq	-64(%rbp), %rax
	movl	$0, 11828(%rax)
.L2619:
	.loc 5 711 11
	movq	-56(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 5 711 5
	testb	%al, %al
	je	.L2620
	.loc 5 713 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	step
.L2620:
	.loc 5 716 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 715 6
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10016, %rax
	movl	(%rax), %ecx
	.loc 5 715 35
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 715 6
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	.loc 5 715 5
	cmpl	$-1, %eax
	jne	.L2621
	.loc 5 720 29
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 719 4
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10016, %rax
	movl	(%rax), %ecx
	.loc 5 719 38
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 719 4
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	isInMapBounds
	.loc 5 718 4
	testl	%eax, %eax
	je	.L2621
	.loc 5 723 12
	movq	-56(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 5 723 6
	testb	%al, %al
	je	.L2622
	.loc 5 728 28
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 728 35
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %eax
	.loc 5 728 7
	cmpl	$49, %eax
	jle	.L2623
	.loc 5 730 6
	movq	-64(%rbp), %rax
	movl	11800(%rax), %edx
	.loc 5 731 31
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 730 6
	movq	-64(%rbp), %rsi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10016, %rax
	movl	(%rax), %esi
	.loc 5 730 37
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 730 6
	movq	-64(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %edi
	call	createWisp
	.loc 5 734 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 734 48
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %edx
	.loc 5 734 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 734 48
	leal	-50(%rdx), %ecx
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	%ecx, (%rax)
	.loc 5 723 6
	jmp	.L2636
.L2623:
	.loc 5 738 6
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC151(%rip), %rdi
	call	alertMessage
	.loc 5 723 6
	jmp	.L2636
.L2622:
	.loc 5 741 17
	movq	-56(%rbp), %rax
	movzbl	34(%rax), %eax
	.loc 5 741 11
	testb	%al, %al
	je	.L2625
	.loc 5 744 28
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 744 35
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %eax
	.loc 5 744 7
	cmpl	$99, %eax
	jle	.L2626
	.loc 5 746 6
	movq	-64(%rbp), %rax
	movl	11800(%rax), %edx
	.loc 5 747 32
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 746 6
	movq	-64(%rbp), %rsi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10016, %rax
	movl	(%rax), %esi
	.loc 5 746 38
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 746 6
	movq	-64(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %edi
	call	createGolem
	.loc 5 750 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 750 48
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %edx
	.loc 5 750 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 750 48
	leal	-100(%rdx), %ecx
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	%ecx, (%rax)
	.loc 5 723 6
	jmp	.L2636
.L2626:
	.loc 5 754 6
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC151(%rip), %rdi
	call	alertMessage
	.loc 5 723 6
	jmp	.L2636
.L2625:
	.loc 5 757 17
	movq	-56(%rbp), %rax
	movzbl	35(%rax), %eax
	.loc 5 757 11
	testb	%al, %al
	je	.L2636
	.loc 5 759 28
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 759 35
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %eax
	.loc 5 759 7
	cmpl	$99, %eax
	jle	.L2627
	.loc 5 761 6
	movq	-64(%rbp), %rax
	movl	11800(%rax), %edx
	.loc 5 762 34
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 761 6
	movq	-64(%rbp), %rsi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10016, %rax
	movl	(%rax), %esi
	.loc 5 761 49
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 761 6
	movq	-64(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %edi
	call	createUnboundElemental
	.loc 5 765 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 765 48
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10000, %rax
	movl	(%rax), %edx
	.loc 5 765 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 765 48
	leal	-100(%rdx), %ecx
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	%ecx, (%rax)
	.loc 5 723 6
	jmp	.L2636
.L2627:
	.loc 5 769 6
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC151(%rip), %rdi
	call	alertMessage
	.loc 5 723 6
	jmp	.L2636
.L2621:
	.loc 5 774 26
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 773 11
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10016, %rax
	movl	(%rax), %ecx
	.loc 5 773 40
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 773 11
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10012, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	.loc 5 773 10
	cmpl	$-1, %eax
	je	.L2628
	.loc 5 775 28
	movq	-56(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 5 775 19
	testb	%al, %al
	jne	.L2629
	.loc 5 775 47 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	34(%rax), %eax
	.loc 5 775 39 discriminator 1
	testb	%al, %al
	jne	.L2629
	.loc 5 776 16 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	35(%rax), %eax
	.loc 5 775 58 discriminator 2
	testb	%al, %al
	je	.L2628
.L2629:
	.loc 5 777 4
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movss	.LC136(%rip), %xmm0
	leaq	.LC152(%rip), %rdi
	call	alertMessage
	jmp	.L2628
.L2636:
	.loc 5 723 6
	nop
.L2628:
	.loc 5 779 11
	movq	-56(%rbp), %rax
	movzbl	36(%rax), %eax
	.loc 5 779 5
	testb	%al, %al
	je	.L2590
	.loc 5 781 4
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	startArcanePulse
.L2590:
	.loc 5 785 11
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 785 4
	cmpl	$2, %eax
	je	.L2630
	.loc 5 785 41 discriminator 2
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 785 33 discriminator 2
	cmpl	$1, %eax
	jne	.L2631
.L2630:
	.loc 5 786 8 discriminator 3
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 785 62 discriminator 3
	cmpl	$4, %eax
	je	.L2631
.LBB1642:
	.loc 5 790 3
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	mouseCoordsToViewport@PLT
	.loc 5 791 3
	movq	-64(%rbp), %rax
	movss	11784(%rax), %xmm3
	movq	-64(%rbp), %rax
	movss	11764(%rax), %xmm2
	movq	-64(%rbp), %rax
	movss	11760(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	movl	-8(%rbp), %eax
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	viewportToHexGrid@PLT
	.loc 5 795 3
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	setMoveCursor
.L2631:
.LBE1642:
	.loc 5 798 10
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 798 4
	cmpl	$2, %eax
	je	.L2632
	.loc 5 799 10 discriminator 1
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 798 32 discriminator 1
	cmpl	$1, %eax
	je	.L2632
	.loc 5 800 10
	movq	-64(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 5 799 30
	cmpl	$4, %eax
	je	.L2632
	.loc 5 802 11
	movq	-56(%rbp), %rax
	movzbl	37(%rax), %eax
	.loc 5 802 5
	testb	%al, %al
	je	.L2632
.LBB1643:
	.loc 5 806 4
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	mouseCoordsToViewport@PLT
	.loc 5 807 4
	movq	-64(%rbp), %rax
	movss	11784(%rax), %xmm3
	movq	-64(%rbp), %rax
	movss	11764(%rax), %xmm2
	movq	-64(%rbp), %rax
	movss	11760(%rax), %xmm1
	movss	-28(%rbp), %xmm0
	movl	-24(%rbp), %eax
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	viewportToHexGrid@PLT
	.loc 5 811 17
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	movl	%eax, -4(%rbp)
	.loc 5 812 6
	cmpl	$-1, -4(%rbp)
	je	.L2633
	.loc 5 812 41 discriminator 1
	movq	-64(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %edx
	.loc 5 812 55 discriminator 1
	movq	-64(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 5 812 18 discriminator 1
	cmpl	%eax, %edx
	jne	.L2633
	.loc 5 814 5
	movq	-64(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	selectUnit
	jmp	.L2632
.L2633:
	.loc 5 818 5
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$-1, %edi
	call	selectUnit
.L2632:
.LBE1643:
	.loc 5 824 22
	movq	-64(%rbp), %rax
	movss	11784(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 5 824 35
	movq	-56(%rbp), %rax
	movsd	80(%rax), %xmm2
	.loc 5 824 29
	movsd	.LC153(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 5 824 22
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, 11784(%rax)
	.loc 5 825 22
	movq	-56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 80(%rax)
	.loc 5 827 37
	movq	-64(%rbp), %rax
	movss	11784(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 5 827 52
	movsd	.LC155(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	.loc 5 827 29
	movsd	.LC156(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 5 827 22
	movq	-64(%rbp), %rax
	movss	%xmm0, 11768(%rax)
	.loc 5 828 37
	movq	-64(%rbp), %rax
	movss	11784(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 5 828 52
	movsd	.LC155(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	.loc 5 828 29
	movsd	.LC157(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 5 828 22
	movq	-64(%rbp), %rax
	movss	%xmm0, 11772(%rax)
	.loc 5 829 2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	clampHexSize
	.loc 5 830 2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	clampMapOffset
	jmp	.L2580
.L2635:
	.loc 5 556 3
	nop
.L2580:
	.loc 5 831 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	processInput, .-processInput
	.globl	generateTestMap
	.type	generateTestMap, @function
generateTestMap:
.LFB749:
	.loc 5 837 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 839 16
	movq	-24(%rbp), %rax
	movl	$20, 11752(%rax)
	.loc 5 840 19
	movq	-24(%rbp), %rax
	movl	$20, 11756(%rax)
	.loc 5 842 8
	movl	$0, -4(%rbp)
	.loc 5 842 2
	jmp	.L2638
.L2641:
	.loc 5 844 9
	movl	$0, -8(%rbp)
	.loc 5 844 3
	jmp	.L2639
.L2640:
	.loc 5 846 29 discriminator 3
	movq	-24(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$1, (%rax)
	.loc 5 844 34 discriminator 3
	addl	$1, -8(%rbp)
.L2639:
	.loc 5 844 23 discriminator 1
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 844 3 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L2640
	.loc 5 842 33 discriminator 2
	addl	$1, -4(%rbp)
.L2638:
	.loc 5 842 22 discriminator 1
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 842 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2641
	.loc 5 849 27
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 5 850 27
	movq	-24(%rbp), %rax
	movb	$0, 100(%rax)
	.loc 5 851 27
	movq	-24(%rbp), %rax
	movb	$0, 1(%rax)
	.loc 5 852 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 852 34
	leal	-1(%rax), %edx
	.loc 5 852 43
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 852 51
	subl	$1, %eax
	.loc 5 852 55
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, (%rax)
	.loc 5 853 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 853 34
	leal	-2(%rax), %edx
	.loc 5 853 43
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 853 51
	subl	$1, %eax
	.loc 5 853 55
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, (%rax)
	.loc 5 854 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 854 34
	leal	-1(%rax), %edx
	.loc 5 854 43
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 854 51
	subl	$2, %eax
	.loc 5 854 55
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$0, (%rax)
	.loc 5 855 27
	movq	-24(%rbp), %rax
	movb	$2, 303(%rax)
	.loc 5 856 27
	movq	-24(%rbp), %rax
	movb	$2, 108(%rax)
	.loc 5 857 27
	movq	-24(%rbp), %rax
	movb	$2, 801(%rax)
	.loc 5 858 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 858 39
	leal	-4(%rax), %edx
	.loc 5 858 49
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 858 62
	subl	$4, %eax
	.loc 5 858 67
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$2, (%rax)
	.loc 5 859 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 859 39
	leal	-2(%rax), %edx
	.loc 5 859 49
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 859 62
	subl	$9, %eax
	.loc 5 859 67
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$2, (%rax)
	.loc 5 860 26
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 860 39
	leal	-9(%rax), %edx
	.loc 5 860 49
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 860 62
	subl	$2, %eax
	.loc 5 860 67
	movq	-24(%rbp), %rsi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movb	$2, (%rax)
	.loc 5 861 29
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 861 42
	subl	$4, %eax
	.loc 5 861 47
	movq	-24(%rbp), %rdx
	cltq
	movb	$4, 300(%rdx,%rax)
	.loc 5 862 29
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 862 42
	subl	$6, %eax
	.loc 5 862 47
	movq	-24(%rbp), %rdx
	cltq
	movb	$5, 500(%rdx,%rax)
	.loc 5 863 29
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 863 42
	subl	$8, %eax
	.loc 5 863 47
	movq	-24(%rbp), %rdx
	cltq
	movb	$6, 700(%rdx,%rax)
	.loc 5 865 2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	createWorkshop
	.loc 5 866 33
	movq	-24(%rbp), %rax
	movl	$1, 10012(%rax)
	.loc 5 867 33
	movq	-24(%rbp), %rax
	movl	$2, 10016(%rax)
	.loc 5 868 2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$2, %edi
	call	createGolem
	.loc 5 870 41
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 870 2
	leal	-2(%rax), %esi
	.loc 5 870 22
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 870 2
	leal	-2(%rax), %edi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	call	createWorkshop
	.loc 5 871 40
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 871 48
	leal	-2(%rax), %edx
	.loc 5 871 33
	movq	-24(%rbp), %rax
	movl	%edx, 10036(%rax)
	.loc 5 872 40
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 872 48
	leal	-3(%rax), %edx
	.loc 5 872 33
	movq	-24(%rbp), %rax
	movl	%edx, 10040(%rax)
	.loc 5 873 38
	movq	-24(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 5 873 2
	leal	-3(%rax), %esi
	.loc 5 873 19
	movq	-24(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 5 873 2
	leal	-1(%rax), %edi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	call	createGolem
	.loc 5 875 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	generateTestMap, .-generateTestMap
	.globl	loadColors
	.type	loadColors, @function
loadColors:
.LFB750:
	.file 6 "colors.c"
	.loc 6 28 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	.loc 6 29 10
	pxor	%xmm0, %xmm0
	movss	%xmm0, -144(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -140(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -136(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC158(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC159(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC160(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC161(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC132(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC159(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC159(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC159(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC162(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC162(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC162(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC163(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC164(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC164(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC165(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC160(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC132(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC132(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC160(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC132(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC166(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC167(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC167(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 6 44 12
	movl	$144, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 6 44 10
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 6 45 2
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	leaq	-144(%rbp), %rcx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 6 47 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	loadColors, .-loadColors
	.globl	getColor
	.type	getColor, @function
getColor:
.LFB751:
	.loc 6 50 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 6 51 24
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 6 51 16
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 6 52 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	getColor, .-getColor
	.globl	getUnitTypeColor
	.type	getUnitTypeColor, @function
getUnitTypeColor:
.LFB752:
	.loc 6 55 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 6 56 9
	movl	$0, %eax
	.loc 6 57 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	getUnitTypeColor, .-getUnitTypeColor
	.globl	getUnitTeamColor
	.type	getUnitTeamColor, @function
getUnitTeamColor:
.LFB753:
	.loc 6 60 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 6 61 4
	cmpl	$0, -4(%rbp)
	jne	.L2648
	.loc 6 62 10
	movl	$2, %eax
	jmp	.L2649
.L2648:
	.loc 6 63 9
	cmpl	$1, -4(%rbp)
	jne	.L2650
	.loc 6 64 10
	movl	$3, %eax
	jmp	.L2649
.L2650:
	.loc 6 66 10
	movl	$9, %eax
.L2649:
	.loc 6 67 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	getUnitTeamColor, .-getUnitTeamColor
	.globl	getUnitTexCoords
	.type	getUnitTexCoords, @function
getUnitTexCoords:
.LFB754:
	.loc 6 70 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 6 73 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	getUnitTexCoords, .-getUnitTexCoords
	.globl	createGLObject
	.type	createGLObject, @function
createGLObject:
.LFB755:
	.file 7 "gl_object.c"
	.loc 7 35 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 7 36 7
	movl	$48, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 7 36 5
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 7 37 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 37 22
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 7 38 19
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	.loc 7 38 3
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rbx
	.loc 7 38 19
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 7 38 17
	movq	%rax, (%rbx)
	.loc 7 39 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 39 16
	movl	$1, 24(%rax)
	.loc 7 40 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 40 21
	movl	$6, 44(%rax)
	.loc 7 41 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 41 13
	movq	$0, 32(%rax)
	.loc 7 42 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 42 13
	movq	$0, 16(%rax)
	.loc 7 43 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	createGLObject, .-createGLObject
	.globl	createGLObjectEmpty
	.type	createGLObjectEmpty, @function
createGLObjectEmpty:
.LFB756:
	.loc 7 46 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 7 47 7
	movl	$48, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 7 47 5
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 7 48 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 48 22
	movl	$0, 8(%rax)
	.loc 7 49 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 49 16
	movl	$1, 24(%rax)
	.loc 7 50 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 50 21
	movl	$6, 44(%rax)
	.loc 7 51 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 51 13
	movq	$0, 32(%rax)
	.loc 7 52 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 52 13
	movq	$0, 16(%rax)
	.loc 7 53 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	createGLObjectEmpty, .-createGLObjectEmpty
	.globl	addGLObject
	.type	addGLObject, @function
addGLObject:
.LFB757:
	.loc 7 56 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 7 57 6
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 57 4
	testq	%rax, %rax
	jne	.L2655
	.loc 7 59 10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 7 69 1
	jmp	.L2658
.L2655:
	.loc 7 61 11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 61 16
	movq	16(%rax), %rax
	.loc 7 61 9
	testq	%rax, %rax
	jne	.L2657
	.loc 7 63 4
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 63 16
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 7 69 1
	jmp	.L2658
.L2657:
	.loc 7 67 22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 67 20
	leaq	16(%rax), %rdx
	.loc 7 67 3
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2658:
	.loc 7 69 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	addGLObject, .-addGLObject
	.globl	removeGLObject
	.type	removeGLObject, @function
removeGLObject:
.LFB758:
	.loc 7 74 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 7 75 4
	cmpq	$0, -24(%rbp)
	je	.L2667
	.loc 7 75 18 discriminator 2
	cmpq	$0, -32(%rbp)
	je	.L2667
	.loc 7 76 13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 7 77 4
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L2664
	.loc 7 79 17
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 7 79 9
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 7 80 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2659
.L2666:
	.loc 7 86 11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 7 86 6
	cmpq	%rax, -32(%rbp)
	jne	.L2665
	.loc 7 88 24
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 7 88 16
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 7 89 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2665:
	.loc 7 91 9
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L2664:
	.loc 7 84 8
	cmpq	$0, -8(%rbp)
	jne	.L2666
	jmp	.L2659
.L2667:
	.loc 7 75 37
	nop
.L2659:
	.loc 7 94 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	removeGLObject, .-removeGLObject
	.section	.rodata
	.align 8
.LC168:
	.string	"gl_object: %x\nvertex_size: %d\nnext:%x\n"
	.text
	.globl	printGLObject
	.type	printGLObject, @function
printGLObject:
.LFB759:
	.loc 7 97 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 7 98 2
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC168(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 103 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	printGLObject, .-printGLObject
	.section	.rodata
.LC169:
	.string	"Printing object list: "
.LC170:
	.string	"%d."
	.text
	.globl	printGLObjectList
	.type	printGLObjectList, @function
printGLObjectList:
.LFB760:
	.loc 7 106 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 7 107 2
	leaq	.LC169(%rip), %rdi
	call	puts@PLT
	.loc 7 108 6
	movl	$0, -4(%rbp)
	.loc 7 109 7
	jmp	.L2670
.L2671:
	.loc 7 111 3
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC170(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 112 4
	addl	$1, -4(%rbp)
	.loc 7 113 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	printGLObject
	.loc 7 114 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 7 115 8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L2670:
	.loc 7 109 7
	cmpq	$0, -24(%rbp)
	jne	.L2671
	.loc 7 117 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	printGLObjectList, .-printGLObjectList
	.globl	updateText
	.type	updateText, @function
updateText:
.LFB761:
	.file 8 "text.c"
	.loc 8 17 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movq	%rsi, -56(%rbp)
	.loc 8 19 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 8 19 6
	movl	%eax, -20(%rbp)
	.loc 8 21 2
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	createGLObject
	.loc 8 22 8
	movq	-32(%rbp), %rax
	.loc 8 22 22
	movl	$4, 40(%rax)
	.loc 8 23 37
	movl	-20(%rbp), %eax
	addl	$1, %eax
	.loc 8 23 17
	cltq
	.loc 8 23 8
	movq	-32(%rbp), %rbx
	.loc 8 23 17
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 8 23 15
	movq	%rax, 32(%rbx)
	.loc 8 24 15
	movq	-32(%rbp), %rax
	.loc 8 24 2
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 8 26 22
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdx
	.loc 8 26 2
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
	.loc 8 27 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 27 22
	movss	-44(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 28 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 28 18
	addq	$4, %rax
	.loc 8 28 22
	movss	-48(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 29 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 29 18
	addq	$8, %rax
	.loc 8 29 22
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 30 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	updateText, .-updateText
	.globl	updateTextAlpha
	.type	updateTextAlpha, @function
updateTextAlpha:
.LFB762:
	.loc 8 33 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 8 35 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 8 35 6
	movl	%eax, -20(%rbp)
	.loc 8 37 2
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	createGLObject
	.loc 8 38 8
	movq	-32(%rbp), %rax
	.loc 8 38 22
	movl	$4, 40(%rax)
	.loc 8 39 37
	movl	-20(%rbp), %eax
	addl	$1, %eax
	.loc 8 39 17
	cltq
	.loc 8 39 8
	movq	-32(%rbp), %rbx
	.loc 8 39 17
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 8 39 15
	movq	%rax, 32(%rbx)
	.loc 8 40 15
	movq	-32(%rbp), %rax
	.loc 8 40 2
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 8 42 22
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	.loc 8 42 2
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
	.loc 8 43 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 43 22
	movss	-44(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 44 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 44 18
	addq	$4, %rax
	.loc 8 44 22
	movss	-48(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 45 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 45 18
	addq	$8, %rax
	.loc 8 45 22
	movss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 8 46 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	updateTextAlpha, .-updateTextAlpha
	.section	.rodata
.LC172:
	.string	"%.1f MS, %.0f FPS"
.LC174:
	.string	"Player turn: %d"
.LC176:
	.string	"Turn count: %d"
.LC178:
	.string	"Your essence: %d (+%d)"
.LC180:
	.string	"Enemy Pulse: not detected"
.LC181:
	.string	"Enemy Pulse: %d turns left"
.LC183:
	.string	"Your Pulse: not detected"
.LC184:
	.string	"Your Pulse: %d turns left"
.LC186:
	.string	"Unit type: %s"
.LC188:
	.string	"Health points left: %d/%d"
.LC190:
	.string	"Movement points: %d/%d"
.LC192:
	.string	"Attack damage: %d"
	.align 8
.LC194:
	.string	"Options: TAB-CycleUnits, V-Move, T-Attack"
	.align 8
.LC195:
	.string	"Options: TAB-CycleUnits, B-Build, ESC-ExitBuild"
	.align 8
.LC196:
	.string	"1-Wisp(50 E), 2-Golem(100 E), 3-Unbound Elemental(100 E), 4-Arcane Pulse(600 E)"
	.align 8
.LC199:
	.string	"Press ENTER to start your turn"
.LC201:
	.string	"Press H to see key bindings.."
.LC203:
	.string	"Help menu"
.LC205:
	.string	"General:"
	.align 8
.LC206:
	.string	"H - Help menu, ESC(hold) - Exit game, CTRL+S - Save, CTRL+L - Load"
	.align 8
.LC208:
	.string	"Normal mode (no unit selected):"
	.align 8
.LC209:
	.string	"WASD/LeftClick - Move camera, TAB - Select next unit, ENTER - End your turn"
.LC210:
	.string	"Normal mode (unit selected):"
	.align 8
.LC211:
	.string	"T - Attack mode, V - Move mode"
.LC212:
	.string	"Move mode:"
	.align 8
.LC213:
	.string	"WASD/Mouse - move cursor, Click/Space - confirm movement"
.LC214:
	.string	"Attack mode:"
	.align 8
.LC216:
	.string	"WASD/Mouse - move attack cursor, Click/Space - confirm attack"
	.align 8
.LC218:
	.string	"Build mode (workshop selected):"
	.align 8
.LC220:
	.string	"1 - Wisp, 2 - Golem, 3 - Unbound Elemental, 4 - Arcane Pulse"
	.text
	.globl	updateTexts
	.type	updateTexts, @function
updateTexts:
.LFB763:
	.loc 8 51 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 8 52 7
	jmp	.L2675
.L2676:
	.loc 8 54 51
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	.loc 8 54 18
	movq	-224(%rbp), %rdx
	addq	$16, %rdx
	.loc 8 54 3
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	removeGLObject
.L2675:
	.loc 8 52 16
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	.loc 8 52 7
	testq	%rax, %rax
	jne	.L2676
	.loc 8 59 11
	movq	-216(%rbp), %rax
	movsd	11856(%rax), %xmm1
	.loc 8 57 2
	movsd	.LC114(%rip), %xmm0
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	.loc 8 58 9
	movq	-216(%rbp), %rax
	movsd	11856(%rax), %xmm1
	.loc 8 57 2
	movsd	.LC171(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	leaq	-208(%rbp), %rax
	movapd	%xmm2, %xmm1
	movq	%rdx, %xmm0
	leaq	.LC172(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$2, %eax
	call	snprintf@PLT
	.loc 8 60 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC173(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 62 52
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 62 2
	movl	11800(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC174(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 63 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC175(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 65 48
	movq	-216(%rbp), %rax
	movl	11804(%rax), %eax
	.loc 8 65 66
	movq	-216(%rbp), %rdx
	movl	11796(%rdx), %ecx
	.loc 8 65 2
	cltd
	idivl	%ecx
	movl	%eax, %edx
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC176(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 66 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC177(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 70 24
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 68 2
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10004, %rax
	movl	(%rax), %ecx
	.loc 8 69 24
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 68 2
	movq	-216(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$10000, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	.LC178(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 71 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC179(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 73 26
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 73 32
	addl	$1, %eax
	.loc 8 73 35
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	.loc 8 73 38
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 8 73 4
	cmpl	$-1, %eax
	jne	.L2677
	.loc 8 74 3
	leaq	-208(%rbp), %rax
	leaq	.LC180(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	jmp	.L2678
.L2677:
	.loc 8 76 77
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 76 83
	addl	$1, %eax
	.loc 8 76 86
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	.loc 8 76 3
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC181(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
.L2678:
	.loc 8 77 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC182(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 79 25
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 79 32
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %eax
	.loc 8 79 4
	cmpl	$-1, %eax
	jne	.L2679
	.loc 8 80 3
	leaq	-208(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	jmp	.L2680
.L2679:
	.loc 8 82 75
	movq	-216(%rbp), %rax
	movl	11800(%rax), %eax
	.loc 8 82 3
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$10008, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC184(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
.L2680:
	.loc 8 83 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC185(%rip), %xmm1
	movss	.LC158(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 85 6
	movl	$-1, -4(%rbp)
	.loc 8 86 10
	movq	-216(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 8 86 4
	cmpl	$-1, %eax
	je	.L2681
	.loc 8 87 18
	movq	-216(%rbp), %rax
	movl	11812(%rax), %eax
	movl	%eax, -4(%rbp)
.L2681:
	.loc 8 88 10
	movq	-216(%rbp), %rax
	movl	11816(%rax), %eax
	.loc 8 88 4
	cmpl	$-1, %eax
	je	.L2682
	.loc 8 89 18
	movq	-216(%rbp), %rax
	movl	11816(%rax), %eax
	movl	%eax, -4(%rbp)
.L2682:
	.loc 8 91 4
	cmpl	$-1, -4(%rbp)
	je	.L2683
	.loc 8 94 13
	movq	-224(%rbp), %rax
	movq	(%rax), %rcx
	.loc 8 94 61
	movq	-216(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 8 94 32
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$11584, %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rdx
	.loc 8 93 3
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC186(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 95 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC173(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 97 3
	movq	-216(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10196, %rax
	movl	(%rax), %ecx
	movq	-216(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10192, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	.LC188(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 101 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC189(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 104 34
	movq	-216(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10208, %rax
	movl	(%rax), %eax
	.loc 8 104 5
	testl	%eax, %eax
	je	.L2684
	.loc 8 106 4
	movq	-216(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10228, %rax
	movl	(%rax), %ecx
	movq	-216(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	.LC190(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 110 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC191(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 112 4
	movq	-216(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10220, %rax
	movl	(%rax), %edx
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC192(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 115 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC193(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 117 4
	leaq	-208(%rbp), %rax
	leaq	.LC194(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 118 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC185(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	jmp	.L2683
.L2684:
	.loc 8 122 4
	leaq	-208(%rbp), %rax
	leaq	.LC195(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 123 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC191(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 125 4
	leaq	-208(%rbp), %rax
	leaq	.LC196(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 127 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC193(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
.L2683:
	.loc 8 131 10
	movq	-216(%rbp), %rax
	movss	11844(%rax), %xmm0
	.loc 8 131 4
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L2685
	.loc 8 133 26
	movq	-216(%rbp), %rax
	movss	11844(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	.loc 8 133 34
	movq	-216(%rbp), %rax
	movsd	11856(%rax), %xmm1
	.loc 8 133 26
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, 11844(%rax)
	.loc 8 135 16
	movq	-216(%rbp), %rax
	leaq	11392(%rax), %rdx
	.loc 8 134 3
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC134(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 137 12
	movq	-216(%rbp), %rax
	movss	11844(%rax), %xmm0
	.loc 8 137 35
	movq	-216(%rbp), %rax
	movss	11848(%rax), %xmm1
	.loc 8 136 3
	divss	%xmm1, %xmm0
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movaps	%xmm0, %xmm2
	movss	.LC197(%rip), %xmm1
	movss	.LC198(%rip), %xmm0
	movq	%rax, %rdi
	call	updateTextAlpha
.L2685:
	.loc 8 141 10
	movq	-216(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 8 141 4
	cmpl	$4, %eax
	jne	.L2687
	.loc 8 143 3
	leaq	-208(%rbp), %rax
	leaq	.LC199(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 145 4
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	pxor	%xmm1, %xmm1
	movss	.LC200(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
.L2687:
	.loc 8 148 2
	leaq	-208(%rbp), %rax
	leaq	.LC201(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 149 2
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC202(%rip), %xmm1
	movss	.LC187(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 151 10
	movq	-216(%rbp), %rax
	movl	11840(%rax), %eax
	.loc 8 151 4
	cmpl	$1, %eax
	jne	.L2690
	.loc 8 154 3
	leaq	-208(%rbp), %rax
	leaq	.LC203(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 155 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC166(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 157 3
	leaq	-208(%rbp), %rax
	leaq	.LC205(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 158 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC10(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 160 3
	leaq	-208(%rbp), %rax
	leaq	.LC206(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 161 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC207(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 163 3
	leaq	-208(%rbp), %rax
	leaq	.LC208(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 164 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC162(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 166 3
	leaq	-208(%rbp), %rax
	leaq	.LC209(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 167 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC165(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 169 3
	leaq	-208(%rbp), %rax
	leaq	.LC210(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 170 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC132(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 172 3
	leaq	-208(%rbp), %rax
	leaq	.LC211(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 173 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC159(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 175 3
	leaq	-208(%rbp), %rax
	leaq	.LC212(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 176 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC131(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 178 3
	leaq	-208(%rbp), %rax
	leaq	.LC213(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 179 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	pxor	%xmm1, %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 181 3
	leaq	-208(%rbp), %rax
	leaq	.LC214(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 182 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC215(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 184 3
	leaq	-208(%rbp), %rax
	leaq	.LC216(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 185 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC217(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 187 3
	leaq	-208(%rbp), %rax
	leaq	.LC218(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 188 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC219(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
	.loc 8 190 3
	leaq	-208(%rbp), %rax
	leaq	.LC220(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 8 191 3
	movq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movss	.LC198(%rip), %xmm1
	movss	.LC204(%rip), %xmm0
	movq	%rax, %rdi
	call	updateText
.L2690:
	.loc 8 193 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	updateTexts, .-updateTexts
	.section	.rodata
.LC221:
	.string	"isText"
.LC223:
	.string	"CHAR %x NOT FOUND ERROR\n"
	.text
	.globl	drawTexts
	.type	drawTexts, @function
drawTexts:
.LFB764:
	.loc 8 196 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	.loc 8 197 11
	movq	-272(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -48(%rbp)
	.loc 8 198 14
	movq	-272(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -56(%rbp)
	.loc 8 199 2
	movq	__glewBindVertexArray(%rip), %rdx
	movq	-272(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL11:
	.loc 8 200 2
	movq	__glewBindBuffer(%rip), %rdx
	movq	-272(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %esi
	movl	$34962, %edi
	call	*%rdx
.LVL12:
	.loc 8 201 2
	movq	__glewUniform1i(%rip), %rbx
	movq	__glewGetUniformLocation(%rip), %rdx
	movq	-272(%rbp), %rax
	movl	128(%rax), %eax
	leaq	.LC221(%rip), %rsi
	movl	%eax, %edi
	call	*%rdx
.LVL13:
	movl	$1, %esi
	movl	%eax, %edi
	call	*%rbx
.LVL14:
.LBB1644:
	.loc 8 202 17
	movq	-272(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 8 202 2
	jmp	.L2692
.L2700:
.LBB1645:
	.loc 8 204 17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 204 9
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 8 204 40
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 204 32
	movss	4(%rax), %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 8 205 21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 205 9
	movss	8(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 8 206 9
	movss	.LC222(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	.loc 8 206 23
	movss	.LC222(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	.loc 8 209 34
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 8 209 23
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 8 209 7
	movl	%eax, -72(%rbp)
	.loc 8 210 9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 8 210 3
	jmp	.L2693
.L2699:
.LBB1646:
	.loc 8 212 27
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 212 7
	movsbq	%al, %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FT_Load_Char@PLT
	.loc 8 212 6
	testl	%eax, %eax
	je	.L2694
	.loc 8 214 41
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 214 5
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC223(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2694:
	.loc 8 217 34 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 217 16 discriminator 2
	movq	152(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	FT_Render_Glyph@PLT
	movl	%eax, -76(%rbp)
	.loc 8 224 11 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 224 17 discriminator 2
	movq	152(%rax), %rax
	.loc 8 224 32 discriminator 2
	movq	168(%rax), %rax
	.loc 8 222 11 discriminator 2
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 8 222 17 discriminator 2
	movq	152(%rdx), %rdx
	.loc 8 222 32 discriminator 2
	movl	152(%rdx), %edx
	.loc 8 220 4 discriminator 2
	movl	%edx, %ecx
	.loc 8 221 11 discriminator 2
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 8 221 17 discriminator 2
	movq	152(%rdx), %rdx
	.loc 8 221 32 discriminator 2
	movl	156(%rdx), %edx
	.loc 8 220 4 discriminator 2
	subq	$8, %rsp
	pushq	%rax
	pushq	$5121
	pushq	$6403
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$6403, %edx
	movl	$0, %esi
	movl	$3553, %edi
	call	glTexImage2D@PLT
	addq	$32, %rsp
	.loc 8 226 7 discriminator 2
	movl	$33071, %edx
	movl	$10242, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 8 227 4 discriminator 2
	movl	$33071, %edx
	movl	$10243, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 8 228 4 discriminator 2
	movl	$9729, %edx
	movl	$10241, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 8 229 4 discriminator 2
	movl	$9729, %edx
	movl	$10240, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 8 230 4 discriminator 2
	movl	$1, %esi
	movl	$3317, %edi
	call	glPixelStorei@PLT
	.loc 8 232 20 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 232 26 discriminator 2
	movq	152(%rax), %rax
	.loc 8 232 33 discriminator 2
	movl	192(%rax), %eax
	.loc 8 232 47 discriminator 2
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	-64(%rbp), %xmm0
	.loc 8 232 10 discriminator 2
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	.loc 8 233 15 discriminator 2
	movss	-32(%rbp), %xmm0
	movss	.LC224(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 8 233 21 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 233 27 discriminator 2
	movq	152(%rax), %rax
	.loc 8 233 34 discriminator 2
	movl	196(%rax), %eax
	.loc 8 233 47 discriminator 2
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	-68(%rbp), %xmm1
	.loc 8 233 10 discriminator 2
	subss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	.loc 8 234 15 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 234 21 discriminator 2
	movq	152(%rax), %rax
	.loc 8 234 36 discriminator 2
	movl	156(%rax), %eax
	.loc 8 234 43 discriminator 2
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L2695
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L2696
.L2695:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L2696:
	.loc 8 234 10 discriminator 2
	movss	-64(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	.loc 8 235 15 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 235 21 discriminator 2
	movq	152(%rax), %rax
	.loc 8 235 36 discriminator 2
	movl	152(%rax), %eax
	.loc 8 235 42 discriminator 2
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L2697
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L2698
.L2697:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L2698:
	.loc 8 235 10 discriminator 2
	movss	-68(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 8 237 12 discriminator 2
	movss	-80(%rbp), %xmm0
	movss	%xmm0, -256(%rbp)
	.loc 8 237 36 discriminator 2
	movss	-84(%rbp), %xmm0
	movss	.LC224(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -252(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -248(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -244(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -240(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -236(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -228(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -224(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -220(%rbp)
	.loc 8 238 13 discriminator 2
	movss	-80(%rbp), %xmm0
	addss	-88(%rbp), %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -216(%rbp)
	.loc 8 238 18 discriminator 2
	movss	-84(%rbp), %xmm0
	movss	.LC224(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -212(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -208(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -204(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -200(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -196(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -192(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -188(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -184(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -180(%rbp)
	movss	-80(%rbp), %xmm0
	movss	%xmm0, -176(%rbp)
	.loc 8 239 18 discriminator 2
	movss	-84(%rbp), %xmm0
	movss	.LC224(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 8 239 22 discriminator 2
	subss	-92(%rbp), %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -172(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -168(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -164(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -152(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	.loc 8 240 13 discriminator 2
	movss	-80(%rbp), %xmm0
	addss	-88(%rbp), %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -136(%rbp)
	.loc 8 240 18 discriminator 2
	movss	-84(%rbp), %xmm0
	movss	.LC224(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 8 240 22 discriminator 2
	subss	-92(%rbp), %xmm0
	.loc 8 237 12 discriminator 2
	movss	%xmm0, -132(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	.loc 8 241 15 discriminator 2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 241 4 discriminator 2
	leaq	-256(%rbp), %rcx
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 8 243 7 discriminator 2
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$40, %edi
	call	updateStoreSizeGL
	.loc 8 244 4 discriminator 2
	movq	__glewBufferSubData(%rip), %r8
	.loc 8 247 12 discriminator 2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 244 4 discriminator 2
	movq	%rax, %rcx
	movl	$160, %edx
	movl	$0, %esi
	movl	$34962, %edi
	call	*%r8
.LVL15:
	.loc 8 248 7 discriminator 2
	movl	$4, %edx
	movl	$0, %esi
	movl	$5, %edi
	call	glDrawArrays@PLT
	.loc 8 250 11 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 250 17 discriminator 2
	movq	152(%rax), %rax
	.loc 8 250 33 discriminator 2
	movq	128(%rax), %rax
	.loc 8 250 35 discriminator 2
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	.loc 8 250 40 discriminator 2
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	mulss	-64(%rbp), %xmm0
	.loc 8 250 6 discriminator 2
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 8 251 11 discriminator 2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 251 17 discriminator 2
	movq	152(%rax), %rax
	.loc 8 251 33 discriminator 2
	movq	136(%rax), %rax
	.loc 8 251 35 discriminator 2
	leaq	63(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$6, %rax
	.loc 8 251 40 discriminator 2
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	mulss	-68(%rbp), %xmm0
	.loc 8 251 6 discriminator 2
	movss	-32(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
.LBE1646:
	.loc 8 210 28 discriminator 2
	addq	$1, -40(%rbp)
.L2693:
	.loc 8 210 23 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 210 3 discriminator 1
	testb	%al, %al
	jne	.L2699
	.loc 8 253 12 discriminator 2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 8 253 3 discriminator 2
	movq	%rax, %rdi
	call	free@PLT
.LBE1645:
	.loc 8 202 66 discriminator 2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L2692:
	.loc 8 202 2 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L2700
.LBE1644:
	.loc 8 255 2
	movq	__glewBindBuffer(%rip), %rax
	movl	$0, %esi
	movl	$34962, %edi
	call	*%rax
.LVL16:
	.loc 8 256 2
	movq	__glewBindVertexArray(%rip), %rax
	movl	$0, %edi
	call	*%rax
.LVL17:
	.loc 8 257 2
	movl	$0, %esi
	movl	$3553, %edi
	call	glBindTexture@PLT
	.loc 8 258 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	drawTexts, .-drawTexts
	.section	.rodata
.LC225:
	.string	"Freetype failed to initialize"
	.align 8
.LC226:
	.string	"/usr/share/fonts/truetype/freefont/FreeSans.ttf"
.LC227:
	.string	"Format unsupported"
.LC228:
	.string	"Fontfile could not be opened"
.LC229:
	.string	"%d"
	.text
	.globl	initFreetype
	.type	initFreetype, @function
initFreetype:
.LFB765:
	.loc 8 261 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 8 264 10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	FT_Init_FreeType@PLT
	movl	%eax, -4(%rbp)
	.loc 8 265 5
	cmpl	$0, -4(%rbp)
	je	.L2702
	.loc 8 267 3
	leaq	.LC225(%rip), %rdi
	call	puts@PLT
.L2702:
	.loc 8 269 10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	leaq	.LC226(%rip), %rsi
	movq	%rax, %rdi
	call	FT_New_Face@PLT
	movl	%eax, -4(%rbp)
	.loc 8 273 5
	cmpl	$2, -4(%rbp)
	jne	.L2703
	.loc 8 275 3
	leaq	.LC227(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L2704
.L2703:
	.loc 8 277 10
	cmpl	$0, -4(%rbp)
	je	.L2704
	.loc 8 279 3
	leaq	.LC228(%rip), %rdi
	call	puts@PLT
.L2704:
	.loc 8 281 15
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 8 281 2
	movq	32(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC229(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 8 282 2
	movl	$10, %edi
	call	putchar@PLT
	.loc 8 283 10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$800, %r8d
	movl	$800, %ecx
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	FT_Set_Char_Size@PLT
	movl	%eax, -4(%rbp)
	.loc 8 289 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	initFreetype, .-initFreetype
	.globl	loadTexture
	.type	loadTexture, @function
loadTexture:
.LFB766:
	.file 9 "texture.c"
	.loc 9 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 9 42 2
	movl	$1, %edi
	call	stbi_set_flip_vertically_on_load
	.loc 9 43 9
	leaq	-4(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	stbi_load
	.loc 9 44 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	loadTexture, .-loadTexture
	.globl	loadSubtextureBounds
	.type	loadSubtextureBounds, @function
loadSubtextureBounds:
.LFB767:
	.loc 9 49 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	.loc 9 51 20
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-28(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 9 51 42
	movsd	.LC230(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 9 51 17
	movss	%xmm0, -24(%rbp)
	.loc 9 52 17
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 9 53 15
	movss	.LC231(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 9 54 16
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 9 56 9
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	.loc 9 57 1
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	loadSubtextureBounds, .-loadSubtextureBounds
	.section	.rodata
.LC232:
	.string	"tex.bmp"
.LC233:
	.string	"Game4X"
.LC234:
	.string	"Failed to create GLFW window"
.LC235:
	.string	"Failed to initialize GLEW"
.LC236:
	.string	"shader.vert"
.LC237:
	.string	"shader.frag"
	.text
	.globl	initializeGraphics
	.type	initializeGraphics, @function
initializeGraphics:
.LFB768:
	.file 10 "gl_game.c"
	.loc 10 57 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 10 58 22
	leaq	.LC232(%rip), %rdi
	call	loadTexture
	movq	%rax, -8(%rbp)
	.loc 10 59 2
	movq	-56(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$104, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	initFreetype
	.loc 10 62 2
	call	glfwInit@PLT
	.loc 10 66 2
	movl	$3, %esi
	movl	$139266, %edi
	call	glfwWindowHint@PLT
	.loc 10 67 2
	movl	$3, %esi
	movl	$139267, %edi
	call	glfwWindowHint@PLT
	.loc 10 70 2
	movl	$204801, %esi
	movl	$139272, %edi
	call	glfwWindowHint@PLT
	.loc 10 73 12
	movl	$0, %r8d
	movl	$0, %ecx
	leaq	.LC233(%rip), %rdx
	movl	$900, %esi
	movl	$900, %edi
	call	glfwCreateWindow@PLT
	.loc 10 73 10
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 10 75 6
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 10 75 5
	testq	%rax, %rax
	jne	.L2710
	.loc 10 77 3
	leaq	.LC234(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 10 78 3
	call	glfwTerminate@PLT
.L2710:
	.loc 10 81 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	glfwMakeContextCurrent@PLT
	.loc 10 82 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$208898, %esi
	movq	%rax, %rdi
	call	glfwSetInputMode@PLT
	.loc 10 86 17
	call	glewInit@PLT
	.loc 10 86 5
	testl	%eax, %eax
	je	.L2711
	.loc 10 88 4
	leaq	.LC235(%rip), %rdi
	call	puts@PLT
.L2711:
	.loc 10 92 2
	movl	$900, %ecx
	movl	$900, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	glViewport@PLT
	.loc 10 94 34
	leaq	.LC236(%rip), %rdi
	call	loadFile@PLT
	.loc 10 94 14
	movq	%rax, -24(%rbp)
	.loc 10 95 36
	leaq	.LC237(%rip), %rdi
	call	loadFile@PLT
	.loc 10 95 14
	movq	%rax, -32(%rbp)
	.loc 10 98 25
	movq	__glewCreateShader(%rip), %rax
	movl	$35633, %edi
	call	*%rax
.LVL18:
	movl	%eax, -12(%rbp)
	.loc 10 100 2
	movq	__glewShaderSource(%rip), %r8
	leaq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$0, %ecx
	movl	$1, %esi
	movl	%eax, %edi
	call	*%r8
.LVL19:
	.loc 10 102 2
	movq	__glewCompileShader(%rip), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL20:
	.loc 10 103 2
	movl	$3042, %edi
	call	glEnable@PLT
	.loc 10 106 27
	movq	__glewCreateShader(%rip), %rax
	movl	$35632, %edi
	call	*%rax
.LVL21:
	movl	%eax, -16(%rbp)
	.loc 10 108 2
	movq	__glewShaderSource(%rip), %r8
	leaq	-32(%rbp), %rdx
	movl	-16(%rbp), %eax
	movl	$0, %ecx
	movl	$1, %esi
	movl	%eax, %edi
	call	*%r8
.LVL22:
	.loc 10 110 2
	movq	__glewCompileShader(%rip), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL23:
	.loc 10 113 29
	movq	__glewCreateProgram(%rip), %rax
	call	*%rax
.LVL24:
	.loc 10 113 27
	movq	-56(%rbp), %rdx
	movl	%eax, 128(%rdx)
	.loc 10 115 2
	movq	__glewAttachShader(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
.LVL25:
	.loc 10 116 2
	movq	__glewAttachShader(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
.LVL26:
	.loc 10 118 2
	movq	__glewLinkProgram(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL27:
	.loc 10 121 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 122 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 123 2
	movq	__glewDeleteShader(%rip), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL28:
	.loc 10 124 2
	movq	__glewDeleteShader(%rip), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL29:
	.loc 10 130 2
	movq	__glewGenVertexArrays(%rip), %rax
	movq	-56(%rbp), %rdx
	addq	$120, %rdx
	movq	%rdx, %rsi
	movl	$1, %edi
	call	*%rax
.LVL30:
	.loc 10 131 2
	movq	__glewGenBuffers(%rip), %rax
	movq	-56(%rbp), %rdx
	addq	$124, %rdx
	movq	%rdx, %rsi
	movl	$1, %edi
	call	*%rax
.LVL31:
	.loc 10 133 2
	movq	-56(%rbp), %rax
	addq	$132, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	glGenTextures@PLT
	.loc 10 134 2
	movq	-56(%rbp), %rax
	movl	132(%rax), %eax
	movl	%eax, %esi
	movl	$3553, %edi
	call	glBindTexture@PLT
	.loc 10 136 2
	movl	$10497, %edx
	movl	$10242, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 10 137 2
	movl	$10497, %edx
	movl	$10243, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 10 138 2
	movl	$9987, %edx
	movl	$10241, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 10 139 2
	movl	$9729, %edx
	movl	$10240, %esi
	movl	$3553, %edi
	call	glTexParameteri@PLT
	.loc 10 141 2
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	$5121
	pushq	$6408
	movl	$0, %r9d
	movl	$64, %r8d
	movl	$768, %ecx
	movl	$6408, %edx
	movl	$0, %esi
	movl	$3553, %edi
	call	glTexImage2D@PLT
	addq	$32, %rsp
	.loc 10 142 2
	movq	__glewGenerateMipmap(%rip), %rax
	movl	$3553, %edi
	call	*%rax
.LVL32:
	.loc 10 144 2
	movq	__glewBindVertexArray(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL33:
	.loc 10 145 2
	movq	__glewBindBuffer(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %esi
	movl	$34962, %edi
	call	*%rdx
.LVL34:
	.loc 10 148 2
	movq	__glewVertexAttribPointer(%rip), %rax
	movl	$0, %r9d
	movl	$40, %r8d
	movl	$0, %ecx
	movl	$5126, %edx
	movl	$3, %esi
	movl	$0, %edi
	call	*%rax
.LVL35:
	.loc 10 150 2
	movq	__glewEnableVertexAttribArray(%rip), %rax
	movl	$0, %edi
	call	*%rax
.LVL36:
	.loc 10 152 2
	movq	__glewVertexAttribPointer(%rip), %rax
	movl	$12, %r9d
	movl	$40, %r8d
	movl	$0, %ecx
	movl	$5126, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	*%rax
.LVL37:
	.loc 10 154 2
	movq	__glewEnableVertexAttribArray(%rip), %rax
	movl	$1, %edi
	call	*%rax
.LVL38:
	.loc 10 156 2
	movq	__glewVertexAttribPointer(%rip), %rax
	movl	$28, %r9d
	movl	$40, %r8d
	movl	$0, %ecx
	movl	$5126, %edx
	movl	$3, %esi
	movl	$2, %edi
	call	*%rax
.LVL39:
	.loc 10 158 2
	movq	__glewEnableVertexAttribArray(%rip), %rax
	movl	$2, %edi
	call	*%rax
.LVL40:
	.loc 10 160 2
	movl	$771, %esi
	movl	$770, %edi
	call	glBlendFunc@PLT
	.loc 10 162 2
	movq	__glewUseProgram(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL41:
	.loc 10 166 2
	movq	__glewBindBuffer(%rip), %rax
	movl	$0, %esi
	movl	$34962, %edi
	call	*%rax
.LVL42:
	.loc 10 167 2
	movq	__glewBindVertexArray(%rip), %rax
	movl	$0, %edi
	call	*%rax
.LVL43:
	.loc 10 168 2
	movl	$0, %esi
	movl	$3553, %edi
	call	glBindTexture@PLT
	.loc 10 170 18
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 10 171 2
	movq	-56(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	loadColors
	.loc 10 172 2
	movss	.LC115(%rip), %xmm0
	call	glLineWidth@PLT
	.loc 10 173 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	initializeGraphics, .-initializeGraphics
	.globl	finalizeGraphics
	.type	finalizeGraphics, @function
finalizeGraphics:
.LFB769:
	.loc 10 176 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 10 177 2
	movq	__glewDeleteVertexArrays(%rip), %rax
	.loc 10 177 26
	movq	-16(%rbp), %rdx
	addq	$120, %rdx
	.loc 10 177 2
	movq	%rdx, %rsi
	movl	$1, %edi
	call	*%rax
.LVL44:
	.loc 10 178 2
	movq	__glewDeleteBuffers(%rip), %rax
	.loc 10 178 21
	movq	-16(%rbp), %rdx
	addq	$124, %rdx
	.loc 10 178 2
	movq	%rdx, %rsi
	movl	$1, %edi
	call	*%rax
.LVL45:
	.loc 10 179 2
	movq	__glewDeleteProgram(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL46:
	.loc 10 180 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	glfwDestroyWindow@PLT
	.loc 10 181 2
	call	glfwTerminate@PLT
	.loc 10 182 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	finalizeGraphics, .-finalizeGraphics
	.globl	buildHexagonVertices
	.type	buildHexagonVertices, @function
buildHexagonVertices:
.LFB770:
	.loc 10 192 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -68(%rbp)
	movss	%xmm1, -72(%rbp)
	movss	%xmm2, -76(%rbp)
	movss	%xmm3, -80(%rbp)
	movss	%xmm4, -84(%rbp)
	movss	%xmm5, -88(%rbp)
	movss	%xmm6, -92(%rbp)
	movss	%xmm7, -96(%rbp)
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 10 193 10
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	.loc 10 196 12
	pxor	%xmm1, %xmm1
	cvtss2sd	-68(%rbp), %xmm1
	.loc 10 196 23
	pxor	%xmm2, %xmm2
	cvtss2sd	48(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 196 12
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 193 10
	movss	%xmm0, -28(%rbp)
	.loc 10 197 12
	pxor	%xmm1, %xmm1
	cvtss2sd	-68(%rbp), %xmm1
	.loc 10 197 23
	pxor	%xmm2, %xmm2
	cvtss2sd	48(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 197 12
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 193 10
	movss	%xmm0, -24(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 10 199 12
	pxor	%xmm0, %xmm0
	cvtss2sd	-68(%rbp), %xmm0
	.loc 10 199 23
	pxor	%xmm2, %xmm2
	cvtss2sd	48(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	.loc 10 199 12
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 193 10
	movss	%xmm0, -16(%rbp)
	.loc 10 200 12
	pxor	%xmm0, %xmm0
	cvtss2sd	-68(%rbp), %xmm0
	.loc 10 200 23
	pxor	%xmm2, %xmm2
	cvtss2sd	48(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	.loc 10 200 12
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 193 10
	movss	%xmm0, -12(%rbp)
	.loc 10 204 12
	movss	-72(%rbp), %xmm0
	addss	48(%rbp), %xmm0
	.loc 10 202 10
	movss	%xmm0, -64(%rbp)
	.loc 10 205 22
	movss	48(%rbp), %xmm0
	movss	.LC136(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 10 205 12
	addss	-72(%rbp), %xmm0
	.loc 10 202 10
	movss	%xmm0, -60(%rbp)
	.loc 10 206 22
	movss	48(%rbp), %xmm0
	movss	.LC136(%rip), %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	.loc 10 206 12
	movss	-72(%rbp), %xmm0
	subss	%xmm1, %xmm0
	.loc 10 202 10
	movss	%xmm0, -56(%rbp)
	.loc 10 207 12
	movss	-72(%rbp), %xmm0
	subss	48(%rbp), %xmm0
	.loc 10 202 10
	movss	%xmm0, -52(%rbp)
	.loc 10 208 22
	movss	48(%rbp), %xmm0
	movss	.LC136(%rip), %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	.loc 10 208 12
	movss	-72(%rbp), %xmm0
	subss	%xmm1, %xmm0
	.loc 10 202 10
	movss	%xmm0, -48(%rbp)
	.loc 10 209 22
	movss	48(%rbp), %xmm0
	movss	.LC136(%rip), %xmm1
	divss	%xmm1, %xmm0
	.loc 10 209 12
	addss	-72(%rbp), %xmm0
	.loc 10 202 10
	movss	%xmm0, -44(%rbp)
	.loc 10 212 36
	movl	-100(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 212 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 212 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 212 12
	movss	%xmm0, (%rax)
	.loc 10 213 36
	movl	-100(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 213 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 213 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 213 12
	movss	%xmm0, (%rax)
	.loc 10 214 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 214 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 215 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 215 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 216 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 216 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 217 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 217 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 218 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 218 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 219 20
	pxor	%xmm1, %xmm1
	cvtss2sd	-96(%rbp), %xmm1
	.loc 10 219 27
	pxor	%xmm2, %xmm2
	cvtss2sd	32(%rbp), %xmm2
	movsd	.LC239(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 219 20
	addsd	%xmm1, %xmm0
	.loc 10 219 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 219 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 219 12
	movss	%xmm0, (%rax)
	.loc 10 220 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 220 20
	movss	16(%rbp), %xmm0
	addss	40(%rbp), %xmm0
	.loc 10 220 12
	movss	%xmm0, (%rax)
	.loc 10 221 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 221 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 223 36
	movl	-100(%rbp), %eax
	leal	1(%rax), %ecx
	.loc 10 223 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 223 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 223 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 223 12
	movss	%xmm0, (%rax)
	.loc 10 224 36
	movl	-100(%rbp), %eax
	leal	1(%rax), %ecx
	.loc 10 224 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 224 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 224 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 224 12
	movss	%xmm0, (%rax)
	.loc 10 225 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 225 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 226 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 226 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 227 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 227 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 228 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 228 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 229 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 229 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 230 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 230 20
	movss	-96(%rbp), %xmm0
	addss	32(%rbp), %xmm0
	.loc 10 230 12
	movss	%xmm0, (%rax)
	.loc 10 231 20
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	.loc 10 231 33
	pxor	%xmm2, %xmm2
	cvtss2sd	40(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 231 20
	addsd	%xmm1, %xmm0
	.loc 10 231 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 231 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 231 12
	movss	%xmm0, (%rax)
	.loc 10 232 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 232 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 234 36
	movl	-100(%rbp), %eax
	leal	2(%rax), %ecx
	.loc 10 234 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 234 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 234 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 234 12
	movss	%xmm0, (%rax)
	.loc 10 235 36
	movl	-100(%rbp), %eax
	leal	2(%rax), %ecx
	.loc 10 235 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 235 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 235 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 235 12
	movss	%xmm0, (%rax)
	.loc 10 236 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 236 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 237 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 237 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 238 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 238 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 239 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 239 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 240 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 240 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 241 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 241 20
	movss	-96(%rbp), %xmm0
	addss	32(%rbp), %xmm0
	.loc 10 241 12
	movss	%xmm0, (%rax)
	.loc 10 242 20
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	.loc 10 242 33
	pxor	%xmm2, %xmm2
	cvtss2sd	40(%rbp), %xmm2
	movsd	.LC240(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 242 20
	addsd	%xmm1, %xmm0
	.loc 10 242 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 242 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 242 12
	movss	%xmm0, (%rax)
	.loc 10 243 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 243 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 245 36
	movl	-100(%rbp), %eax
	leal	3(%rax), %ecx
	.loc 10 245 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 245 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 245 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 245 12
	movss	%xmm0, (%rax)
	.loc 10 246 36
	movl	-100(%rbp), %eax
	leal	3(%rax), %ecx
	.loc 10 246 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 246 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 246 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 246 12
	movss	%xmm0, (%rax)
	.loc 10 247 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 247 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 248 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 248 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 249 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 249 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 250 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 250 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 251 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 251 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 252 20
	pxor	%xmm1, %xmm1
	cvtss2sd	-96(%rbp), %xmm1
	.loc 10 252 27
	pxor	%xmm2, %xmm2
	cvtss2sd	32(%rbp), %xmm2
	movsd	.LC239(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 252 20
	addsd	%xmm1, %xmm0
	.loc 10 252 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 252 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 252 12
	movss	%xmm0, (%rax)
	.loc 10 253 20
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	.loc 10 253 27
	pxor	%xmm2, %xmm2
	cvtss2sd	40(%rbp), %xmm2
	pxor	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 253 20
	addsd	%xmm1, %xmm0
	.loc 10 253 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 253 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 253 12
	movss	%xmm0, (%rax)
	.loc 10 254 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 254 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 256 36
	movl	-100(%rbp), %eax
	leal	4(%rax), %ecx
	.loc 10 256 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 256 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 256 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 256 12
	movss	%xmm0, (%rax)
	.loc 10 257 36
	movl	-100(%rbp), %eax
	leal	4(%rax), %ecx
	.loc 10 257 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 257 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 257 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 257 12
	movss	%xmm0, (%rax)
	.loc 10 258 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 258 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 259 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 259 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 260 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 260 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 261 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 261 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 262 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 262 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 263 20
	pxor	%xmm1, %xmm1
	cvtss2sd	-96(%rbp), %xmm1
	.loc 10 263 27
	pxor	%xmm2, %xmm2
	cvtss2sd	32(%rbp), %xmm2
	pxor	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 263 20
	addsd	%xmm1, %xmm0
	.loc 10 263 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 263 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 263 12
	movss	%xmm0, (%rax)
	.loc 10 264 20
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	.loc 10 264 33
	pxor	%xmm2, %xmm2
	cvtss2sd	40(%rbp), %xmm2
	movsd	.LC240(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 264 20
	addsd	%xmm1, %xmm0
	.loc 10 264 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 264 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 264 12
	movss	%xmm0, (%rax)
	.loc 10 265 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 265 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 267 36
	movl	-100(%rbp), %eax
	leal	5(%rax), %ecx
	.loc 10 267 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 267 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 267 25
	movslq	%edx, %rdx
	movss	-32(%rbp,%rdx,4), %xmm0
	.loc 10 267 12
	movss	%xmm0, (%rax)
	.loc 10 268 36
	movl	-100(%rbp), %eax
	leal	5(%rax), %ecx
	.loc 10 268 40
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 10 268 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -112(%rbp)
	.loc 10 268 25
	movslq	%edx, %rdx
	movss	-64(%rbp,%rdx,4), %xmm0
	.loc 10 268 12
	movss	%xmm0, (%rax)
	.loc 10 269 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 269 12
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 270 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 270 12
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 271 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 271 12
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 272 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 272 12
	movss	-88(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 273 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 273 12
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 274 20
	pxor	%xmm1, %xmm1
	cvtss2sd	-96(%rbp), %xmm1
	.loc 10 274 27
	pxor	%xmm2, %xmm2
	cvtss2sd	32(%rbp), %xmm2
	pxor	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 274 20
	addsd	%xmm1, %xmm0
	.loc 10 274 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 274 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 274 12
	movss	%xmm0, (%rax)
	.loc 10 275 20
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%rbp), %xmm1
	.loc 10 275 33
	pxor	%xmm2, %xmm2
	cvtss2sd	40(%rbp), %xmm2
	movsd	.LC238(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	.loc 10 275 20
	addsd	%xmm1, %xmm0
	.loc 10 275 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 275 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 275 12
	movss	%xmm0, (%rax)
	.loc 10 276 8
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 10 276 12
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 278 9
	movq	-112(%rbp), %rax
	.loc 10 279 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	buildHexagonVertices, .-buildHexagonVertices
	.globl	buildRectVertices
	.type	buildRectVertices, @function
buildRectVertices:
.LFB771:
	.loc 10 287 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm4, -20(%rbp)
	movss	%xmm5, -24(%rbp)
	movss	%xmm6, -28(%rbp)
	movss	%xmm7, -32(%rbp)
	movq	%rdi, -40(%rbp)
	.loc 10 288 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 288 12
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 289 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 289 12
	movss	-8(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 290 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 290 12
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 291 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 291 12
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 292 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 292 12
	movss	-28(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 293 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 293 12
	movss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 294 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 294 12
	movss	16(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 295 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 295 20
	movss	24(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	.loc 10 295 12
	movss	%xmm0, (%rax)
	.loc 10 296 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 296 20
	movss	32(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	addss	%xmm1, %xmm0
	.loc 10 296 12
	movss	%xmm0, (%rax)
	.loc 10 297 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 297 12
	movss	40(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 299 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 299 23
	movss	-4(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	.loc 10 299 12
	movss	%xmm0, (%rax)
	.loc 10 300 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 300 12
	movss	-8(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 301 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 301 12
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 302 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 302 12
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 303 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 303 12
	movss	-28(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 304 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 304 12
	movss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 305 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 305 12
	movss	16(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 306 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 306 20
	movss	24(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	addss	%xmm1, %xmm0
	.loc 10 306 12
	movss	%xmm0, (%rax)
	.loc 10 307 20
	pxor	%xmm1, %xmm1
	cvtss2sd	32(%rbp), %xmm1
	movsd	.LC238(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 10 307 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 307 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 307 12
	movss	%xmm0, (%rax)
	.loc 10 308 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 308 12
	movss	40(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 310 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 310 23
	movss	-4(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	.loc 10 310 12
	movss	%xmm0, (%rax)
	.loc 10 311 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 311 23
	movss	-8(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	.loc 10 311 12
	movss	%xmm0, (%rax)
	.loc 10 312 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 312 12
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 313 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 313 12
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 314 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 314 12
	movss	-28(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 315 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 315 12
	movss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 316 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 316 12
	movss	16(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 317 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 317 20
	movss	24(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	addss	%xmm1, %xmm0
	.loc 10 317 12
	movss	%xmm0, (%rax)
	.loc 10 318 20
	pxor	%xmm1, %xmm1
	cvtss2sd	32(%rbp), %xmm1
	movsd	.LC240(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 10 318 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 318 20
	cvtsd2ss	%xmm0, %xmm0
	.loc 10 318 12
	movss	%xmm0, (%rax)
	.loc 10 319 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 319 12
	movss	40(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 321 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 321 12
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 322 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 322 23
	movss	-8(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	.loc 10 322 12
	movss	%xmm0, (%rax)
	.loc 10 323 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 323 12
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 324 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 324 12
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 325 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 325 12
	movss	-28(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 326 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 326 12
	movss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 327 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 327 12
	movss	16(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 328 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 328 20
	movss	24(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	.loc 10 328 12
	movss	%xmm0, (%rax)
	.loc 10 329 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 329 20
	movss	32(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	.loc 10 329 12
	movss	%xmm0, (%rax)
	.loc 10 330 8
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 10 330 12
	movss	40(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 10 332 9
	movq	-40(%rbp), %rax
	.loc 10 333 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	buildRectVertices, .-buildRectVertices
	.globl	freeMapVertices
	.type	freeMapVertices, @function
freeMapVertices:
.LFB772:
	.loc 10 336 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 10 337 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 338 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	freeMapVertices, .-freeMapVertices
	.globl	getTileTexture
	.type	getTileTexture, @function
getTileTexture:
.LFB773:
	.loc 10 341 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 10 342 2
	cmpl	$3, -4(%rbp)
	je	.L2719
	cmpl	$3, -4(%rbp)
	jg	.L2720
	cmpl	$1, -4(%rbp)
	je	.L2721
	cmpl	$2, -4(%rbp)
	je	.L2722
	jmp	.L2720
.L2721:
	.loc 10 345 11
	movl	$5, %eax
	jmp	.L2723
.L2719:
	.loc 10 348 11
	movl	$7, %eax
	jmp	.L2723
.L2722:
	.loc 10 351 11
	movl	$1, %eax
	jmp	.L2723
.L2720:
	.loc 10 354 11
	movl	$5, %eax
.L2723:
	.loc 10 357 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	getTileTexture, .-getTileTexture
	.globl	updateMapGL
	.type	updateMapGL, @function
updateMapGL:
.LFB774:
	.loc 10 361 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 10 364 13
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	.loc 10 364 4
	testq	%rax, %rax
	jne	.L2725
.LBB1647:
	.loc 10 367 28
	movq	-104(%rbp), %rax
	movl	11752(%rax), %edx
	.loc 10 367 44
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 367 37
	imull	%edx, %eax
	.loc 10 367 7
	imull	$60, %eax, %eax
	movl	%eax, -28(%rbp)
	.loc 10 369 18
	movq	-112(%rbp), %rax
	leaq	24(%rax), %rdx
	.loc 10 369 3
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 371 11
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	.loc 10 371 37
	movl	$6, 40(%rax)
	.loc 10 372 37
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 372 23
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	.loc 10 372 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2725:
.LBE1647:
	.loc 10 375 28
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	.loc 10 375 11
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 10 376 11
	movq	$0, -40(%rbp)
	.loc 10 376 29
	movq	$0, -48(%rbp)
	.loc 10 379 8
	movl	$0, -4(%rbp)
	.loc 10 379 2
	jmp	.L2726
.L2735:
	.loc 10 381 9
	movl	$0, -8(%rbp)
	.loc 10 381 3
	jmp	.L2727
.L2734:
.LBB1648:
	.loc 10 383 36
	movq	-104(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 10 383 8
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	.loc 10 384 28
	movq	-104(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 10 384 6
	testb	%al, %al
	je	.L2728
.LBB1649:
	.loc 10 388 5
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm1
	movq	-104(%rbp), %rax
	movss	11764(%rax), %xmm0
	movq	-104(%rbp), %rax
	movl	11760(%rax), %edi
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edi, %xmm0
	movl	%eax, %edi
	call	hexGridToViewport@PLT
	.loc 10 392 9
	movl	$1, -20(%rbp)
	.loc 10 393 7
	cmpl	$2, -52(%rbp)
	jne	.L2729
	.loc 10 394 12
	movl	$10, -20(%rbp)
	jmp	.L2730
.L2729:
	.loc 10 395 12
	cmpl	$4, -52(%rbp)
	jne	.L2731
	.loc 10 396 12
	movl	$8, -20(%rbp)
	jmp	.L2730
.L2731:
	.loc 10 397 12
	cmpl	$6, -52(%rbp)
	jne	.L2732
	.loc 10 398 12
	movl	$10, -20(%rbp)
	jmp	.L2730
.L2732:
	.loc 10 399 12
	cmpl	$5, -52(%rbp)
	jne	.L2730
	.loc 10 400 12
	movl	$11, -20(%rbp)
.L2730:
	.loc 10 402 5
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 402 40
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 10 402 37
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 402 11
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	.loc 10 403 29
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 403 40
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 403 37
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 403 11
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 10 404 29
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 404 40
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 404 37
	cltq
	addq	$2, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 404 11
	movss	(%rax), %xmm0
	movss	%xmm0, -64(%rbp)
	.loc 10 405 11
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	.loc 10 406 11
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 10 407 7
	cmpl	$1, -52(%rbp)
	je	.L2733
	.loc 10 407 28 discriminator 1
	cmpl	$2, -52(%rbp)
	je	.L2733
	.loc 10 408 17
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
.L2733:
	.loc 10 410 6
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	getTileTexture
	movl	%eax, %edi
	call	loadSubtextureBounds
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, -96(%rbp)
	movq	%xmm0, -88(%rbp)
	.loc 10 419 21
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 10 419 36
	movsd	.LC241(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 10 411 14
	pxor	%xmm3, %xmm3
	cvtsd2ss	%xmm0, %xmm3
	movss	-84(%rbp), %xmm2
	movss	-88(%rbp), %xmm1
	movss	-92(%rbp), %xmm0
	movss	-96(%rbp), %xmm6
	movss	-76(%rbp), %xmm8
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rdx
	movss	-64(%rbp), %xmm5
	movss	-60(%rbp), %xmm4
	movss	-56(%rbp), %xmm9
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm3, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm2, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	movss	-24(%rbp), %xmm1
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rsi
	movl	$0, %edi
	movaps	%xmm6, %xmm7
	movss	.LC6(%rip), %xmm6
	movaps	%xmm9, %xmm3
	pxor	%xmm2, %xmm2
	movaps	%xmm8, %xmm1
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
	movq	%rax, -16(%rbp)
.L2728:
.LBE1649:
.LBE1648:
	.loc 10 381 34 discriminator 2
	addl	$1, -8(%rbp)
.L2727:
	.loc 10 381 23 discriminator 1
	movq	-104(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 10 381 3 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L2734
	.loc 10 379 33 discriminator 2
	addl	$1, -4(%rbp)
.L2726:
	.loc 10 379 22 discriminator 1
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 379 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2735
	.loc 10 423 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	updateMapGL, .-updateMapGL
	.globl	getUnitTexture
	.type	getUnitTexture, @function
getUnitTexture:
.LFB775:
	.loc 10 426 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 10 427 4
	cmpl	$0, -4(%rbp)
	jne	.L2737
	.loc 10 429 10
	movl	$10, %eax
	jmp	.L2736
.L2737:
	.loc 10 431 9
	cmpl	$1, -4(%rbp)
	jne	.L2739
	.loc 10 433 10
	movl	$4, %eax
	jmp	.L2736
.L2739:
	.loc 10 435 9
	cmpl	$2, -4(%rbp)
	jne	.L2740
	.loc 10 437 10
	movl	$11, %eax
	jmp	.L2736
.L2740:
	.loc 10 439 9
	cmpl	$3, -4(%rbp)
	jne	.L2741
	.loc 10 441 10
	movl	$8, %eax
	jmp	.L2736
.L2741:
	.loc 10 443 9
	cmpl	$4, -4(%rbp)
	jne	.L2742
	.loc 10 445 10
	movl	$2, %eax
	jmp	.L2736
.L2742:
	.loc 10 447 9
	cmpl	$5, -4(%rbp)
	jne	.L2743
	.loc 10 449 10
	movl	$9, %eax
	jmp	.L2736
.L2743:
	.loc 10 451 9
	cmpl	$6, -4(%rbp)
	jne	.L2744
	.loc 10 453 10
	movl	$6, %eax
	jmp	.L2736
.L2744:
	.loc 10 455 9
	cmpl	$7, -4(%rbp)
	jne	.L2745
	.loc 10 457 10
	movl	$0, %eax
	jmp	.L2736
.L2745:
.L2736:
	.loc 10 459 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	getUnitTexture, .-getUnitTexture
	.globl	updateUnitListGL
	.type	updateUnitListGL, @function
updateUnitListGL:
.LFB776:
	.loc 10 462 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 10 465 49
	movq	-104(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 10 465 6
	imull	$60, %eax, %eax
	movl	%eax, -28(%rbp)
	.loc 10 466 13
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 466 4
	testq	%rax, %rax
	jne	.L2747
	.loc 10 466 47 discriminator 1
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 466 36 discriminator 1
	testq	%rax, %rax
	jne	.L2747
	.loc 10 470 40
	movq	-104(%rbp), %rax
	movl	11752(%rax), %edx
	.loc 10 470 56
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 470 49
	imull	%edx, %eax
	.loc 10 469 3
	imull	$120, %eax, %eax
	.loc 10 469 18
	movq	-112(%rbp), %rdx
	addq	$56, %rdx
	.loc 10 469 3
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 471 11
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 471 41
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 10 472 11
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 472 39
	movl	$6, 40(%rax)
	.loc 10 473 39
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 473 23
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 473 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
	.loc 10 476 40
	movq	-104(%rbp), %rax
	movl	11752(%rax), %edx
	.loc 10 476 56
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 476 49
	imull	%edx, %eax
	.loc 10 475 3
	imull	$120, %eax, %eax
	.loc 10 475 18
	movq	-112(%rbp), %rdx
	addq	$64, %rdx
	.loc 10 475 3
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 477 11
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 477 52
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 10 478 11
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 478 50
	movl	$6, 40(%rax)
	.loc 10 479 11
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 479 51
	movl	$2, 44(%rax)
	.loc 10 480 50
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 480 23
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 480 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2747:
	.loc 10 482 10
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 482 40
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 10 483 29
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 483 11
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 10 484 29
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 484 11
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 10 485 8
	movl	$0, -4(%rbp)
	.loc 10 485 2
	jmp	.L2748
.L2749:
.LBB1650:
	.loc 10 487 9 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	10192(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 10 490 3 discriminator 3
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm1
	movq	-104(%rbp), %rax
	movss	11764(%rax), %xmm0
	movq	-104(%rbp), %rax
	movl	11760(%rax), %edi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leaq	-68(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edi, %xmm0
	movl	%eax, %edi
	call	hexGridToViewport@PLT
	.loc 10 494 15 discriminator 3
	movq	-112(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	getUnitTeamColor
	movl	%eax, -44(%rbp)
	.loc 10 495 3 discriminator 3
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 495 42 discriminator 3
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 10 495 35 discriminator 3
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 495 9 discriminator 3
	movss	(%rax), %xmm0
	movss	%xmm0, -48(%rbp)
	.loc 10 496 27 discriminator 3
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 496 42 discriminator 3
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 496 35 discriminator 3
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 496 9 discriminator 3
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	.loc 10 497 27 discriminator 3
	movq	-112(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 497 42 discriminator 3
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 497 35 discriminator 3
	cltq
	addq	$2, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 497 9 discriminator 3
	movss	(%rax), %xmm0
	movss	%xmm0, -56(%rbp)
	.loc 10 498 9 discriminator 3
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 10 500 4 discriminator 3
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	getUnitTexture
	movl	%eax, %edi
	call	loadSubtextureBounds
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, -96(%rbp)
	movq	%xmm0, -88(%rbp)
	.loc 10 502 13 discriminator 3
	movq	-40(%rbp), %rax
	movl	44(%rax), %edx
	.loc 10 505 20 discriminator 3
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 10 505 13 discriminator 3
	movsd	.LC241(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 10 502 13 discriminator 3
	cvtsd2ss	%xmm0, %xmm0
	movss	-68(%rbp), %xmm1
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movss	-60(%rbp), %xmm5
	movss	-56(%rbp), %xmm4
	movss	-52(%rbp), %xmm3
	movss	-48(%rbp), %xmm2
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rcx, %rsi
	movl	%edx, %edi
	pxor	%xmm7, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	.LC132(%rip), %xmm2
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
	movq	%rax, -24(%rbp)
	.loc 10 508 11 discriminator 3
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	.loc 10 509 13 discriminator 3
	movq	-40(%rbp), %rax
	movl	44(%rax), %edx
	.loc 10 516 21 discriminator 3
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 10 516 14 discriminator 3
	movsd	.LC242(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 10 509 13 discriminator 3
	pxor	%xmm3, %xmm3
	cvtsd2ss	%xmm0, %xmm3
	movss	-84(%rbp), %xmm2
	movss	-88(%rbp), %xmm1
	movss	-92(%rbp), %xmm0
	movss	-96(%rbp), %xmm7
	movss	-68(%rbp), %xmm8
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movss	-60(%rbp), %xmm6
	movss	-56(%rbp), %xmm5
	movss	-52(%rbp), %xmm4
	movss	-48(%rbp), %xmm9
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm3, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm2, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	movss	.LC6(%rip), %xmm1
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rcx, %rsi
	movl	%edx, %edi
	movaps	%xmm9, %xmm3
	movss	.LC132(%rip), %xmm2
	movaps	%xmm8, %xmm1
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
	movq	%rax, -16(%rbp)
.LBE1650:
	.loc 10 485 37 discriminator 3
	addl	$1, -4(%rbp)
.L2748:
	.loc 10 485 22 discriminator 1
	movq	-104(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 10 485 2 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L2749
	.loc 10 520 10
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	.loc 10 520 40
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 10 521 10
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	.loc 10 521 51
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 10 522 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	updateUnitListGL, .-updateUnitListGL
	.globl	updateHighlight
	.type	updateHighlight, @function
updateHighlight:
.LFB777:
	.loc 10 525 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 10 526 10
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 526 4
	cmpl	$-1, %eax
	je	.L2751
.LBB1651:
	.loc 10 530 3
	movq	-40(%rbp), %rax
	movss	11784(%rax), %xmm1
	movq	-40(%rbp), %rax
	movss	11764(%rax), %xmm0
	movq	-40(%rbp), %rax
	movl	11760(%rax), %edi
	.loc 10 531 27
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 530 3
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10204, %rax
	movl	(%rax), %esi
	.loc 10 530 39
	movq	-40(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 530 3
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10200, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edi, %xmm0
	movl	%eax, %edi
	call	hexGridToViewport@PLT
	.loc 10 536 7
	movl	$7, -4(%rbp)
	.loc 10 537 3
	movq	-48(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 537 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 10 537 35
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 537 9
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 10 538 27
	movq	-48(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 538 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 538 35
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 538 9
	movss	(%rax), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 10 539 27
	movq	-48(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 539 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 539 35
	cltq
	addq	$2, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 539 9
	movss	(%rax), %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 10 540 9
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 10 542 14
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 542 5
	testq	%rax, %rax
	jne	.L2752
.LBB1652:
	.loc 10 544 8
	movl	$60, -24(%rbp)
	.loc 10 546 19
	movq	-48(%rbp), %rax
	leaq	32(%rax), %rdx
	.loc 10 546 4
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 548 12
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 548 45
	movl	$2, 44(%rax)
	.loc 10 549 12
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 549 44
	movl	$6, 40(%rax)
	.loc 10 550 44
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 550 24
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 550 4
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2752:
.LBE1652:
	.loc 10 553 3
	movl	$2848, %edi
	call	glEnable@PLT
	.loc 10 560 17
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 554 3
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	11784(%rax), %xmm0
	movss	-32(%rbp), %xmm1
	movl	-28(%rbp), %eax
	movss	-20(%rbp), %xmm5
	movss	-16(%rbp), %xmm4
	movss	-12(%rbp), %xmm3
	movss	-8(%rbp), %xmm2
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rsi
	movl	$0, %edi
	pxor	%xmm7, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	.LC132(%rip), %xmm2
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
.LBE1651:
	.loc 10 572 1
	jmp	.L2754
.L2751:
	.loc 10 566 14
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 566 5
	testq	%rax, %rax
	je	.L2754
	.loc 10 568 50
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	.loc 10 568 19
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	.loc 10 568 4
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	removeGLObject
	.loc 10 569 31
	movq	-48(%rbp), %rax
	movq	$0, 32(%rax)
.L2754:
	.loc 10 572 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	updateHighlight, .-updateHighlight
	.globl	updateCursor
	.type	updateCursor, @function
updateCursor:
.LFB778:
	.loc 10 575 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 10 576 10
	movq	-56(%rbp), %rax
	movl	11828(%rax), %eax
	.loc 10 576 4
	testl	%eax, %eax
	je	.L2756
.LBB1653:
	.loc 10 578 16
	movq	-56(%rbp), %rax
	movl	11824(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	11820(%rax), %eax
	movq	-56(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	findUnit
	movl	%eax, -8(%rbp)
	.loc 10 582 3
	movq	-56(%rbp), %rax
	movss	11784(%rax), %xmm1
	movq	-56(%rbp), %rax
	movss	11764(%rax), %xmm0
	movq	-56(%rbp), %rax
	movl	11760(%rax), %edi
	movq	-56(%rbp), %rax
	movl	11824(%rax), %esi
	movq	-56(%rbp), %rax
	movl	11820(%rax), %eax
	leaq	-48(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edi, %xmm0
	movl	%eax, %edi
	call	hexGridToViewport@PLT
	.loc 10 588 11
	movq	-56(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 10 588 5
	cmpl	$1, %eax
	jne	.L2757
	.loc 10 590 12
	movq	-56(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 10 590 50
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 590 66
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	(%rax), %eax
	.loc 10 590 6
	cmpl	%eax, %ecx
	jle	.L2758
	.loc 10 591 11
	movl	$8, -4(%rbp)
.L2758:
	.loc 10 593 12
	movq	-56(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 10 593 51
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 593 67
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	(%rax), %eax
	.loc 10 593 6
	cmpl	%eax, %ecx
	jne	.L2759
	.loc 10 594 11
	movl	$7, -4(%rbp)
.L2759:
	.loc 10 596 12
	movq	-56(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 10 596 50
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 596 66
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10224, %rax
	movl	(%rax), %eax
	.loc 10 596 6
	cmpl	%eax, %ecx
	jge	.L2760
	.loc 10 597 11
	movl	$1, -4(%rbp)
.L2760:
	.loc 10 599 6
	cmpl	$-1, -8(%rbp)
	je	.L2757
	.loc 10 600 11
	movl	$8, -4(%rbp)
.L2757:
	.loc 10 602 11
	movq	-56(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 10 602 5
	cmpl	$2, %eax
	jne	.L2761
	.loc 10 604 6
	cmpl	$-1, -8(%rbp)
	jne	.L2762
	.loc 10 605 12 discriminator 1
	movq	-56(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 10 605 51 discriminator 1
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 605 67 discriminator 1
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10216, %rax
	movl	(%rax), %eax
	.loc 10 604 20 discriminator 1
	cmpl	%eax, %ecx
	jg	.L2762
	.loc 10 606 11
	movl	$5, -4(%rbp)
	jmp	.L2761
.L2762:
	.loc 10 607 11
	cmpl	$-1, -8(%rbp)
	je	.L2763
	.loc 10 608 14 discriminator 1
	movq	-56(%rbp), %rax
	movl	11832(%rax), %ecx
	.loc 10 608 53 discriminator 1
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 608 69 discriminator 1
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10216, %rax
	movl	(%rax), %eax
	.loc 10 607 25 discriminator 1
	cmpl	%eax, %ecx
	jg	.L2763
	.loc 10 609 29
	movq	-56(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$10212, %rax
	movl	(%rax), %ecx
	.loc 10 609 56
	movq	-56(%rbp), %rax
	movl	11812(%rax), %eax
	.loc 10 609 72
	movq	-56(%rbp), %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$10212, %rax
	movl	(%rax), %eax
	.loc 10 608 83
	cmpl	%eax, %ecx
	je	.L2763
	.loc 10 610 11
	movl	$6, -4(%rbp)
	jmp	.L2761
.L2763:
	.loc 10 612 11
	movl	$8, -4(%rbp)
.L2761:
	.loc 10 615 3
	movq	-64(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 615 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 10 615 35
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 615 9
	movss	(%rax), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 10 616 27
	movq	-64(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 616 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 616 35
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 616 9
	movss	(%rax), %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 10 617 27
	movq	-64(%rbp), %rax
	movq	88(%rax), %rcx
	.loc 10 617 38
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 10 617 35
	cltq
	addq	$2, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 10 617 9
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 10 618 9
	movss	.LC197(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 10 620 14
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 620 5
	testq	%rax, %rax
	jne	.L2764
.LBB1654:
	.loc 10 622 8
	movl	$60, -28(%rbp)
	.loc 10 623 19
	movq	-64(%rbp), %rax
	leaq	72(%rax), %rdx
	.loc 10 623 4
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 625 12
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 625 41
	movl	$6, 40(%rax)
	.loc 10 626 30
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 626 13
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 10 627 41
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 627 24
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 627 4
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2764:
.LBE1654:
	.loc 10 636 17
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 630 3
	movq	(%rax), %rdx
	.loc 10 634 21
	movq	-56(%rbp), %rax
	movss	11784(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 10 634 14
	movsd	.LC243(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 10 630 3
	cvtsd2ss	%xmm0, %xmm0
	movss	-48(%rbp), %xmm1
	movl	-44(%rbp), %eax
	movss	-24(%rbp), %xmm5
	movss	-20(%rbp), %xmm4
	movss	-16(%rbp), %xmm3
	movss	-12(%rbp), %xmm2
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rsi
	movl	$0, %edi
	pxor	%xmm7, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	.LC161(%rip), %xmm2
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
.LBE1653:
	.loc 10 648 1
	jmp	.L2766
.L2756:
	.loc 10 642 14
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 642 5
	testq	%rax, %rax
	je	.L2766
	.loc 10 644 50
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	.loc 10 644 19
	movq	-64(%rbp), %rdx
	addq	$8, %rdx
	.loc 10 644 4
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	removeGLObject
	.loc 10 645 28
	movq	-64(%rbp), %rax
	movq	$0, 72(%rax)
.L2766:
	.loc 10 648 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	updateCursor, .-updateCursor
	.globl	updateFogOfWar
	.type	updateFogOfWar, @function
updateFogOfWar:
.LFB779:
	.loc 10 651 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 10 654 27
	movq	-104(%rbp), %rax
	movl	11752(%rax), %edx
	.loc 10 654 43
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 654 36
	imull	%edx, %eax
	.loc 10 654 6
	imull	$60, %eax, %eax
	movl	%eax, -48(%rbp)
	.loc 10 656 13
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	.loc 10 656 4
	testq	%rax, %rax
	jne	.L2768
	.loc 10 658 3
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	createGLObjectEmpty
	.loc 10 659 9
	movq	-72(%rbp), %rax
	.loc 10 659 23
	movl	$6, 40(%rax)
	.loc 10 660 22
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	.loc 10 660 9
	movq	-72(%rbp), %rbx
	.loc 10 660 22
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 10 660 20
	movq	%rax, (%rbx)
	jmp	.L2769
.L2768:
	.loc 10 664 20
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	.loc 10 664 10
	movq	%rax, -72(%rbp)
	.loc 10 665 9
	movq	-72(%rbp), %rax
	.loc 10 665 25
	movl	$0, 8(%rax)
.L2769:
	.loc 10 670 26
	movq	-72(%rbp), %rax
	.loc 10 670 11
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 10 671 8
	movl	$0, -20(%rbp)
	.loc 10 671 2
	jmp	.L2770
.L2778:
	.loc 10 673 9
	movl	$0, -24(%rbp)
	.loc 10 673 3
	jmp	.L2771
.L2777:
.LBB1655:
	.loc 10 675 8
	movl	$1, -44(%rbp)
	.loc 10 676 36
	movq	-104(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 10 676 8
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	.loc 10 678 10
	movl	$0, -28(%rbp)
	.loc 10 678 4
	jmp	.L2772
.L2774:
.LBB1656:
	.loc 10 680 11
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	10192(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 10 681 8
	movq	-64(%rbp), %rax
	movl	12(%rax), %esi
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	%eax, %edi
	call	hexDistance@PLT
	.loc 10 681 69
	movq	-64(%rbp), %rdx
	movl	40(%rdx), %edx
	.loc 10 681 7
	cmpl	%edx, %eax
	jg	.L2773
	.loc 10 682 16
	movq	-104(%rbp), %rax
	movl	11800(%rax), %edx
	.loc 10 682 30
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	.loc 10 682 8
	cmpl	%eax, %edx
	jne	.L2773
	.loc 10 683 13
	movl	$0, -44(%rbp)
.L2773:
.LBE1656:
	.loc 10 678 39 discriminator 2
	addl	$1, -28(%rbp)
.L2772:
	.loc 10 678 24 discriminator 1
	movq	-104(%rbp), %rax
	movl	11808(%rax), %eax
	.loc 10 678 4 discriminator 1
	cmpl	%eax, -28(%rbp)
	jl	.L2774
	.loc 10 685 12
	movq	-104(%rbp), %rax
	movl	11836(%rax), %eax
	.loc 10 685 6
	cmpl	$4, %eax
	jne	.L2775
	.loc 10 685 46 discriminator 1
	movl	$1, -44(%rbp)
.L2775:
	.loc 10 686 6
	cmpl	$0, -44(%rbp)
	je	.L2776
	.loc 10 686 14 discriminator 1
	cmpl	$0, -52(%rbp)
	je	.L2776
.LBB1657:
	.loc 10 688 5
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm1
	movq	-104(%rbp), %rax
	movss	11764(%rax), %xmm0
	movq	-104(%rbp), %rax
	movl	11760(%rax), %edi
	leaq	-80(%rbp), %rcx
	leaq	-76(%rbp), %rdx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%edi, %xmm0
	movl	%eax, %edi
	call	hexGridToViewport@PLT
	.loc 10 692 26
	movq	-72(%rbp), %rax
	movl	8(%rax), %edx
	movq	-72(%rbp), %rax
	addl	$60, %edx
	movl	%edx, 8(%rax)
	.loc 10 693 24
	movl	$3, %edi
	call	loadSubtextureBounds
	movq	%xmm0, %rax
	movdqa	%xmm1, %xmm0
	movq	%rax, -96(%rbp)
	movq	%xmm0, -88(%rbp)
	.loc 10 695 6
	movq	-104(%rbp), %rax
	movss	11784(%rax), %xmm3
	movss	-84(%rbp), %xmm2
	movss	-88(%rbp), %xmm1
	movss	-92(%rbp), %xmm0
	movss	-96(%rbp), %xmm4
	movss	-80(%rbp), %xmm8
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rdx
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	movss	%xmm3, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm2, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	movss	.LC6(%rip), %xmm1
	leaq	-8(%rsp), %rsp
	movss	%xmm1, (%rsp)
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rsi
	movl	$0, %edi
	movaps	%xmm4, %xmm7
	movss	.LC6(%rip), %xmm6
	movss	.LC159(%rip), %xmm5
	movss	.LC159(%rip), %xmm4
	movss	.LC159(%rip), %xmm3
	pxor	%xmm2, %xmm2
	movaps	%xmm8, %xmm1
	movd	%eax, %xmm0
	call	buildHexagonVertices
	addq	$48, %rsp
	movq	%rax, -40(%rbp)
.L2776:
.LBE1657:
.LBE1655:
	.loc 10 673 34 discriminator 1
	addl	$1, -24(%rbp)
.L2771:
	.loc 10 673 23 discriminator 2
	movq	-104(%rbp), %rax
	movl	11752(%rax), %eax
	.loc 10 673 3 discriminator 2
	cmpl	%eax, -24(%rbp)
	jl	.L2777
	.loc 10 671 33 discriminator 2
	addl	$1, -20(%rbp)
.L2770:
	.loc 10 671 22 discriminator 1
	movq	-104(%rbp), %rax
	movl	11756(%rax), %eax
	.loc 10 671 2 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L2778
	.loc 10 708 13
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	.loc 10 708 4
	testq	%rax, %rax
	jne	.L2780
	.loc 10 710 23
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 710 3
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
	.loc 10 711 31
	movq	-72(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 40(%rax)
.L2780:
	.loc 10 713 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	updateFogOfWar, .-updateFogOfWar
	.globl	updateForeground
	.type	updateForeground, @function
updateForeground:
.LFB780:
	.loc 10 716 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 10 717 8
	movss	.LC127(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 10 718 8
	movss	.LC127(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 10 719 8
	movss	.LC136(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 10 720 8
	movss	.LC165(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 10 721 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 10 722 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 10 723 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 10 725 13
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 10 725 4
	testq	%rax, %rax
	jne	.L2782
.LBB1658:
	.loc 10 727 7
	movl	$40, -32(%rbp)
	.loc 10 729 18
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rdx
	.loc 10 729 3
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 731 11
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 10 731 44
	movl	$4, 40(%rax)
	.loc 10 732 44
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 732 23
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 10 732 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2782:
.LBE1658:
	.loc 10 739 16
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 10 735 2
	movq	(%rax), %rdx
	movss	-28(%rbp), %xmm6
	movss	-24(%rbp), %xmm5
	movss	-20(%rbp), %xmm4
	movss	-16(%rbp), %xmm3
	movss	-12(%rbp), %xmm2
	movss	-8(%rbp), %xmm1
	movl	-4(%rbp), %eax
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movss	.LC6(%rip), %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rdi
	movaps	%xmm6, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	.LC193(%rip), %xmm2
	movd	%eax, %xmm0
	call	buildRectVertices
	addq	$32, %rsp
	.loc 10 740 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	updateForeground, .-updateForeground
	.globl	updateHelp
	.type	updateHelp, @function
updateHelp:
.LFB781:
	.loc 10 743 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 10 744 8
	movss	.LC189(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 10 745 8
	movss	.LC189(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 10 746 8
	movss	.LC244(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 10 747 8
	movss	.LC244(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 10 748 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	.loc 10 749 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	.loc 10 750 8
	movss	.LC133(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 10 752 10
	movq	-40(%rbp), %rax
	movl	11840(%rax), %eax
	.loc 10 752 4
	cmpl	$1, %eax
	jne	.L2784
	.loc 10 754 14
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 754 5
	testq	%rax, %rax
	jne	.L2785
.LBB1659:
	.loc 10 756 8
	movl	$40, -32(%rbp)
	.loc 10 758 19
	movq	-48(%rbp), %rax
	leaq	80(%rax), %rdx
	.loc 10 758 4
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	createGLObject
	.loc 10 760 12
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 760 39
	movl	$4, 40(%rax)
	.loc 10 761 39
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 10 761 24
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 761 4
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addGLObject
.L2785:
.LBE1659:
	.loc 10 768 17
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 764 3
	movq	(%rax), %rdx
	movss	-28(%rbp), %xmm6
	movss	-24(%rbp), %xmm5
	movss	-20(%rbp), %xmm4
	movss	-16(%rbp), %xmm3
	movss	-12(%rbp), %xmm2
	movss	-8(%rbp), %xmm1
	movl	-4(%rbp), %eax
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movss	.LC197(%rip), %xmm0
	leaq	-8(%rsp), %rsp
	movss	%xmm0, (%rsp)
	movq	%rdx, %rdi
	movaps	%xmm6, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	movss	.LC193(%rip), %xmm2
	movd	%eax, %xmm0
	call	buildRectVertices
	addq	$32, %rsp
	.loc 10 775 1
	jmp	.L2788
.L2784:
	.loc 10 771 14
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 771 5
	testq	%rax, %rax
	je	.L2787
	.loc 10 772 50
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	.loc 10 772 19
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	.loc 10 772 4
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	removeGLObject
.L2787:
	.loc 10 773 26
	movq	-48(%rbp), %rax
	movq	$0, 80(%rax)
.L2788:
	.loc 10 775 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	updateHelp, .-updateHelp
	.globl	updateUIGL
	.type	updateUIGL, @function
updateUIGL:
.LFB782:
	.loc 10 779 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 10 780 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateFogOfWar
	.loc 10 781 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateCursor
	.loc 10 782 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateHighlight
	.loc 10 783 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateForeground
	.loc 10 784 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateHelp
	.loc 10 785 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	updateUIGL, .-updateUIGL
	.globl	updateStoreSizeGL
	.type	updateStoreSizeGL, @function
updateStoreSizeGL:
.LFB783:
	.loc 10 791 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 10 792 30
	movq	-16(%rbp), %rax
	movl	100(%rax), %eax
	.loc 10 792 4
	cmpl	%eax, -4(%rbp)
	jl	.L2792
	.loc 10 794 35
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	nextPowerOf2@PLT
	.loc 10 794 33
	movq	-16(%rbp), %rdx
	movl	%eax, 100(%rdx)
	.loc 10 795 3
	movq	__glewBufferData(%rip), %rax
	.loc 10 795 41
	movq	-16(%rbp), %rdx
	movl	100(%rdx), %edx
	movslq	%edx, %rdx
	.loc 10 795 63
	salq	$2, %rdx
	.loc 10 795 3
	movq	%rdx, %rsi
	movl	$35048, %ecx
	movl	$0, %edx
	movl	$34962, %edi
	call	*%rax
.LVL47:
.L2792:
	.loc 10 797 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	updateStoreSizeGL, .-updateStoreSizeGL
	.globl	updateGL
	.type	updateGL, @function
updateGL:
.LFB784:
	.loc 10 800 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 10 802 2
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateMapGL
	.loc 10 804 2
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateUnitListGL
	.loc 10 806 2
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateUIGL
	.loc 10 808 2
	movss	.LC6(%rip), %xmm3
	movss	.LC245(%rip), %xmm2
	movss	.LC246(%rip), %xmm1
	movss	.LC247(%rip), %xmm0
	call	glClearColor@PLT
	.loc 10 810 2
	movl	$16384, %edi
	call	glClear@PLT
	.loc 10 812 2
	movq	-48(%rbp), %rax
	movl	132(%rax), %eax
	movl	%eax, %esi
	movl	$3553, %edi
	call	glBindTexture@PLT
	.loc 10 813 2
	movq	__glewBindVertexArray(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, %edi
	call	*%rdx
.LVL48:
	.loc 10 814 2
	movq	__glewBindBuffer(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %esi
	movl	$34962, %edi
	call	*%rdx
.LVL49:
	.loc 10 816 2
	movq	__glewUniform1i(%rip), %rbx
	movq	__glewGetUniformLocation(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	128(%rax), %eax
	leaq	.LC221(%rip), %rsi
	movl	%eax, %edi
	call	*%rdx
.LVL50:
	movl	$0, %esi
	movl	%eax, %edi
	call	*%rbx
.LVL51:
	.loc 10 817 13
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 10 818 7
	jmp	.L2794
.L2797:
	.loc 10 820 3
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	updateStoreSizeGL
	.loc 10 821 3
	movq	__glewBufferSubData(%rip), %r8
	.loc 10 824 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 10 823 9
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %edx
	movslq	%edx, %rdx
	.loc 10 823 25
	salq	$2, %rdx
	.loc 10 821 3
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$34962, %edi
	call	*%r8
.LVL52:
.LBB1660:
	.loc 10 826 11
	movl	$0, -28(%rbp)
	.loc 10 826 3
	jmp	.L2795
.L2796:
	.loc 10 829 4
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	.loc 10 829 21
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	.loc 10 829 4
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	glDrawArrays@PLT
	.loc 10 828 16
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	.loc 10 828 6
	addl	%eax, -28(%rbp)
.L2795:
	.loc 10 827 12 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 10 827 28 discriminator 1
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	.loc 10 826 3 discriminator 1
	cmpl	%eax, -28(%rbp)
	jl	.L2796
.LBE1660:
	.loc 10 830 8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L2794:
	.loc 10 818 7
	cmpq	$0, -24(%rbp)
	jne	.L2797
	.loc 10 833 2
	movq	__glewBindBuffer(%rip), %rax
	movl	$0, %esi
	movl	$34962, %edi
	call	*%rax
.LVL53:
	.loc 10 834 2
	movq	__glewBindVertexArray(%rip), %rax
	movl	$0, %edi
	call	*%rax
.LVL54:
	.loc 10 835 2
	movl	$0, %esi
	movl	$3553, %edi
	call	glBindTexture@PLT
	.loc 10 837 2
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateTexts
	.loc 10 838 2
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drawTexts
	.loc 10 839 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	updateGL, .-updateGL
	.globl	freeGL
	.type	freeGL, @function
freeGL:
.LFB785:
	.loc 10 842 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 10 843 13
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 10 844 7
	jmp	.L2799
.L2800:
	.loc 10 846 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 10 846 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 847 8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L2799:
	.loc 10 844 7
	cmpq	$0, -8(%rbp)
	jne	.L2800
	.loc 10 849 7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 10 850 7
	jmp	.L2801
.L2802:
	.loc 10 852 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 10 852 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 853 8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L2801:
	.loc 10 850 7
	cmpq	$0, -8(%rbp)
	jne	.L2802
	.loc 10 855 15
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	.loc 10 855 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 10 856 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	freeGL, .-freeGL
	.globl	main
	.type	main, @function
main:
.LFB786:
	.file 11 "main.c"
	.loc 11 50 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12160, %rsp
	.loc 11 52 16
	leaq	-128(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 11 53 13
	leaq	-12000(%rbp), %rax
	movl	$11872, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 11 54 16
	leaq	-12144(%rbp), %rdx
	movl	$0, %eax
	movl	$17, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 11 59 2
	leaq	-12000(%rbp), %rax
	movq	%rax, %rdi
	call	initializeGameState
	.loc 11 60 2
	leaq	-12144(%rbp), %rdx
	leaq	-12000(%rbp), %rcx
	leaq	-12152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	initializeGraphics
	.loc 11 61 2
	movq	-12152(%rbp), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	glfwSetWindowUserPointer@PLT
	.loc 11 62 2
	movq	-12152(%rbp), %rax
	leaq	scrollCallback(%rip), %rsi
	movq	%rax, %rdi
	call	glfwSetScrollCallback@PLT
	.loc 11 65 2
	leaq	-12000(%rbp), %rax
	movq	%rax, %rdi
	call	generateTestMap
	.loc 11 66 2
	leaq	-12000(%rbp), %rax
	movq	%rax, %rdi
	call	turn
	.loc 11 68 20
	call	glfwGetTime@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	.loc 11 68 35
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 11 69 9
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	.loc 11 69 24
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 11 71 8
	jmp	.L2804
.L2806:
	.loc 11 74 19
	call	glfwGetTime@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	.loc 11 75 19
	movsd	-32(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	.loc 11 76 18
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 11 79 20
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	.loc 11 83 3
	movq	-12152(%rbp), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateInput
	.loc 11 87 3
	leaq	-12000(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	processInput
	.loc 11 91 3
	leaq	-12144(%rbp), %rdx
	leaq	-12000(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	updateGL
	.loc 11 94 3
	movq	-12152(%rbp), %rax
	movq	%rax, %rdi
	call	glfwSwapBuffers@PLT
	.loc 11 97 3
	call	glfwPollEvents@PLT
.L2804:
	.loc 11 71 10
	movq	-12152(%rbp), %rax
	movq	%rax, %rdi
	call	glfwWindowShouldClose@PLT
	.loc 11 71 8
	testl	%eax, %eax
	jne	.L2805
	.loc 11 71 49 discriminator 1
	movl	-132(%rbp), %eax
	.loc 11 71 40 discriminator 1
	testl	%eax, %eax
	je	.L2806
.L2805:
	.loc 11 102 2
	leaq	-12144(%rbp), %rax
	movq	%rax, %rdi
	call	freeGL
	.loc 11 103 2
	movq	-12152(%rbp), %rax
	leaq	-12144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	finalizeGraphics
	.loc 11 104 9
	movl	$0, %eax
	.loc 11 105 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	main, .-main
	.section	.rodata
	.align 32
	.type	__PRETTY_FUNCTION__.21, @object
	.size	__PRETTY_FUNCTION__.21, 32
__PRETTY_FUNCTION__.21:
	.string	"stbi__load_and_postprocess_8bit"
	.align 32
	.type	__PRETTY_FUNCTION__.20, @object
	.size	__PRETTY_FUNCTION__.20, 33
__PRETTY_FUNCTION__.20:
	.string	"stbi__load_and_postprocess_16bit"
	.align 16
	.type	__PRETTY_FUNCTION__.19, @object
	.size	__PRETTY_FUNCTION__.19, 21
__PRETTY_FUNCTION__.19:
	.string	"stbi__convert_format"
	.align 16
	.type	__PRETTY_FUNCTION__.18, @object
	.size	__PRETTY_FUNCTION__.18, 23
__PRETTY_FUNCTION__.18:
	.string	"stbi__convert_format16"
	.align 16
	.type	__PRETTY_FUNCTION__.17, @object
	.size	__PRETTY_FUNCTION__.17, 23
__PRETTY_FUNCTION__.17:
	.string	"stbi__jpeg_huff_decode"
	.type	tag.16, @object
	.size	tag.16, 5
tag.16:
	.string	"JFIF"
	.type	tag.15, @object
	.size	tag.15, 6
tag.15:
	.string	"Adobe"
	.type	rgb.14, @object
	.size	rgb.14, 3
rgb.14:
	.ascii	"RGB"
	.align 16
	.type	__PRETTY_FUNCTION__.13, @object
	.size	__PRETTY_FUNCTION__.13, 18
__PRETTY_FUNCTION__.13:
	.string	"stbi__bit_reverse"
	.align 16
	.type	length_dezigzag.12, @object
	.size	length_dezigzag.12, 19
length_dezigzag.12:
	.string	"\020\021\022"
	.ascii	"\b\007\t\006\n\005\013\004\f\003\r\002\016\001\017"
	.align 8
	.type	png_sig.11, @object
	.size	png_sig.11, 8
png_sig.11:
	.ascii	"\211PNG\r\n\032\n"
	.align 16
	.type	__PRETTY_FUNCTION__.10, @object
	.size	__PRETTY_FUNCTION__.10, 27
__PRETTY_FUNCTION__.10:
	.string	"stbi__create_png_image_raw"
	.align 16
	.type	__PRETTY_FUNCTION__.9, @object
	.size	__PRETTY_FUNCTION__.9, 27
__PRETTY_FUNCTION__.9:
	.string	"stbi__compute_transparency"
	.align 16
	.type	__PRETTY_FUNCTION__.8, @object
	.size	__PRETTY_FUNCTION__.8, 29
__PRETTY_FUNCTION__.8:
	.string	"stbi__compute_transparency16"
	.align 16
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 16
__PRETTY_FUNCTION__.7:
	.string	"stbi__de_iphone"
	.data
	.align 16
	.type	invalid_chunk.6, @object
	.size	invalid_chunk.6, 25
invalid_chunk.6:
	.string	"XXXX PNG chunk not known"
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 18
__PRETTY_FUNCTION__.5:
	.string	"stbi__shiftsigned"
	.data
	.align 32
	.type	mul_table.4, @object
	.size	mul_table.4, 36
mul_table.4:
	.long	0
	.long	255
	.long	85
	.long	73
	.long	17
	.long	33
	.long	65
	.long	129
	.long	1
	.align 32
	.type	shift_table.3, @object
	.size	shift_table.3, 36
shift_table.3:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
	.long	4
	.long	6
	.long	0
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 15
__PRETTY_FUNCTION__.2:
	.string	"stbi__bmp_load"
	.align 8
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 15
__PRETTY_FUNCTION__.1:
	.string	"stbi__tga_load"
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"step"
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC9:
	.long	1132396544
	.align 4
.LC10:
	.long	1056964608
	.align 4
.LC100:
	.long	1199570688
	.align 8
.LC114:
	.long	0
	.long	1072693248
	.align 4
.LC115:
	.long	1077936128
	.align 4
.LC127:
	.long	-1082130432
	.align 4
.LC128:
	.long	-2147483648
	.align 4
.LC129:
	.long	-1063256064
	.align 4
.LC130:
	.long	-1073741824
	.align 4
.LC131:
	.long	1028443341
	.align 4
.LC132:
	.long	1045220557
	.align 4
.LC133:
	.long	1036831949
	.align 4
.LC136:
	.long	1073741824
	.align 4
.LC141:
	.long	1082130432
	.align 4
.LC147:
	.long	1203982336
	.align 8
.LC150:
	.long	27487791
	.long	1063388604
	.align 8
.LC153:
	.long	1202590843
	.long	1065646817
	.align 8
.LC155:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC156:
	.long	0
	.long	-1072431104
	.align 8
.LC157:
	.long	0
	.long	-1073479680
	.align 4
.LC158:
	.long	1057803469
	.align 4
.LC159:
	.long	1041865114
	.align 4
.LC160:
	.long	1061997773
	.align 4
.LC161:
	.long	1053609165
	.align 4
.LC162:
	.long	1051931443
	.align 4
.LC163:
	.long	1059648963
	.align 4
.LC164:
	.long	1063675494
	.align 4
.LC165:
	.long	1050253722
	.align 4
.LC166:
	.long	1060320051
	.align 4
.LC167:
	.long	1064514355
	.align 8
.LC171:
	.long	0
	.long	1083129856
	.align 4
.LC173:
	.long	-1086324736
	.align 4
.LC175:
	.long	-1085653647
	.align 4
.LC177:
	.long	-1084982559
	.align 4
.LC179:
	.long	-1084311470
	.align 4
.LC182:
	.align 4