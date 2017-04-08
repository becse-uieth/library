	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"============================================="
.LC1:
	.string	"  \t enter 1 --> add number"
	.align 8
.LC2:
	.string	"         enter 2 --> subtract number"
.LC3:
	.string	"\t enter 3 --> multply number"
.LC4:
	.string	"\t enter 0 --> exit"
.LC5:
	.string	"\t\t enter choice"
.LC6:
	.string	"%d"
.LC7:
	.string	"enter first no"
.LC8:
	.string	"enter second no"
.LC9:
	.string	"EXIT_SUCCESS"
.LC10:
	.string	"enter valid choice"
.LC11:
	.string	"\nyour result is %d\n"
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
	subq	$16, %rsp
.L9:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	je	.L3
	cmpl	$1, %eax
	jg	.L4
	testl	%eax, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$2, %eax
	je	.L6
	cmpl	$3, %eax
	je	.L7
	jmp	.L2
.L5:
	leaq	.LC9(%rip), %rax
	movl	%eax, %edi
	call	exit@PLT
.L3:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	add@PLT
	movl	%eax, -4(%rbp)
	jmp	.L8
.L6:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	sub@PLT
	movl	%eax, -4(%rbp)
	jmp	.L8
.L7:
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	mul@PLT
	movl	%eax, -4(%rbp)
	jmp	.L8
.L2:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
.L8:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-6) 6.3.0 20170205"
	.section	.note.GNU-stack,"",@progbits
