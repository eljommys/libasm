NAME		=	libasm.a

SRCS		=	ft_strlen.s\
				ft_strcmp.s\
				ft_strcpy.s\
				ft_write.s\
				ft_read.s\
				ft_strdup.s\
				ft_atoi_base.s\
				ft_list_size.s\
				ft_list_push_front.s\

OBJS		=	$(SRCS:.s=.o)

NA			=	nasm
NA_FLAGS	=	-f elf64
FLAGS 		=	-Wall -Werror -Wextra
TEST		=	test

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				rm -rf $(OBJS)

fclean:			clean
				rm -rf $(NAME) $(TEST)

re:				fclean $(NAME)

test:			$(NAME)
				gcc $(FLAGS) main.c $(NAME) -o $(TEST)
				./$(TEST) < Makefile

git:
	git add .
	git commit -m "make git done"
	git push

.PHONY:			all clean fclean re test
