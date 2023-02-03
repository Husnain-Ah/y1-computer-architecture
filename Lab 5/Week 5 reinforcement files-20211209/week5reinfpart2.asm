.data

enterNumMsg: .asciiz "Please enter a whole number "
outputMsg: .asciiz "The larger number is "

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

# calculate $s0 minus $s1
sub $s2, $s0, $s1

bgtz $s2, firstBigger

    addi $v0, $zero, 4
    la $a0, outputMsg
    syscall

    add $a0, $s1, $zero
    addi $v0, $zero, 1
    syscall

b finish

firstBigger: 
    addi $v0, $zero, 4
    la $a0, outputMsg
    syscall

    add $a0, $s0, $zero
    addi $v0, $zero, 1
    syscall

finish:
    addi $v0, $zero, 10
    syscall
