global ft_strcpy

ft_strcpy:
	mov rax, rdi
	xor r8, r8

	jmp stat
	increment:
		mov dl, BYTE [rsi + r8]
		mov BYTE [rdi + r8], dl
		inc r8
	stat:
		cmp BYTE [rsi + r8], 0
		jne increment
	mov dl, BYTE [rsi + r8]
	mov BYTE [rdi + r8], dl

ret
