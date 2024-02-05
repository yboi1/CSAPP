	.file	"3.50.c"
	.text
	.globl	fcvt2
	.type	fcvt2, @function
fcvt2:
.LFB0:
	.cfi_startproc
	vxorps	%xmm1, %xmm1, %xmm1
	movl	(%rdi), %eax
	vmovss	(%rsi), %xmm0
	vcvttsd2sil	(%rdx), %r8d
	movl	%r8d, (%rdi)
	vcvtsi2ssl	%eax, %xmm1, %xmm2
	vmovss	%xmm2, (%rsi)
	vcvtsi2sdq	%rcx, %xmm1, %xmm1
	vmovsd	%xmm1, (%rdx)
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	fcvt2, .-fcvt2
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
