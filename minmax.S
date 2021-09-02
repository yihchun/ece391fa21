.data
.name1:	.string "Augusta Wind"
.name2:	.string "Anne Teak"
.name3:	.string "Billy Rubin"
.name4: .string "Paige Turner"
.name5: .string "Augusta Wind"
arr:
        .long   .name1
        .long   32
        .long   .name2
        .long   85
        .long   .name3
        .long   15
        .long   .name4
        .long   20
        .long   .name5
        .long   100

.text
.globl main
main:
	pushl %ebp
	movl %esp, %ebp

	movl $0, %esi
	movl $999, %edx
	movl $-1, %edi
	movl $arr, %ebx
	movl $5, %ecx

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
	xor %eax, %eax
	leave
