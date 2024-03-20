CFLAGS := -Wall -I./inc

STATIC := true
ifeq ($(STATIC), true)
LDFLAGS := -static -ltest -L./lib
else
LDFLAGS := -ltest -L./lib
endif


DESTDIR := .

ifeq ($(STATIC), true)
app: src/app.o lib/libtest.a
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE)  -C lib libtest.a

else
app: src/app.o lib/libtest.so
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.so:
	$(MAKE) -C lib libtest.so
endif

install: app
	cp app $(DESTDIR)

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean

.PHONY: clean

