NAME =	libasm.a

SRC =	ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_write.s\
		ft_read.s\
		ft_strdup.s\
		ft_atoi_base.s\
		ft_list_push_front.s\
		ft_list_size.o\

OBJ =	ft_strlen.o\
		ft_strcpy.o\
		ft_strcmp.o\
		ft_write.o\
		ft_read.o\
		ft_strdup.o\
		ft_atoi_base.o\
		ft_list_push_front.o\
		ft_list_size.o\

SFLAGS = -f elf64

all: $(NAME)

$(NAME):
	nasm $(SFLAGS) $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -rf a.out

re: fclean all

.PHONY: all clean fclean re
