##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

YELLOW          =       \033[0;103m
RED             =       \033[0;31m
GREEN           =       \033[0;32m
NC              =       \033[0m
GREY            =       \033[90m
BLUE            =       \033[0;94m
PURPLE          =       \033[0;95m
BG_COLOR        =       \033[46m####\033[m
IRED            =       \033[0;91m

linux_install:
	sudo cp bin/linux-gcc-64/libIrrKlang.so /lib64
	sudo cp bin/linux-gcc-64/ikpMP3.so /lib64/libikpMP3.so
	sudo cp bin/linux-gcc-64/ikpFlac.so /lib64/libikpFlac.so
	sudo mkdir /usr/local/include/irrKlang
	sudo cp include/* /usr/local/include/irrKlang

ifndef VERBOSE
MAKEFLAGS += --no-print-directory
endif

#A phony target should not be a prerequisite of a real target file;
#if it is, its recipe will be run every time make goes to update that file.
.PHONY:	all	$(NAME)	my	clean	fclean	re
