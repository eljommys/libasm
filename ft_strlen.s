;section	.text
;	global	ft_strlen
;
;ft_strlen:
;	xor rax, rax			; i = 0
;	jmp compare
;increment:
;	inc rax					; i++
;compare:
;	cmp BYTE [rdi + rax], 0	; str[i] == 0
;	jne increment
;done:
;	ret 					; return i


segment .text
	global ft_write ; ft_write(fd, str, len) (rdi, rsi, rdx)

ft_write:
	mov rax, rdi
	syscall
	jc exit_error
	jmp exit

exit_error:
	mov rax, -1
	ret

exit:
	mov rax, rdx
	ret

;section .data
;
;msg db "Hello orld", 10
;msglen equ $ - msg
;
;section .text
;global _start
;_start:
;
;mov rax, 1
;mov rdi, 1
;mov rsi, msg
;mov rdx, msglen
;syscall
;
;mov rax, 60
;mov rdx, 0
;syscall
