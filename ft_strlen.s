section .text
	global ft_strlen

ft_strlen:
	xor rax, rax; i = 0

	cmp rdi, 0
	je error
	jmp stat ;goes to stat
	error:
		mov rax, -1
		jmp exit
	increment:
		inc rax
	stat:
		cmp BYTE [rdi + rax], 0 ; cmp = (value on (rdi + rax)) - 0
		jne increment; goes to increment only if the previous cmp isn't zero
	exit:
		ret
