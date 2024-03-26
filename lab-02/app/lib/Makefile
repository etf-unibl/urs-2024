# Default value for linking type (1 for static, 0 for dynamic)
STATIC ?= 1

ifeq ($(STATIC), 1)
    # Static linking configuration
    CFLAGS := -Wall -I../inc
    SRCS_DIR := ../src

    libtest.a: print.o sum.o
	    $(CROSS_COMPILE)ar rcs $@ $^

    %.o: $(SRCS_DIR)/%.c
	    $(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

    clean:
	    rm -f *.o libtest*

.PHONY: clean

else
    # Dynamic linking configuration
    CFLAGS := -Wall -I../inc -fPIC
    SRCS_DIR := ../src

    libtest.so: print.o sum.o
	    $(CROSS_COMPILE)gcc -shared $^ -o $@

    %.o: $(SRCS_DIR)/%.c
	    $(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

    clean:
	    rm -f *.o libtest*

.PHONY: clean

endif

