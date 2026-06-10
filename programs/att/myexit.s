# First program; return an exit code
# This is a directive. It says "do not get rid of _start,
# we will need it later." _start is the "entry point."
.globl _start
# this says that the next part of the program should be placed
# in the .text section, also known as the code section.
.section .text
# this is a label and it defines _start
_start:
	movq $60, %rax
	movq $3, %rdi
	syscall

