	.file	"3.57.c"
	.text
	.globl	funct3
	.type	funct3, @function
funct3:
.LFB0:
	.cfi_startproc
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm0, %xmm0, %xmm3
	vmovss	(%rdx), %xmm2
	vcvtsi2sdl	(%rdi), %xmm1, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L7
	vcvtsi2ssq	%rsi, %xmm1, %xmm0
	vmulss	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	ret
.L7:
	vaddss	%xmm2, %xmm2, %xmm2
	vcvtsi2ssq	%rsi, %xmm1, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	funct3, .-funct3
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
