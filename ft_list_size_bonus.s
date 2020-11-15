section .text
	global ft_list_size

ft_list_size:
	xor rax, rax
	cmp rdi, 0
	je exit
	push rbx
	jmp end_list
	increment:
		inc rax
	end_list:
		mov rbx, QWORD[rdi + 8]
		cmp QWORD[rbx], 0
		jne increment
	pop rbx
	exit:
		ret
