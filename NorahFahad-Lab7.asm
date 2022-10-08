.data
array:
.word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
.word 21, 23, 25, 27, 31, 33, 35, 37, 39
.word 41, 43, 45, 47, 49, 51, 53, 55, 57, 59

length: .word 30

hdr: .asciiz" "
hdr1: .asciiz" \n"

.text
.globl main
main:

la $t0, array
li $t1, 0
lw $t2, length

pushLoop:
lw $t4, ($t0)

li $v0, 1 
lw $a0 , ($t0)
syscall
li $v0, 4 
la $a0, hdr
syscall

subu $sp, $sp, 4
sw $t4, ($sp)

add $t1, $t1, 1
add $t0, $t0, 4

blt $t1, $t2, pushLoop

la $t0, array
li $t1, 0
lw $t2, length

li $v0, 4
la $a0, hdr1
syscall

popLoop:
lw $t4, ($sp)
addu $sp, $sp, 4

sw $t4, ($t0)

li $v0, 1
lw $a0 , ($t0)
syscall
li $v0,4
la $a0, hdr
syscall

add $t1, $t1, 1
add $t0, $t0, 4

blt $t1, $t2, popLoop

li $v0, 10
syscall

