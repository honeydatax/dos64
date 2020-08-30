	.file	"strcopy.c"
	.intel_syntax noprefix
	.text
	.globl	strcopy
	.def	strcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	strcopy
strcopy:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, QWORD PTR 24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "hello world\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	sub	rsp, 1072
	.seh_stackalloc	1072
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	call	__main
	lea	rax, .LC0[rip]
	mov	QWORD PTR 936[rbp], rax
	mov	rdx, QWORD PTR 936[rbp]
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	strcopy
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	puts
	mov	eax, 0
	add	rsp, 1072
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
