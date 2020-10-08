.data
textoMenor: .asciiz "\nX é menor do que Y"
textoIgual: .asciiz "\nX é igual a Y"
textoMaior: .asciiz "\nX é maior do que Y"
 
.text
.globl main
main:

li $v0, 5
syscall
move $t0, $v0 #Ler o valor de X ($t0)

li $v0, 5
syscall
move $t1, $v0 #Ler o valor de Y ($t1)

blt $t0, $t1, menor #Salta (goto) para o label se $t1 < $t0
beq $t0, $t1, igual #Salta (goto) para o label se $t1 == $t0
bgt $t0, $t1, maior #Salta (goto) para o label se $t1 > $t0

menor:
la $a0, textoMenor
j fim		    #Salta para o label INCONDICIONALMENTE

igual:
la $a0, textoIgual
j fim

maior:
la $a0, textoMaior
#j fim

#Imprimir o resultado
fim:
li $v0, 4 
syscall

#Finalizar o programa
li $v0, 10 
syscall #system call
.end main