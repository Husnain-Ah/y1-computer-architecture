.data
message: .asciiz "\nLetter "

.text
addi $s0, $zero, 'a'

jal outputMessage
jal outputChar

addi $s0, $s0, 1

jal outputMessage
jal outputChar

addi $v0, $zero, 10
syscall

outputMessage:
    la $a0, message
    addi $v0, $zero, 4
    syscall
    jr $ra

outputChar:
   addi $v0, $zero, 11
   add $a0, $zero, $s0
   syscall
   jr $ra
