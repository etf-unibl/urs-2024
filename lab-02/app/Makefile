CFLAGS := -Wall -I./inc
LDFLAGS := -ltest -L./lib
STATIC := 1
DESTDIR := .

$(DESTDIR)app: src/app.o lib/libtest.a
	ifreq ($(STATIC),1)
		$(CROSS_COMPILE)gcc src/app.o -o $@ -static $(LDFLAGS)
	else
		$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean

.PHONY: clean

