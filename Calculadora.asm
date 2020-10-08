.data 
	strEntrada: .asciiz "Entre com a expressão:"
	array: .space 50
.text
.globl main
	main:
		li $v0, 4
		la $a0, strEntrada
		syscall
		
		li $v0, 8
		la $a0, array
		li $a1, 49
		syscall
		
		pushLoop:
		la $a2, ($a0)
		sub $sp, $sp, 4
		la $a2, ($sp)
		
		add $t1, $t1, 1
		add $t0, $t0, 4
		blt $t1, $a1, pushLoop
		
		li $v0, 11
		lb $a0, 5($a0)
		syscall
		
		li $v0, 10
		syscall
