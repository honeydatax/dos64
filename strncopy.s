	.file	"strncopy.c"
	.intel_syntax noprefix
	.text
	.globl	strnfill
	.def	strnfill;	.scl	2;	.type	32;	.endef
	.seh_proc	strnfill
strnfill:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	eax, edx
	mov	DWORD PTR 32[rbp], r8d
	mov	BYTE PTR 24[rbp], al
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rdx, rax
	movzx	eax, BYTE PTR 24[rbp]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR 32[rbp]
	jle	.L3
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
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
	sub	rsp, 160
	.seh_stackalloc	160
	.seh_endprologue
	call	__main
	lea	rax, -128[rbp]
	mov	r8d, 80
	mov	edx, 42
	mov	rcx, rax
	call	strnfill
	mov	BYTE PTR -48[rbp], 0
	lea	rax, -128[rbp]
	mov	rcx, rax
	call	puts
	mov	eax, 0
	add	rsp, 160
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
