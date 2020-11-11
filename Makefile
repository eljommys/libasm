NAME =	libasm.a

SRC =	ft_strlen.s\
		ft_strcpy.s\
		ft_strcmp.s\
		ft_write.s\

OBJ =	ft_strlen.o\
		ft_strcpy.o\
		ft_strcmp.o\
		ft_write.o\

SFLAGS = -f elf64

all:
	$(NAME)

$(NAME): $(OBJ)
	nasm $(SFLAGS) $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -rf $(OBJ)

fclean:
	clean
	rm -rf $(NAME)

re:
	fclean
	all

.PHONY: all clean fclean re
