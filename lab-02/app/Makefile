CFLAGS := -Wall -I./inc
ifeq ($(STATIC),0)
LDFLAGS := -ltest -L./lib
else
LDFLAGS := -static -ltest -L./lib
endif

app: src/app.o lib/libtest.$(if $(filter 1,$(STATIC)),a,so)
	$(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

src/app.o: src/app.c
	$(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

lib/libtest.a:
	$(MAKE) -C lib libtest.a

lib/libtest.so:
	$(MAKE) -C lib libtest.so STATIC=$(STATIC)

clean:
	rm -f app src/*.o
	$(MAKE) -C lib clean

.PHONY: clean
