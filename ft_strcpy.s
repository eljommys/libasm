global ft_strcpy

ft_strcpy:
	mov rax, rdi
	xor r8, r8

	cmp rdi, 0
	je error
	cmp rsi, 0
	je error
	jmp stat
	error:
		mov rax, 0
		jmp exit
	increment:
		mov dl, BYTE [rsi + r8]
		mov BYTE [rdi + r8], dl
		inc r8
	stat:
		cmp BYTE [rsi + r8], 0
		jne increment
	mov dl, BYTE [rsi + r8]
	mov BYTE [rdi + r8], dl
	exit:
		ret
