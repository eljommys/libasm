section .text
	global ft_list_push_front
	extern malloc

;STRUCTURE USED
;
;typedef struct		s_list
;{
;	void			*data;
;	struct s_list	*next;
;}					t_list;

ft_list_push_front:
	push	rsp
	push	rdi
	push	rsi
	mov		rdi, 16
	xor		rax, rax
	call	malloc
	pop		rsi
	pop		rdi
	cmp		rax, 0
	je		exit
	mov		[rax], rsi
	mov		rcx, [rdi]
	mov		[rax + 8], rcx
	mov		[rdi], rax
	exit:
		pop		rsp
		ret
