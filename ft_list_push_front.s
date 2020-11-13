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
	jmp add_element_if
	add_element:
		push rax
		push rdi
		mov rdi, 16
		call malloc
		pop rdi
		mov QWORD[rax], rsi
		mov QWORD[rax + 8], rdi
		mov QWORD[rdi], rax
		pop rax
		jmp exit
	create_list:
		push rax
		push rdi
		mov rdi, 16
		call malloc
		pop rdi
		mov QWORD[rax], rsi
		mov QWORD[rax + 8], 0
		mov QWORD[rdi], rax
		pop rax
		jmp exit
	add_element_if:
		cmp QWORD[rdi], 0
		jne add_element_if
		cmp QWORD[rdi], 0
		je create_list
	exit:
		ret
