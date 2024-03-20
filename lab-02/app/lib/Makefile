CFLAGS := -Wall -I../inc
SRCS_DIR := ../src

test:
	@echo $(STATIC)

ifneq ($(STATIC),0)
libtest.a: print.o sum.o
	$(CROSS_COMPILE)ar rcs $@ $^

else
libtest.so: print.o sum.o
	$(CROSS_COMPILE)gcc -shared $^ -o $@


endif
%.o: $(SRCS_DIR)/%.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

clean:
	rm -f *.o libtest*

.PHONY: clean

