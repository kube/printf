# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/12/03 17:38:57 by cfeijoo           #+#    #+#              #
#    Updated: 2013/12/09 03:02:24 by cfeijoo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_printf

LIBNAME = ft
LIBFOLDER = libft
INCFOLDER = libft/includes

SRC	= ft_printf.c
OSRC = $(SRC:.c=.o)

TESTFILE = main.c
OTESTFILE = $(TESTFILE:.c=.o)
TESTNAME = test_printf

CFLAGS = -g -Wall -Wextra -Werror
CC = gcc

$(NAME):
	$(CC) $(CFLAGS) -I $(INCFOLDER) -c $(SRC)

test: $(NAME)
	$(CC) -c -I $(INCFOLDER) $(TESTFILE) $(CFLAGS)
	$(CC) -o $(TESTNAME) -L$(LIBFOLDER) -l$(LIBNAME) $(OTESTFILE) $(OSRC)

clean:
	if [ -f $(OSRC) ]; \
		then /bin/rm -f $(OSRC); \
	fi

fclean: clean
	if [ -f $(TESTNAME) ]; \
		then /bin/rm -f $(TESTNAME); \
	fi

re: fclean $(NAME)

retest: fclean test
