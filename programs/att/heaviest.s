#Find the heaviest person in persondata and exit code will be their age
.globl _start
.section .text
_start:
#Initialize Registers

#Pointer to first record
	leaq people, %rbx
#Record count
	movq numpeople, %rcx
#Heaviest value found
	movq $0, %rdi
#If there are no records, finish
	cmpq $0, %rcx
	je finish

mainloop:
#%rbx is the pointer to the whole struct
#This instruction grabs the weight field
	movq WEIGHT_OFFSET(%rbx), %rax
#Less than or equal to current heaviest, go to the next
	cmpq %rdi, %rax
	jbe loopcontrol

	movq %rax, %rdi
	movq AGE_OFFSET(%rbx), %r13

loopcontrol:
	addq $PERSON_RECORD_SIZE, %rbx
	loopq mainloop

finish:
	movq $60, %rax
	movq %r13, %rdi
	syscall
