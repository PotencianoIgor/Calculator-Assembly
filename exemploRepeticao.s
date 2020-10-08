.data
tab: .asciiz "\t"

.text
.globl main
main:

li $v0, 5
syscall
move $t0, $v0 #Ler o valor de N ($t0)

li $t1, 1 # Contador do Loop (1 a n)
li $t2, 0 # Soma acumulada de valores

inicioLoop: #Marca o local de retorno (Loop)

li $v0, 1 # Imprime o valor acumulado a cada passo
move $a0, $t2
syscall 

mul $t3, $t1, $t1 # Calcula o valor do contador ao quadrado
add $t2, $t2, $t3 # Acumula o resultado
add $t1, $t1, 1   #Incrementa o contador 

li $v0, 4 #Tab entre valores
la $a0, tab
syscall

ble $t1, $t0, inicioLoop #Salta (goto) para o local inicioLoop (label) se $t1 <= $t0

li $v0, 1 # Imprime o valor acumulado a cada passo
move $a0, $t2
syscall 

#Finalizar o programa
li $v0, 10 
syscall # system call
.end main
