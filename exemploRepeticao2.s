.data
tab: .asciiz "\t"

.text
.globl main
main:

li $v0, 5
syscall
move $t0, $v0 #Ler o valor de N ($t0)

li $t1, 1 # Contador do Loop (1 a n)

inicioLoop:
bgt $t1, $t0, fimLoop

li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, tab
syscall

add $t1, $t1, 1
j inicioLoop

fimLoop:

li $v0, 10
syscall
