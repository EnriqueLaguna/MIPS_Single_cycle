	
	.text
	addi $s0, $0, 4
	addi $s1, $0, 16
	or $s2, $s0, $s1
	and $s3, $s0, $s2
	andi $s4, $s3, 15
	nor $s5, $s4, $s2 
