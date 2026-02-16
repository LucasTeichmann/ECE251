.data
	final_val: .word 0


.text
.globl main

main:

	li $v0, 5
	syscall
	add $t0, $v0, $0  #stores first number in $t0
	li $v0, 5
	syscall 
	add $t1, $v0, $0  #stores second number in $t1
	
	sll $t2, $t0, 3   #multply by 8
	add $t3, $t2, $t1 #adds the result with $t1
	sw $t3, final_val
	
	li $v0, 10 
	syscall
