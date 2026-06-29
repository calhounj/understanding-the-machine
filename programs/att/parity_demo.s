#Yield 1 for even and 0 for odd
.globl _start
.section .text

_start:
	movq $11, %rax
	movq $2, %rbx

	divq %rbx
	cmpq $0, %rdx
	je even

	movq $1, %rdi
	movq $60, %rax
	syscall

even:
	movq $0, %rdi
	movq $60, %rax
	syscall
