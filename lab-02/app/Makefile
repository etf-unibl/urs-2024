CFLAGS := -Wall -I./inc

STATIC ?= yes
DESTDIR ?= /usr/local/bin

ifeq ($(STATIC),yes)
    LDFLAGS := -static -ltest -L./lib
else
    LDFLAGS := -ltest -L./lib
endif

app: src/app.o lib/libtest.a
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean
		
install:
	cp app $(DESTDIR)

.PHONY: clean, install

