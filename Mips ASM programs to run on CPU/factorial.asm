li r1, 5 ; for factorial 5
li r2, 1 ; end condition
li r4, 0 ; the answer will be stored here
sub r3, r1, r2 ;beginning of loop
mul r5, r3, r1
add r4, r4, r5
sub r1, r1, r2
bneq r1, r2, -4
addi r4, r4, 0