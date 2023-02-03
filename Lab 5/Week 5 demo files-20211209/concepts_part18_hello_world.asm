.data
message: .asciiz "Hello World"

.text
la $a0, message
addi $v0, $zero, 4
syscall
