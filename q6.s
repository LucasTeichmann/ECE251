.data

	numb: .word 5

.text
.globl main

main:
	
	lw $a0, numb
	
	jal factorial

	addi $t0, $v0, $0

	li $v0, 10 
	syscall

factorial:
	
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $a0, 4($sp) 
		
	slti $t0, $a0, 1 
	bne $t0, $0, end_sequence
		
	addi $a0, a0, -1

	jal factorial 
	
	lw $t1, 4($sp)
	
	mult $t1, $v0
	mflo $v0	 
	
end_sequence:

	li $v0, 1
	lw $ra, 0($sp)
	addi $sp, $sp, 8 
	jr $ra
