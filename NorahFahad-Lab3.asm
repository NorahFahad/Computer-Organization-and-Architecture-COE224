.data 
wnum1: .word 128
wans1: .word 0
wans2: .word 0 
wans3: .word 0

.text
main:
lw $t0,wnum1
srl $t1,$t0,4
sw $t1,wans1

add $t1,$t1,1
sw $t1,wans1

lw $t3,wnum1
rol $t4,$t3,1
sw $t4,wans2

lw $t5,wans1
lw $t6,wans2
add $t7,$t6,$t5
sw $t7,wans3

li $v0,10
syscall