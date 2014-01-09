# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfeijoo <cfeijoo@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/12/03 17:38:57 by cfeijoo           #+#    #+#              #
#    Updated: 2013/12/10 11:30:52 by cfeijoo          ###   ########.fr        #
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
	@echo "\n**** COMPILING $(NAME)\n"
	$(CC) $(CFLAGS) -I $(INCFOLDER) -c $(SRC)

updatelib:
	@echo "\n**** UPDATING LIB\n"
	cd $(LIBFOLDER)	\
	&& git pull
	make -C $(LIBFOLDER) re

test: $(NAME)
	@echo "\n**** COMPILING TEST\n"
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
