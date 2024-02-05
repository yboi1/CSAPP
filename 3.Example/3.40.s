	.file	"3.40.c"
	.text
	.globl	fix_set_diag
	.type	fix_set_diag, @function
fix_set_diag:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	leaq	1088(%rdi), %rdx
.L2:
	movl	%esi, (%rax)
	addq	$68, %rax
	cmpq	%rdx, %rax
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	fix_set_diag, .-fix_set_diag
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
