CFLAGS := -Wall -I../inc
SRCS_DIR := ../src
STATIC ?= 1

ifeq ($(STATIC),1)
    LIBS := -static
else
    LIBS :=
endif

libtest.a: print.o sum.o
    $(CROSS_COMPILE)ar rcs $@ $^

%.o: $(SRCS_DIR)/%.c
    $(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

clean:
    rm -f *.o libtest*

.PHONY: clean

