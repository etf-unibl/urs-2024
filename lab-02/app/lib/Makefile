CFLAGS := -Wall -I../inc
SRCS_DIR := ../src

ifeq ($(STATIC),0)
libtest.so: print.o sum.o
	$(CROSS_COMPILE)gcc -shared $^ -o $@

%.o: $(SRCS_DIR)/%.c
	$(CROSS_COMPILE)gcc -c -fPIC $< $(CFLAGS) -o $@

else
libtest.a: print.o sum.o
	$(CROSS_COMPILE)ar rcs $@ $^

%.o: $(SRCS_DIR)/%.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

endif
clean:
	rm -f *.o libtest*

.PHONY: clean

