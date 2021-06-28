# Practica 1
# Torres de Hanoi
# Por:
# Enrique Laguna Diaz
# Daniel Lerma Esparza

.data
.text
main:
	# Guardar en $s0 el numero de discos de la torre inicial
	addi $s0, $0, 3
	# Funcion para acomodar la torre en memoria
	# Localidad de memoria donde estara la torre de comienzo 
	# Modificacion al Stack pointer para usarlo en Model Sim
	lui $sp, 0x1001
	addi $sp, $sp, 0x03FC
acomodo_discos: lui $t0, 0x1001
	#Auxiliares para el numero de discos
	add $t1, $0, $0
	# Ciclo para escribir el numero de discos en memoria
	# Revisar si el numero de discos es N para salir del ciclo
acomodo_discos_for: beq $t1, $s0, acomodo_memoria
	# Aumentar el contador de discos para no poner un 0
	addi $t1, $t1, 1
	# Guardar en la localidad de memoria de la torre inicial los discos
	sw $t1, 0($t0)
	# Mover el apuntador de la memoria al siguiente espacio
	addi $t0, $t0, 0x20
	# Llamada de vuelta al ciclo
	j acomodo_discos_for
	# Apuntador al cominezo de la primera torre (from)
acomodo_memoria: lui $a1, 0x1001
	# Apuntador a la posicion debajo de la base de la segunda torre (aux)
	addi $t0, $t0, 4
	add $a2, $0, $t0
	# Apuntador a la posicion debajo de la base de la tercera torre (to)
	addi $t0, $t0, 4
	add $a3, $0, $t0
	# Bandera para el if
	addi $t4, $0, 1
	# Llamar a la funcion de Hanoi
	jal torre_hanoi_recursiva
	# Salir del programa
	j Exit

torre_hanoi_recursiva:
	# Guardar en el stack el retorno y el numero de discos
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $t1, 4($sp)
	# Empieza la diversion uwu
	# Checar la condicion si n == 1
	beq $t1, $t4, imprimir_caso_base
	# n-1
	addi $t1, $t1, -1
	# Hanoi( from, to, aux)
	jal swap2_3 # swap 2_3
	#Primera llamada recursiva
	jal torre_hanoi_recursiva
	# Cambio de los apuntadores para la impresion a memoria
	jal swap3_2 # swap 2_3
	# Se llama a la rutina para mostrar como se cambian los discos
	jal imprimir_en_memoria
	# Hanoi(n-1, aux, from, to)
	jal swap1_2 #swap 1_2
	#Segunda llamada recursiva
	jal torre_hanoi_recursiva
	# Cambio a los apuntadores para la recursividad
	jal swap2_1 #Swap 2_1
	# Se llama a la rutina para mostrar como se cambian los discos
	j torre_hanoi_return

# Funcion para reducir codigo en hanoi recursivo
swap2_3:
	add $t2, $0, $a2
	add $a2, $0, $a3
	add $a3, $0, $t2
	jr $ra

swap3_2:
	add $t2, $0, $a3
	add $a3, $0, $a2
	add $a2, $0, $t2
	jr $ra

swap1_2:
	add $t2, $0, $a2
	add $a2, $0, $a1
	add $a1, $0, $t2
	jr $ra

swap2_1:
	add $t2, $0, $a1
	add $a1, $0, $a2
	add $a2, $0, $t2
	jr $ra

# Cuando n == 1 
imprimir_caso_base: jal imprimir_en_memoria
	
torre_hanoi_return:#Retorno del stack
	lw $ra, 0($sp)
	lw $t1, 4($sp)
	addi $sp, $sp, 8
	jr $ra
	# La parte mas pinche estresante 
	# Guardo lo que esta hasta arriba de la primera torre (from)
imprimir_en_memoria:lw $t2, 0($a1)
	# Le cambio el valor por 0 para que se vea la transicion 
	sw $0, 0($a1)
	# Subo el apuntador a la siguiente fila
	addi $a3, $a3, -0x20
	# Guardo el valor en la direccion donde va
	sw $t2, 0($a3)
	# Bajo el apuntador de la torre en donde voy una fila (agarrar el siguiente disco)
	addi $a1, $a1, 0x20 # Breakpoint aqui para ver el intercambio de discos
	jr $ra
Exit:
