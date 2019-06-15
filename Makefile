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

MKDIR_EXE	=	mkdir
CP_EXE	=	cp
INSTALL_DIR	=	/SFML

linux_install:
	sudo mkdir -p /usr/local/lib/
	sudo cp linux/lib/* /usr/local/lib/
	sudo mkdir -p /usr/local/include/SFML
	sudo cp linux/include/* /usr/local/include/SFML

windows_install:
	$(MKDIR_EXE) -p "$(INSTALL_DIR)"
	$(MKDIR_EXE) -p "$(INSTALL_DIR)\lib"
	$(CP_EXE) ./win/lib/* "$(INSTALL_DIR)\lib"
	$(CP_EXE) ./win/bin/* "$(INSTALL_DIR)\lib"
	$(MKDIR_EXE) -p "$(INSTALL_DIR)\include"
	$(MKDIR_EXE) -p "$(INSTALL_DIR)\include\SFML"
	$(CP_EXE) -r ./win/include/SFML "$(INSTALL_DIR)\include"
	$(CP_EXE) ./win/bin/* ../..

ifndef VERBOSE
MAKEFLAGS += --no-print-directory
endif

#A phony target should not be a prerequisite of a real target file;
#if it is, its recipe will be run every time make goes to update that file.
.PHONY:        linux_install	windows_install
