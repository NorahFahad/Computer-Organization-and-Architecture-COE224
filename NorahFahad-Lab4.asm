.data
n: .word 10
sumsq: .word 0
.text
main:
lw $t0,n
li $t1,1
li $t2,0

sumloop:
mul $t3,$t1,$t1
add $t2,$t2,$t3
add $t1,$t1,2
ble $t1,$t0,sumloop

sw $t2,sumsq
li $v0,10
syscall
.end main