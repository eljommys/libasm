section .text
	global ft_write ; rax ft_write(rdi, rsi, rdx)

ft_write:
	mov rax, 1
	syscall ; mov rax, rds
