# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zoukaddo <zoukaddo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/22 03:30:23 by zoukaddo          #+#    #+#              #
#    Updated: 2023/07/22 03:49:55 by zoukaddo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc 

NAME = fractol

CFLAGS =  -I./minilibx

Linux_flag = -L/usr/lib -lXext -lX11 -lm -lz

MLX_LIB = ./minilibx-linux/libmlx.a

SRC = main.c

all : $(NAME)

bonus : all


$(NAME) :
	$(CC) $(SRC) $(CFLAGS) -o $(NAME)  $(MLX_LIB) $(Linux_flag)

clean :
	rm -rf $(NAME)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re