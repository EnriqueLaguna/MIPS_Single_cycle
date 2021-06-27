.text
addi $t0, $zero, 1
addi $t1, $zero, 1
addi $t2, $zero, 2
aca:
beq $t0, $t2, aqui
beq $t0, $t1, aqui
nop
nop
nop
nop
aqui:
bne $t0, $t1, aca
bne $t0, $t2, aca