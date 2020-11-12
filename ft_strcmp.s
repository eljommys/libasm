section .text
	global ft_strcmp

ft_strcmp:
	xor rax, rax
	xor r8, r8

	jmp stat
	less:
		mov rax, -1
		jmp exit
	great:
		mov rax, 1
		jmp exit
	increment:
		inc r8
	stat:
		mov dl, BYTE[rsi + r8]
		cmp BYTE[rdi + r8], dl
		jl less
		cmp BYTE[rdi + r8], dl
		jg great
		cmp BYTE[rsi + r8], 0
		je exit
		cmp  BYTE[rdi + r8], 0
		je exit
		jmp increment
	exit:
		ret
