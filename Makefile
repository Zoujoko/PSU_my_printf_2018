##
## EPITECH PROJECT, 2018
## makefile
## File description:
## yes
##
TEST	=	test.c

LIB	=	./lib/my/*.o

SRCLIB	=	./lib/my/*.c

NAME	=	libmy.a

BINAME	=	my_printf

INC	=	-I ./include

LIBMY	=	-L ./lib/my $(INC) -lmy

$(NAME) : 	$(SRCLIB) $(LIB)
		make -C ./lib/my
		cp ./lib/my/libmy.a libmy.a

try	:	$(TEST)
		gcc $(TEST) -o $(BINAME) $(LIBMY)
clean	:
		$(RM) $(LIB)
		$(RM) $(OBJ)
		$(RM) $(BINAME)

fclean	:	clean
		rm -f ./lib/my/*.a
		rm -f $(BINAME)
		rm -f $(NAME)

re 	:	clean all

all	:	$(NAME)

.PHONY	:	all clean fclean re
