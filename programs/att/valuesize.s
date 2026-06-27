#Playing with registers

.section .text
.globl _start
_start:
	movw $0b100000010, %bx
	addb %bh, %bl
	addb %bh, %bl
	movb $0, %bh #zero out the high byte

	movq %rbx, %rdi

	movq $60, %rax
	syscall
