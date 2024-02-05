	.file	"3.26.c"
	.text
	.globl	func_a
	.type	func_a, @function
func_a:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L2
.L3:
	xorq	%rdi, %rax
	shrq	%rdi
.L2:
	testq	%rdi, %rdi
	jne	.L3
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	func_a, .-func_a
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
