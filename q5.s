.data

	numb1: .word 3 
	numb2: .word 4
.text

.globl main

main:
	
	jal average_of_squares
	
	add $t0, $v0, $0
	
	li $v0, 10 
	syscall

square:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	mult $a0, $a0
	mflo $v0	
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4	
	jr $ra

average_of_squares:
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	lw $a0, numb1
	
	jal square

	add $t1, $v0, $0

	lw $a0, numb2

	jal square 

	add $t2, $v0, $0
	
	add $t3, $t2, $t1 
	srl $v0, $t3, 1

	lw $ra, 0($sp) 
	addi $sp, $sp, 4
	jr $ra 


