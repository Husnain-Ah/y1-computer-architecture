# store 225 and 1500 in registers $t0 and $t1 respectively
addi $t0, $zero, 225
addi $t1, $zero, 1500

# multiply the values and store the answer in $t3
mul $t3, $t0, $t1

# output first value
addi $v0, $zero, 1
add $a0, $zero, $t0
syscall

# output x
addi $v0, $zero, 11
addi $a0, $zero, 'x'
syscall

# output second value
addi $v0, $zero, 1
add $a0, $zero, $t1
syscall

# output newline
addi $v0, $zero, 11
addi $a0, $zero, '\n'
syscall

# output result
addi $v0, $zero, 1
add $a0, $zero, $t3
syscall

# end the program
addi, $v0, $zero, 10
syscall