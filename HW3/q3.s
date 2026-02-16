.data

.text
.globl main

main:

	li $a0, 10 
	li $a1, 2	
	
	jal calc_perimeter

	add $t0, $v0, $0
	
	li $v0, 10
	syscall 

 calc_perimeter:
 
	add $t0, $a1, $a0
	sll $v0, $t0, 1
        jr $ra



