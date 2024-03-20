CFLAGS := -Wall -I./inc
ifneq ($(STATIC),0)
LDFLAGS := -static -ltest -L./lib
app: src/app.o lib/libtest.a
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a STATIC=$(STATIC)

else
LDFLAGS := -ltest -L./lib
app: src/app.o lib/libtest.so
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.so:
	$(MAKE) -C lib libtest.so STATIC=$(STATIC)

endif
install: app
	cp app $(DESTDIR)

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean
.PHONY: clean install


