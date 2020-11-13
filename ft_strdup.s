section	.text
	global	ft_strdup
	extern	malloc

ft_strdup:
	cmp		rdi, 0
	je		error					;if (!input) -> exit

	xor		rcx, rcx
	jmp		len_compare				;strlen of input
	len_increment:
		inc		rcx
	len_compare:
		cmp		BYTE [rdi + rcx], 0
		jne		len_increment
	malloc_start:
		inc		rcx
		push	rdi
		mov		rdi, rcx
		call	malloc
		pop		rdi
		cmp		rax, 0
		je		error
	copy_start:
		xor		rcx, rcx
		xor		rdx, rdx
		jmp		copy_copy
	copy_increment:
		inc		rcx
	copy_copy:
		mov		dl, BYTE [rdi + rcx]
		mov		BYTE [rax + rcx], dl
		cmp		dl, 0
		jnz		copy_increment
		jmp		return
	error:
		xor		rax, rax
	return:
		ret
