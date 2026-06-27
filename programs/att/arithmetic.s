#Basic arithmetic

.section .text
.globl _start
_start:
	movq $3, %rdi
	movq %rdi, %rax
	addq %rdi, %rax
	mulq %rdi #one argument; will always multiply %rax

	movq $2, %rbx
	addq %rbx, %rax
	movq $4, %rcx
	mulq %rcx

	movq %rax, %rdi
	movq $60, %rax #Set the exit system call number

	syscall
