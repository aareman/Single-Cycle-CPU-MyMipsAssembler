#fib program simple
li r1, 0
li r2, 1
li r3, 0
li r0, 0
add r3, r2, r0
add r2, r2, r1
add r1, r3, r0
beq r2, r2, -3