# Compiler
C ?= gcc

# Compiler flags
CFLAGS ?= --std=c17 -Wall -Werror -pedantic -g -Wno-sign-compare -Wno-comment -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG

gpio_test.exe: gpio_test.c
	$(C) $(CFLAGS) gpio_test.c -o $@

# disable built-in rules
.SUFFIXES:

# these targets do not create any files
.PHONY: clean
clean :
	rm -vrf *.o *.exe *.gch *.dSYM *.stackdump *.out.txt