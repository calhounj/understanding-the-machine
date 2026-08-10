#Refresher exercise to practice using the %rflags register to make decisions
.globl _start
.section .text
_start:
#Set up numbers, assume numbers are unsigned
	movq $-1, %rax
	movq $1, %rbx

#Arithmetic instructions add numbers held in registers
#and also modify bits in %rflags
	addq %rbx, %rax

#Check to see if there was a carry
	jc carryexit
	jz zeroexit

	movq $0, %rdi
finish:
	movq $60, %rax
	syscall

carryexit:
	movq $2, %rdi
	jmp finish

zeroexit:
	movq $1, %rdi
	jmp finish

