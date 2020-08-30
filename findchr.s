	.file	"findchr.c"
	.intel_syntax noprefix
	.text
	.globl	findcahr
	.def	findcahr;	.scl	2;	.type	32;	.endef
	.seh_proc	findcahr
findcahr:
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
.L4:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, BYTE PTR 24[rbp]
	jne	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR 16[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, BYTE PTR 24[rbp]
	je	.L5
	mov	DWORD PTR -4[rbp], -1
.L5:
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 16
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "hello world\12\0"
.LC1:
	.ascii "%s %d \12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0
	lea	rax, .LC0[rip]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 119
	mov	rcx, rax
	call	findcahr
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	r8d, edx
	mov	rdx, rax
	lea	rcx, .LC1[rip]
	call	printf
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	printf;	.scl	2;	.type	32;	.endef
