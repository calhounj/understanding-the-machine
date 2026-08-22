#Simple exercise from ChatGPT
#Contract: Find the largest positive integer in an array. Return the value
# as the exit status
.globl _start
.section .data
arraysize:
	.quad (endnumbers - numbers)/8
numbers:
	.quad 7, 12, 5, 19, 3, 8
endnumbers:

.section .text
_start:
#Initialize registers
	movq arraysize, %rcx
	movq $numbers, %rbx
	movq $0, %rax #Set this as initial largest element

#Check if there are any numbers to begin with
	cmpq $0, %rcx
	je finish

mainloop:
#Using %rcx as a counter, we will look at the array backwards
	movq -8(%rbx, %rcx, 8), %rdx
	cmpq %rdx, %rax
	ja loopcontrol

	movq %rdx, %rax

loopcontrol:
	loopq mainloop

finish:
	movq %rax, %rdi
	movq $60, %rax
	syscall
