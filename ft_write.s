section .text
	global ft_write ; rax ft_write(rdi, rsi, rdx)

ft_write:
	mov rax, 1
	syscall ; mov rax, rds
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
