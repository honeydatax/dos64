	.file	"strfloat.c"
	.intel_syntax noprefix
	.text
	.globl	strsfloat
	.def	strsfloat;	.scl	2;	.type	32;	.endef
	.seh_proc	strsfloat
strsfloat:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	movss	DWORD PTR 24[rbp], xmm1
	mov	eax, DWORD PTR 24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR 24[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	BYTE PTR -21[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR 24[rbp]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR .LC0[rip]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR .LC1[rip]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
	pxor	xmm0, xmm0
	ucomiss	xmm0, DWORD PTR -28[rbp]
	jbe	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
	pxor	xmm0, xmm0
	subss	xmm0, DWORD PTR -4[rbp]
	movd	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
.L2:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	movss	xmm0, DWORD PTR -4[rbp]
	divss	xmm0, DWORD PTR -16[rbp]
	movd	eax, xmm0
	mov	DWORD PTR -32[rbp], eax
	cmp	DWORD PTR -8[rbp], 3
	jne	.L5
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 46
.L5:
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -36[rbp], eax
	cvttss2si	eax, DWORD PTR -36[rbp]
	mov	BYTE PTR -21[rbp], al
	movsx	eax, BYTE PTR -21[rbp]
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	mulss	xmm0, DWORD PTR -16[rbp]
	movss	xmm1, DWORD PTR -20[rbp]
	subss	xmm1, xmm0
	movd	eax, xmm1
	mov	DWORD PTR -4[rbp], eax
	movzx	eax, BYTE PTR -21[rbp]
	add	eax, 48
	mov	BYTE PTR -21[rbp], al
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR -21[rbp]
	mov	BYTE PTR [rdx], al
	movss	xmm0, DWORD PTR -16[rbp]
	movss	xmm1, DWORD PTR .LC2[rip]
	divss	xmm0, xmm1
	movd	eax, xmm0
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L4:
	cmp	DWORD PTR -8[rbp], 4
	jle	.L6
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 80
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	mov	eax, DWORD PTR .LC3[rip]
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	lea	rax, -32[rbp]
	mov	DWORD PTR -36[rbp], edx
	movss	xmm1, DWORD PTR -36[rbp]
	mov	rcx, rax
	call	strsfloat
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	puts
	mov	eax, 0
	add	rsp, 80
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1120403456
	.align 4
.LC1:
	.long	0
	.align 4
.LC2:
	.long	1092616192
	.align 4
.LC3:
	.long	1123477094
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
