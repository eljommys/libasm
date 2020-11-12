section .text
	global ft_strdup

ft_strdup:
	xor r8, r8

	jmp stat0
	increment0:
		inc r8
	stat0:
		cmp BYTE[rdi + r8], 0
		jne increment0

	mov r10, rdi
	mov rdi, r8
	extern malloc
	call malloc

	xor r9, r9
	jmp stat1
	increment1:
		mov dl, BYTE[r10 + r9]
		mov BYTE[rax + r9], dl
		inc r9
	stat1:
		cmp BYTE[r10 + r9], 0
		jne increment1
	mov dl, BYTE[r10 + r9]
	mov BYTE[rax + r9], dl

ret
