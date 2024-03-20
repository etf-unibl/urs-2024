CFLAGS := -Wall -I./inc
LDFLAGS := -static -ltest -L./lib
STATIC=yes

app: src/app.o lib/libtest.a
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean

.PHONY: clean

