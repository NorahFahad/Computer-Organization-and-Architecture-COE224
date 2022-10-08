.data

num1:.word 4
num2:.word 5
num3:.word 6
num4:.word 2
num5:.word 3
num6:.word 9
sum:.word 0

.text
.globl main
.ent main
main:

lw $a0, num1
lw $a1, num2
lw $a2, num3
lw $a3, num4
lw $t0, num5
lw $t1, num6
subu $sp, $sp, 8
sw $t0, ($sp)
sw $t1, 4($sp)
jal addem
sw $v1, sum

addu $sp, $sp, 8
li $v0,10
syscall
.end main

.globl addem
.ent addem
addem:

subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4

li $v1, 0
add $v1, $v1, $a0
add $v1, $v1, $a1
add $v1, $v1, $a2
add $v1, $v1, $a3
lw $t0, ($fp)
add $v1, $v1, $t0

lw $t0, 4($fp)
add $v1, $v1, $t0

lw $fp, ($sp)
addu $sp, $sp, 4
jr $ra
.end addem