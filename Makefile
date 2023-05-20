NAME = libftprintf.a

HEADER = ft_printf.h

CC = gcc

CFLAGS = -Wall -Werror -Wextra

LIB = ar rcs

SRCS = ft_printf.c print_char.c print_str.c print_hexa.c

OBJS = $(SRCS:.c=.o)

RM = rm -f

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	$(LIB) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)
	

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY : all clean fclean re
