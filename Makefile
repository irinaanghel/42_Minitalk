# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pcatapan <pcatapan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/31 18:47:45 by aanghel           #+#    #+#              #
#    Updated: 2022/03/31 19:56:10 by pcatapan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

N_SERVER = server

N_CLIENT = client

CC = gcc

FLAGS = -Wall -Werror -Wextra

all: $(N_SERVER) $(N_CLIENT)

$(N_SERVER) :
			$(CC) $(FLAGS) server.c -o $(N_SERVER)

$(N_CLIENT) :
			$(CC) $(FLAGS) client.c -o $(N_CLIENT)

norm:
	norminette -R *.c

clean: 
		rm -f *.o

fclean: clean
		rm -f $(N_SERVER) $(N_CLIENT)

re: fclean all

.PHONY : all clean fclean re norm
