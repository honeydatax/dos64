	.file	"strslong.c"
	.intel_syntax noprefix
	.text
	.globl	strslong
	.def	strslong;	.scl	2;	.type	32;	.endef
	.seh_proc	strslong
strslong:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -16[rbp], 2147483647
	mov	DWORD PTR -12[rbp], 1000000000
	mov	DWORD PTR -20[rbp], 0
	mov	eax, DWORD PTR -16[rbp]
	and	DWORD PTR -4[rbp], eax
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR 24[rbp]
	and	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
	cmp	DWORD PTR -16[rbp], 0
	je	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
.L2:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -20[rbp], eax
	add	DWORD PTR -20[rbp], 48
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -20[rbp]
	mov	BYTE PTR [rax], dl
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], edx
	mov	ecx, DWORD PTR -12[rbp]
	mov	edx, 1717986919
	mov	eax, ecx
	imul	edx
	sar	edx, 2
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L3:
	cmp	DWORD PTR -8[rbp], 9
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	rsp, 32
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 1234567890
	mov	edx, DWORD PTR -4[rbp]
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	strslong
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	puts
	mov	eax, 0
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
