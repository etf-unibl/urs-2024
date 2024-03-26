CFLAGS := -Wall -I../inc
SRCS_DIR := ../src

STATIC := 1

libtest.a: print.o sum.o
	ifreq ($(STATIC),1)
		$(CROSS_COMPILE) ar rcs $@ $^
	else
		$(CROSS_COMPILE)gcc -shared $^ $@
	endif

%.o: $(SRCS_DIR)/%.c
	ifreq ($(STATIC),0)
		$(CROSS_COMPILE)gcc -c -fPIC $< $(CFLAGS) -o $@
	else 
		$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

clean:
	rm -f *.o libtest*

.PHONY: clean

