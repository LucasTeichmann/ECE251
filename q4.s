.data


.text
.globl main

main:
	
	li $a0, 4

	jal square_plus_one
	
	add $t0, $v0, $0
	
	li $v0, 10
	syscall	

square_plus_one:
	
	addi $sp, $sp, -4	
	sw $ra, $0($sp)

	mult $a0, $a0
	mflo $t0
	addi $v0, $t0, 1
	
	lw $ra, $0($sp)
	addi $sp, $sp, 4

	jr $ra
