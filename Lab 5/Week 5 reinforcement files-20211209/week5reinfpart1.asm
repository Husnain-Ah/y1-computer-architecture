.data

enterNumMsg: .asciiz "Please enter a whole number "
outputMsg1: .asciiz " divided by "
outputMsg2: .asciiz " gives remainder "

	
.text

# output text to request a number
addi $v0, $zero, 4
la $a0, enterNumMsg
syscall

# read an integer from keyboard input and store the input in $s0
addi $v0, $zero, 5
syscall
add $s0, $zero, $v0

# output text to request a number
addi $v0, $zero, 4
la $a0, enterNumMsg
syscall

# read an integer from keyboard input and store the input in $s1
addi $v0, $zero, 5
syscall
add $s1, $zero, $v0

# find the remainder after dividing $s0 by $s1 and store in $s2
rem $s2, $s0, $s1

# output message
add $a0, $s0, $zero
addi $v0, $zero, 1
syscall

addi $v0, $zero, 4
la $a0, outputMsg1
syscall

add $a0, $s1, $zero
addi $v0, $zero, 1
syscall

addi $v0, $zero, 4
la $a0, outputMsg2
syscall

add $a0, $s2, $zero
addi $v0, $zero, 1
syscall

# output a new line
addi $v0, $zero, 11
addi $a0, $zero, '\n'
syscall

# find the remainder after dividing $s1 by $s0 and store in $s3
rem $s3, $s1, $s0

# output message
add $a0, $s1, $zero
addi $v0, $zero, 1
syscall

addi $v0, $zero, 4
la $a0, outputMsg1
syscall

add $a0, $s0, $zero
addi $v0, $zero, 1
syscall

addi $v0, $zero, 4
la $a0, outputMsg2
syscall

add $a0, $s3, $zero
addi $v0, $zero, 1
syscall

# end the program
addi $v0, $zero, 10
syscall
