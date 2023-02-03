# Store decimal values 42 and 9 in registers $t1 and $t2 respectively
addi $t1, $zero, 5
addi $t2, $zero, 12
addi $t3, $zero, 10

# Add them together and store the result in $s1
add $s1, $t1, $t2
add $s1, $s1, $t3

addi $s1, $s1, 8

add $s2, $s1, $zero

