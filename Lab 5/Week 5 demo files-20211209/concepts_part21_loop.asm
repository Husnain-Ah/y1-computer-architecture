addi $a0,$zero, 5
addi $v0,$zero, 1

loop:
syscall 
subi $a0, $a0, 1

bnez $a0, loop
