.data

.text

.globl main

main:
	li $a0, 3
	li $a1, 5
	
	jal average_of_squares
	
	add $t0, $v0, $0
	
	li $v0, 10 
	syscall
square:
	mult $a0, $a0
	mflo $v0	
	
	jr $ra
average_of_squares:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	jal square

	add $t1, $v0, $0
	addi $a0, $a1, $0	

	jal square 

	add $t2, $v0, $0
	
	add $t3, $t2, $t1 
	srl $v0, $t3, 1

	lw $ra, 0($sp) 
	addi $sp, $sp, 4
	jr $ra 


