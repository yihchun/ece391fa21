.data
.text
.globl set_minmax
set_minmax:
	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	pushl %edi
	pushl %ebx

	movl $0, %esi
	movl $999, %edx
	movl $-1, %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx

looptop:
	# exit the loop if %esi >= %ecx
	cmpl %ecx, %esi
	jge finish
	
	# put age in eax
	movl 4(%ebx, %esi, 8), %eax   # load the esi-th age into %eax
	cmpl %eax, %edi
	jge another_label
	movl %eax, %edi
another_label:
	cmpl %eax, %edx
	jl noset_edx
	movl %eax, %edx
noset_edx:
	incl %esi
	jmp looptop
	
finish:
	movl 16(%ebp), %eax
	movl %edx, (%eax)
	movl %edi, 4(%eax)
	popl %ebx
	popl %edi
	popl %esi
	xor %eax, %eax
	leave
	ret
