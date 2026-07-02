#Count the number of brown haired people in persondata
.globl _start
.section .text
_start:
	leaq people, %rbx
	movq numpeople, %rcx
	movq $0, %rdi
	movq $2, %rdx

	cmpq $0, %rcx
	je finish

mainloop:
	movq HAIR_OFFSET(%rbx), %rax
	cmpq %rdx, %rax
	jne loopcontrol

	incq %rdi

loopcontrol:
	addq $PERSON_RECORD_SIZE, %rbx
	loopq mainloop

finish:
	movq $60, %rax
	syscall
