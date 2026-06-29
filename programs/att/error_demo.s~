#Demonstration of the different arithmetic instructions

.section .text
.globl _start
_start:
	#Perform the following operations:
	#((((4+8)*3)-6)/2)

	movq $4, %rax
	movq $8, %rbx
	addq %rbx, %rax

	movq $3, %rcx
	mulq %rcx

	movq $6, %rdx
	subq %rdx, %rax
	movq $0, %rdx

	movq $2, %rbx
	divq %rbx

	movq %rax, %rdi
	movq $60, %rax
	syscall
