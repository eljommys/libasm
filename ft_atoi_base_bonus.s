section .text
	global ft_atoi_base
	extern ft_strlen

error:
	mov rax, 0
	jmp exit

ft_atoi_base: ;rdi = char *nptr, rsi = char *base
	input_check:
		cmp rdi, 0
		je error
		cmp rsi, 0
		je error
	var_init:
		xor rax, rax ;result = 0
		mov rbx, 1 ;neg = 1
		xor rcx, rcx; blen = 0
	blen:
		push rdi
		push rax
		mov rdi, rsi
		call ft_strlen
		mov rcx, rax
		pop rax
		pop rdi
	cmp rdi, 2 ;if base length is less than 2 return 0
	jl error

	jmp skip_blank_if	;while (*nptr == (' ', '\t' ... '\f')) -> nptr++
	skip_blank:
		inc rdi
	skip_blank_if:
		cmp BYTE[rdi], 32
		je skip_blank
		cmp BYTE[rdi], 9
		je skip_blank
		cmp BYTE[rdi], 10
		je skip_blank
		cmp BYTE[rdi], 11
		je skip_blank
		cmp BYTE[rdi], 12
		je skip_blank
		cmp BYTE[rdi], 13
		je skip_blank

	jmp if_neg	;if (*nptr == '-') -> neg = -1 && nptr++
	negative:	;else if (*nptr == '+') -> nptr++
		mov rbx, -1
		inc rdi
		jmp endif_neg
	positive:
		inc rdi
		jmp endif_neg
	if_neg:
		cmp BYTE[rdi], 45
		je negative
		cmp BYTE[rdi], 43
		je positive
	endif_neg:

	push rbx
	jmp digit_less_blen_if ;real stuff happens here
	digit_less_blen:
		mul rcx
		add rax, rbx
		inc rdi
	digit_less_blen_if:
		xor rbx, rbx
		jmp char_not_base_if
		char_not_base:
			inc rbx
		char_not_base_if:
			mov dl, BYTE[rsi + rbx]
			cmp dl, 0
			je char_not_base_endif
			cmp dl, BYTE[rdi]
			jne char_not_base
		char_not_base_endif:
		cmp rbx, rcx
		jl digit_less_blen
	pop rbx

	mul rbx

	exit:
		ret
