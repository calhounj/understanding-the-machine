#Records of people and information about how to access
#different parts of the record
.section .data

.globl people, numpeople
numpeople:
	.quad (endpeople - people)/PERSON_RECORD_SIZE

people:
#Array of people (weight(lbs), hair color, height(inches), age)
	.quad 200, 2, 74, 20
	.quad 239, 2, 68, 38
	.quad 115, 2, 68, 36
	.quad 250, 3, 70, 24
	.quad 185, 4, 72, 20
	.quad 180, 5, 69, 65
endpeople: #Marks the end of the array for calculation purposes

#Describe components of the struct
.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ WEIGHT_OFFSET, 0
.equ HAIR_OFFSET, 8
.equ HEIGHT_OFFSET, 16
.equ AGE_OFFSET, 24
#Total size of the struct
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE, 32
