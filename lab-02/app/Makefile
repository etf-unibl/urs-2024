CFLAGS := -Wall -I./inc

ifeq ($(STATIC),0) 
LDFLAGS := -ltest -L./lib
else
LDFLAGS := -static -ltest -L./lib
endif

app: src/app.o lib/libtest.a
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a STATIC=$(STATIC)
	
install: app
	cp app $(DESTDIR)

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean

.PHONY: clean

