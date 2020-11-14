section .text
	global ft_strcmp

ft_strcmp:
	xor rax, rax
	xor rcx, rcx

	jmp stat
	less:
		mov rax, -1
		jmp exit
	great:
		mov rax, 1
		jmp exit
	increment:
		inc rcx
	stat:
		mov dl, BYTE[rsi + rcx]
		cmp BYTE[rdi + rcx], dl
		jl less
		jg great
		cmp BYTE[rsi + rcx], 0
		je exit
		cmp  BYTE[rdi + rcx], 0
		je exit
		jmp increment
	exit:
		ret
