# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vicalons <vicalons@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/24 13:26:02 by vicalons          #+#    #+#              #
#    Updated: 2024/10/08 13:38:26 by vicalons         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Nombre de la libreria (resultado)
NAME = libft.a
# compillador (En principio no hace fatla)
CC = cc
# Las flasgs para compilar (No hace fatla)
CFLAGS = -Wall -Werror -Wextra
# Archivos (Probamos con ft_isalpha.c)
SRC = ft_isalpha.c \
      ft_isdigit.c \
      ft_isalnum.c \
      ft_isascii.c \
      ft_isprint.c \
      ft_toupper.c \
      ft_tolower.c \
      ft_strlen.c \
      ft_strlcpy.c \
      ft_strlcat.c \
      ft_strchr.c \
      ft_strrchr.c \
      ft_strncmp.c \
      ft_strnstr.c \
      ft_memset.c \
      ft_bzero.c \
      ft_memcpy.c \
      ft_memmove.c \
      ft_memchr.c \
      ft_memcmp.c \
      ft_atoi.c \
      ft_calloc.c \
      ft_strdup.c \
      ft_substr.c \
      ft_strjoin.c \
      ft_strtrim.c \
      ft_split.c \
      ft_itoa.c \
      ft_strmapi.c \
      ft_striteri.c \
      ft_putchar_fd.c \
      ft_putstr_fd.c \
      ft_putendl_fd.c \
      ft_putnbr_fd.c
BNSSRC = ft_lstnew_bonus.c \
	 ft_lstadd_front_bonus.c \
	 ft_lstsize_bonus.c \
	 ft_lstlast_bonus.c \
	 ft_lstadd_back_bonus.c \
	 ft_lstdelone_bonus.c \
	 ft_lstclear_bonus.c \
	 ft_lstiter_bonus.c \
	 ft_lstmap_bonus.c
# Convertir los objetos
OBJ = $(SRC:.c=.o)
# Objetos Bonus
BNSOBJ = $(BNSSRC:.c=.o)
# Ejecutamos el make
all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)
bonus: $(BNSOBJ)
	ar -rcs $(NAME) $(BNSOBJ)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f $(OBJ) $(BNSOBJ)
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re bonus
