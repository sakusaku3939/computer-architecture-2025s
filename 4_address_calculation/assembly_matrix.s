	.file	"matrix.c"
	.text
	.globl	A
	.data
	.align 32
	.type	A, @object
	.size	A, 72
A:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.globl	B
	.align 32
	.type	B, @object
	.size	B, 72
B:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.globl	C
	.bss
	.align 32
	.type	C, @object
	.size	C, 72
C:
	.zero	72
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -12(%rbp)

; --- Loop i Start ---
.L7:
	cmpl	$2, -12(%rbp)
	jg	.L2
	movl	$0, -8(%rbp)

; --- Loop k Start ---
.L6:
	cmpl	$2, -8(%rbp)
	jg	.L3
	movl	$0, -4(%rbp)

; --- Loop j Start ---
.L5:
	cmpl	$2, -4(%rbp)
	jg	.L4
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	C(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	A(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	B(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	C(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L5
; --- Loop j End ---

.L4:
	addl	$1, -8(%rbp)
	jmp	.L6
; --- Loop k End ---

.L3:
	addl	$1, -12(%rbp)
	jmp	.L7
; --- Loop i End ---

.L2:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
