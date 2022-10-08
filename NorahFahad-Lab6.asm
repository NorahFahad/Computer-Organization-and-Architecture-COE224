.data
array:
.word 1, 3, 5, 7, 9, 11, 13, 15, 17, 19
.word 21, 23, 25, 27, 31, 33, 35, 37, 39
.word 41, 43, 45, 47, 49, 51, 53, 55, 57, 59

length: .word 30
sum: .word 0
average: .word 0

.text
la $t0,array
li $t1,0
lw $t2,length
li $t3,0

sumLoop: lw $t4,($t0)
add $t3,$t3,$t4
add $t1,$t1,1
add $t0,$t0,4

blt $t1,$t2,sumLoop
sw $t3,sum

div $t5,$t3,$t2
sw $t5,average

li $v0,10
syscall
.end main