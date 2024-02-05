	.file	"3.18.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	leaq	(%rdi,%rsi), %rax
	addq	%rdx, %rax
	cmpq	$-2, %rdi
	jge	.L2
	movq	%rsi, %rax
	imulq	%rdx, %rax
	ret
.L2:
	cmpq	%rdx, %rsi
	je	.L4
.L1:
	ret
.L4:
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
