#Use register indirect mode to help find the largest value in an array
.globl _start

.section .data
#Number of elements we have
numberofnumbers:
	.quad 7
#The actual data elements
mynumbers:
	.quad 5, 30, 33, 90, 4, 7, 1

### Find the largest value in the array
.section .text
_start:
### Initialize registers
	movq numberofnumbers, %rcx
#Put the *address* of the first element in %rbx
	movq $mynumbers, %rbx
	movq $0, %rdi
#Check preconditions. If there are no numbers, stop.
	cmp $0, %rcx
	je endloop

mainloop:
	movq (%rbx), %rax
#If it is not bigger than (%rdi), go to the end of the loop
	cmp %rax, %rdi
	jae loopcontrol

#Otherwise
	movq %rax, %rdi

loopcontrol:
#Change the address in %rbx to point to the next value
	addq $8, %rbx

	loopq mainloop

endloop:
	movq $60, %rax
	syscall
