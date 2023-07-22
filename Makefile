# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zoukaddo <zoukaddo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/22 03:30:23 by zoukaddo          #+#    #+#              #
#    Updated: 2023/07/22 03:33:08 by zoukaddo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc 

NAME = fractol

CFLAGS = -Wall -Wextra -Werror -I./minilibx



all : $(NAME)

bonus : all


$(NAME) : $(OBJS) $(LIBFT) $(MINILIBX)
	$(CC) $(CFLAGS) $(NAME)

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean bonus re