	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_sumArray
	.p2align	4, 0x90
_sumArray:                              ## @sumArray
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	LBB0_6
## BB#1:
	movl	%esi, %ecx
	leaq	-1(%rcx), %r8
	movq	%rcx, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	andq	$7, %rsi
	je	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rdx,8), %eax
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	LBB0_2
LBB0_3:
	cmpq	$7, %r8
	jb	LBB0_6
## BB#4:
	subq	%rdx, %rcx
	leaq	56(%rdi,%rdx,8), %rdx
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	addl	-56(%rdx), %eax
	addl	-48(%rdx), %eax
	addl	-40(%rdx), %eax
	addl	-32(%rdx), %eax
	addl	-24(%rdx), %eax
	addl	-16(%rdx), %eax
	addl	-8(%rdx), %eax
	addl	(%rdx), %eax
	addq	$64, %rdx
	addq	$-8, %rcx
	jne	LBB0_5
LBB0_6:
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI1_0:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -56
Ltmp7:
	.cfi_offset %r12, -48
Ltmp8:
	.cfi_offset %r13, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	leaq	L_.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %edi
	movl	$1000000, %esi          ## imm = 0xF4240
	callq	_calloc
	movq	%rax, %r15
	leaq	L_.str.2(%rip), %r14
	movq	___stdoutp@GOTPCREL(%rip), %r12
	movabsq	$-6640827866535438581, %r13 ## imm = 0xA3D70A3D70A3D70B
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	imulq	$1374389535, %rax, %rcx ## imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	cmpl	%ecx, %eax
	jne	LBB1_3
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movslq	%ebx, %rax
	imulq	$1374389535, %rax, %rax ## imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	andl	$-4, %ecx
	subl	%ecx, %eax
	cltq
	movq	_progress(%rip), %rcx
	movsbl	(%rcx,%rax), %ecx
	movl	$8, %esi
	movl	$8, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	(%r12), %rdi
	callq	_fflush
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	callq	_random
	movq	%rax, %rcx
	imulq	%r13
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$6, %rdx
	addl	%eax, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	movl	%ecx, (%r15,%rbx,8)
	incq	%rbx
	cmpq	$125000, %rbx           ## imm = 0x1E848
	jne	LBB1_1
## BB#4:
	leaq	L_str(%rip), %rdi
	callq	_puts
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_6 Depth 2
	callq	_clock
	movq	%rax, %r12
	movl	$7, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_6:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addl	-56(%r15,%rax,8), %ebx
	addl	-48(%r15,%rax,8), %ebx
	addl	-40(%r15,%rax,8), %ebx
	addl	-32(%r15,%rax,8), %ebx
	addl	-24(%r15,%rax,8), %ebx
	addl	-16(%r15,%rax,8), %ebx
	addl	-8(%r15,%rax,8), %ebx
	addl	(%r15,%rax,8), %ebx
	addq	$8, %rax
	cmpq	$125007, %rax           ## imm = 0x1E84F
	jne	LBB1_6
## BB#7:                                ##   in Loop: Header=BB1_5 Depth=1
	callq	_clock
	movq	%rax, %rcx
	subq	%r12, %rcx
	movl	%r13d, %r13d
	addq	%rcx, %r13
	xorl	%eax, %eax
	leaq	L_.str.4(%rip), %rdi
	movq	%rcx, %rsi
	movl	%ebx, %edx
	callq	_printf
	incl	%r14d
	cmpl	$100, %r14d
	jne	LBB1_5
## BB#8:
	cvtsi2sdl	%r13d, %xmm0
	divsd	LCPI1_0(%rip), %xmm0
	leaq	L_.str.5(%rip), %rdi
	movb	$1, %al
	callq	_printf
	callq	_getchar
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"-\\|/"

	.section	__DATA,__data
	.globl	_progress               ## @progress
	.p2align	3
_progress:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"Initializing array [-]"

L_.str.2:                               ## @.str.2
	.asciz	"%c%c%c]"

L_.str.4:                               ## @.str.4
	.asciz	"Array %ld ticks,sum %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"\nAverage time: %f ticks\n"

L_str:                                  ## @str
	.asciz	"\n\nTiming..."


.subsections_via_symbols
