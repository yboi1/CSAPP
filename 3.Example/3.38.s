	.file	"3.38.c"
	.text
	.globl	sun_element
	.type	sun_element, @function
sun_element:
.LFB0:
	.cfi_startproc
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	addq	%rsi, %rdx
	leaq	(%rsi,%rsi,4), %rax
	addq	%rdi, %rax
	leaq	Q(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	leaq	P(%rip), %rcx
	addq	(%rcx,%rdx,8), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	sun_element, .-sun_element
	.globl	Q
	.bss
	.align 32
	.type	Q, @object
	.size	Q, 280
Q:
	.zero	280
	.globl	P
	.align 32
	.type	P, @object
	.size	P, 280
P:
	.zero	280
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
