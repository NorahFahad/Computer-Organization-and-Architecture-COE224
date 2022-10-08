.data
hdr: .ascii "Squaring example\n"
     .asciiz "Enter value: "
ansMsg: .asciiz "Value squared: "
value: .word 0

.text
.globl   main
main:
li  $v0, 4
la  $a0, hdr
syscall

li $v0, 5
syscall

mul $t0, $v0, $v0
sw $t0, value

li $v0, 4
la $a0, ansMsg
syscall

li $v0, 1
lw $a0, value
syscall

li  $v0, 10
syscall
.end main