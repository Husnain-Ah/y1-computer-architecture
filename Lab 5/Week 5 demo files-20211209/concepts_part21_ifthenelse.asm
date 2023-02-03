.data
msgPass: .asciiz "You passed, well done"
msgFail: .asciiz "You failed this time"
.text
addi $v0, $zero, 5
syscall
addi $v0, $v0, -39
bgtz $v0, pass
la $a0, msgFail
b output
pass:
la $a0, msgPass
output:
addi $v0, $zero, 4
syscall
