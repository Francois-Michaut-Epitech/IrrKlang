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
       sudo mkdir -p /usr/local/lib/
       sudo cp linux/lib/* /usr/local/lib/
       sudo mkdir -p /usr/local/include/SFML
       sudo cp linux/include/* /usr/local/include/SFML

windows_install:
       mkdir /SFML/lib/
       cp win/lib/* /SFML/lib/
       cp win/bin/* /SFML/lib/
       mkdir /SFML/include/SFML
       cp win/include/SFML/* /SFML/include/SFML

ifndef VERBOSE
MAKEFLAGS += --no-print-directory
endif

#A phony target should not be a prerequisite of a real target file;
#if it is, its recipe will be run every time make goes to update that file.
.PHONY:        linux_install	windows_install
