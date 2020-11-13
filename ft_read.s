section .text
	global ft_read ;rax ft_read(rdi, rsi, rdx)

ft_read:
	mov rax, 0
	syscall
	cmp rax, -1
	jle error_check
	fine:
	mov rax, rdx
	jmp exit
	error_check:
		cmp rax, -4095
		jl fine
		mov rax, -1
	exit:
		ret
