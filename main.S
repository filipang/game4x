.text
	hello : .asciz "Hello %lld!\n"


.global main

main:
	#prologue
	pushq %rbp
	movq %rsp, %rbp
	call glfwInit
	
	movq $0, %rax
	movq $hello, %rdi
	movq $GLFW_CONTEXT_VERSION_MAJOR, %rsi
	call printf


	#movq $0x00022002, %rdi
	movq $2, %rdi
	movq $3, %rsi 	


	#epilogue
	movq %rbp, %rsp
	popq %rbp
	ret

