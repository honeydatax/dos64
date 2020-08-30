	.file	"hello.c"
	.intel_syntax noprefix
/APP
	.code16gcc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "hello world\0"
/NO_APP
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	lea	rcx, .LC0[rip]
	call	puts
	nop
.L2:
	call	getchar
	cmp	eax, 27
	je	.L2
	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 4.9.1"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
