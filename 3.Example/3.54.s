	.file	"3.54.c"
	.text
	.globl	funct2
	.type	funct2, @function
funct2:
.LFB0:
	.cfi_startproc
	vxorps	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm3
	vcvtsi2ssl	%edi, %xmm2, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vcvtsi2sdq	%rsi, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm3, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	funct2, .-funct2
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
