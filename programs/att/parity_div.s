#Exercise of checking parity by looping
.globl _start
.section .text
_start:
	movq $11, %rax

	cmpq $0, %rax
	je even

	cmpq $1, %rax
	je odd

	jmp mainloop

mainloop:
	movq $2, %rbx
	subq %rbx, %rax

	cmpq $0, %rax
	je even
	cmpq $1, %rax
	je odd

	jmp mainloop

even:
	movq $1, %rdi
	jmp finish

odd:
	movq $0, %rdi
	jmp finish

finish:
	movq $60, %rax
	syscall
