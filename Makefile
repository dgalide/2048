# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jguyet <jguyet@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/29 22:25:20 by jguyet            #+#    #+#              #
#    Updated: 2016/01/31 21:52:35 by dgalide          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = main.c\
	tools.c\
	replace.c\
	sum.c\
	map_comp.c\
	print.c\
	replace_all.c\
	load_game.c

NAME_EXE = 2048

FLAGS = -Werror -Wextra -Wall -lncurses

SRCO = $(SRC:.c=.o)

$(NAME): 	all

all:
	@make -C libft
	@gcc -I ./includes -L libft $(SRC) $(FLAGS) -o $(NAME_EXE) -lft
	@echo "Compiling" [ $(NAME_EXE) ] "\033[32mSUCCESS\033[00m"

clean:
	@make -C libft fclean
	@rm -rf $(SRCO)
	@echo "Cleaning" [ $(NAME_EXE) ] "..." "\033[35mOK\033[00m"

fclean:		clean
	@rm -rf $(NAME_EXE)

re:		fclean all

.PHONY: all clean fclean re

