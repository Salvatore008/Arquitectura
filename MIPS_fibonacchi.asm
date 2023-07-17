.data #Variables del programa
	mensaje: .asciiz "Indique cuantos numero quiere sacar:  "
	salto: .asciiz "\n" #Mensaje a imprimir(salto de linea)
.text #Codigo del programa
Main:
	#Imprime "mensaje" en la consola
	li $v0, 4 #Cargar el valor 4 en $v0 para indicar que se imprimir� una cadena
	la $a0, mensaje #Cargar la direcci�n de la cadena en $a0
	syscall #Llamar a la funci�n syscall para imprimir la cadena en consola
	
	#Lee un numero desde la consola
	li $v0, 5 # Cargar el valor 5 en %v0 para indicar que se leer� n�mero entero desde la consola
	syscall #LLamar a la funci�n syscall para leer el n�mero entero desde la consola
	#El n�mero entero le�do se encontrar� en el registro $v0

Fib:
	#Variables para calcular el fibonacchi
	addi $s0, $zero, 0 # posici�n actual
	addi $s1, $zero, 1 #posici�n siguiente

	#Inicio del bucle------
	addi $t0,$zero, 0 # i 
	add $t1, $v0, $zero # n
Comparar:	
	beq $t0, $t1, Exit # Comparar si se alcanz� el final del bucle
	
	# Imprimir en pantalla el numero actual
	li $v0, 1 # Cargar el valor 1 en el registro $v0 para indicar que se imprimira un numero
	add $a0, $s0, $zero # Carga el valor de $s0 en $a0
	syscall # Llamar a la funci�n "syscall" para imprimir el numero en el registro $a0
	#Salto de linea
	li $v0, 4 #Cargar el valor 4 en $v0 para indicar que se imprimir� una cadena
	la $a0, salto #Cargar la direcci�n de la cadena en $a0
	syscall #Llamar a la funci�n syscall para imprimir la cadena en consola
	
	#Proximo numero en la secuencia fibonacchi
	addi $t2, $s0, 0 #Posici�n temporal
	addi $s0, $s1, 0 #Posici�n actual
	add $s1, $s1, $t2 #Posici�n Siguiente 
	
	addi $t0, $t0, 1 # i++
	
	j Comparar #Saltar a la comparaci�n del bucle
	#Final del bucle------
Exit:
	
