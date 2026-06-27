#Practicing looping and registers

.globl _start
.section .text
_start:
	#rbx will hold the base
	movq $2, %rbx

	#rcx will hold the counter
	movq $3, %rcx

	#Store the accumulated value in rax
	movq $1, %rax

mainloop:
	#Add zero to rcx so that we can use rflags
	addq $0, %rcx
	jz complete

	mulq %rbx

	decq %rcx
	jmp mainloop

complete:
	movq %rax, %rdi
	movq $60, %rax
	syscall
