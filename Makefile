NAME = libft.a

INCLS = includes
SRCS = $(wildcard srcs/*.c)
OBJS = $(SRCS:srcs/%.c=objs/%.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra -g
LFLAGS = -I.
AR = ar rcs

RLIB = ranlib

all:	obj
	$(MAKE) -j $(NAME)

obj:
	mkdir -p objs

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	$(RLIB) $(NAME)
	echo "[INFO] $(NAME) created!"

objs/%.o: srcs/%.c
	$(CC) $(FLAGS) -c $< -o $@ $(LFLAGS)/$(INCLS)

clean:	
	rm -rf $(OBJS) objs
	echo "[INFO] Objects removed!"

fclean: clean
	rm -rf $(NAME) $(LIB_DIR)
	echo "[INFO] Library [$(NAME)] removed!"

re: fclean all

.PHONY: all clean fclean re
