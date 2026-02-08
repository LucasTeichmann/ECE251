.data
        array: .word 5, -2, 18, -1, -30
	array_size: .word 5
	count: .word 0
.text
.globl main

main:

	la $t0, array
	lw $t1, array_size
	li $t2, 0	

loop:

	beq $t1, $0, end_loop
	lw $t3, 0($t0)
	slt $t4, $t3, $0 
	add $t2, $t4, $t2

	addi $t0, $t0, 4
	addi $t1, $t1, -1

	j loop

end_loop:

	add $s0, $0, $t2  

	li $v0, 10 
	syscall
