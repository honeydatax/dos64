	.file	"ucase.c"
	.intel_syntax noprefix
	.text
	.globl	ucase
	.def	ucase;	.scl	2;	.type	32;	.endef
	.seh_proc	ucase
ucase:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 96
	jle	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 122
	jg	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR 16[rbp]
	add	rdx, rcx
	movzx	edx, BYTE PTR [rdx]
	sub	edx, 32
	mov	BYTE PTR [rax], dl
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
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
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0
	movabs	rax, 8022916786675279176
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -24[rbp], 172256338
	mov	BYTE PTR -20[rbp], 0
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	ucase
	mov	DWORD PTR -4[rbp], eax
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
