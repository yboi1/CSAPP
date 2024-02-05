	.file	"3.49.c"
	.text
	.globl	vframe
	.type	vframe, @function
vframe:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	leaq	0(,%rax,8), %rcx
	leaq	15(%rcx), %rsi
	andq	$-16, %rsi
	subq	%rsi, %rsp
	leaq	7(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$3, %r8
	andq	$-8, %rsi
	leaq	-16(%rbp), %r9
	movq	%r9, 0(,%r8,8)
	testq	%rax, %rax
	jle	.L2
	movq	%rsi, %rax
	addq	%rsi, %rcx
.L3:
	movq	%rdx, (%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L3
.L2:
	movq	(%rsi,%rdi,8), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	jne	.L7
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	vframe, .-vframe
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
