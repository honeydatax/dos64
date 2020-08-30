	.file	"strcat.c"
	.intel_syntax noprefix
	.text
	.globl	strslen
	.def	strslen;	.scl	2;	.type	32;	.endef
	.seh_proc	strslen
strslen:
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
.L3:
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
	.globl	strcat
	.def	strcat;	.scl	2;	.type	32;	.endef
	.seh_proc	strcat
strcat:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR -4[rbp], 0
	mov	rcx, QWORD PTR 16[rbp]
	call	strslen
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
.L6:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "world\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	sub	rsp, 104
	.seh_stackalloc	104
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	call	__main
	movabs	rax, 35662932501864
	mov	QWORD PTR -96[rbp], rax
	lea	rdx, -88[rbp]
	mov	eax, 0
	mov	ecx, 5
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	WORD PTR [rdx], ax
	add	rdx, 2
	lea	rax, .LC0[rip]
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	strcat
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	puts
	mov	eax, 0
	add	rsp, 104
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
