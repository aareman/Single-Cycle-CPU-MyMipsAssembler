#fib mine

#setup variable registers
li R1, 10 #how many fib numbers to count
li R2, 0 #end condition
li R8, 1
	#actual numbers
li R3, 0
li R4, 1
#total sum
li R5, 0
li r0, 0
#program start
loop:
	add R6, R0, R4 #save t4 to load into t3
	add R7, R4, R3  #next two lines are to compute the sum
	add R5, R5, R7   
	add R4, R4, R3   #next two lines perform the calculation of the next values
	add R3, R6, R0
	
	sub R1, R1, R8 #reduce program counter
	bne R2, R1, -6