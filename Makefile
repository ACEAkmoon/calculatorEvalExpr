# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akrushin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/13 12:37:24 by akrushin          #+#    #+#              #
#    Updated: 2017/08/13 12:37:26 by akrushin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		= gcc

RM		= rm -f

NAME	= eval_expr

HEADER	= header.h

SRC		= *.c

OBJ		= *.o

CFLAGS	= -c -Wall -Wextra -Werror

all:	$(NAME)

$(NAME):
		$(CC) $(CFLAGS) $(SRC) $(HEADER)
		$(CC) -o $(NAME) $(OBJ)

clean :	
		$(RM) $(OBJ) *.gch

fclean: clean
		$(RM) $(NAME)

re :	fclean all

.PHONY:	clean fclean re
