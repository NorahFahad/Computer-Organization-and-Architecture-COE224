#Example program
.data
msg: .asciiz "hello \n"
A: .word 3
B: .word 4
C: .word 10
D: .word 5
Y: .word 0

#Part of data declaration
.text
.main:
lw $t0,A
lw $t1,B
lw $t2,C
lw $t3,D
mul $t4,$t1,$t0
mul $t5,$t3,$t2
add $t6,$t5,$t4
sw $t6,Y

#End program
li $v0, 10
syscall
.end main