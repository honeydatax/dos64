	.file	"mod.c"
	.intel_syntax noprefix
	.text
	.globl	mods
	.def	mods;	.scl	2;	.type	32;	.endef
	.seh_proc	mods
mods:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	mov	eax, DWORD PTR 16[rbp]
	cdq
	idiv	DWORD PTR 24[rbp]
	mov	eax, edx
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "hello world\12\0"
.LC1:
	.ascii "%d\12\0"
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
	mov	edx, 16
	mov	ecx, 20
	call	mods
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	edx, eax
	lea	rcx, .LC1[rip]
	call	printf
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	printf;	.scl	2;	.type	32;	.endef
