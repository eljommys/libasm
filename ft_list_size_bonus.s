section .text
	global ft_list_size

ft_list_size:
	cmp rdi, 0
	je exit
	mov rax, 1
	push rbx
	jmp end_list
	increment:
		inc rax
		mov rdi, rbx
	end_list:
		mov rbx, QWORD[rdi + 8]
		cmp rbx, 0
		jne increment
	pop rbx
	exit:
		ret
