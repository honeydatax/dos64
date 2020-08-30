	.file	"strsfills.c"
	.intel_syntax noprefix
	.text
	.globl	strsfills
	.def	strsfills;	.scl	2;	.type	32;	.endef
	.seh_proc	strsfills
strsfills:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	eax, edx
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
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%s \12\0"
	.text
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
	movabs	rax, 8031924123371070824
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -24[rbp], 174353522
	mov	BYTE PTR -20[rbp], 0
	lea	rax, -32[rbp]
	mov	edx, 42
	mov	rcx, rax
	call	strsfills
	lea	rax, -32[rbp]
	mov	rdx, rax
	lea	rcx, .LC0[rip]
	call	printf
	mov	eax, 0
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	printf;	.scl	2;	.type	32;	.endef
