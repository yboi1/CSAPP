	.file	"3.27.c"
	.text
	.globl	fun_b
	.type	fun_b, @function
fun_b:
.LFB0:
	.cfi_startproc
	movl	$64, %eax
	jmp	.L2
.L3:
	subq	$1, %rax
.L2:
	testq	%rax, %rax
	jne	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	fun_b, .-fun_b
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
