# Default value for STATIC (1 for static linking, 0 for dynamic linking)
STATIC ?= 1
DESTDIR ?= ./bin

all: app install

ifeq ($(STATIC), 1)
    # Static linking configuration
    CFLAGS := -Wall -I./inc
    LDFLAGS := -static -ltest -L./lib

    app: src/app.o lib/libtest.a
	    $(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

    src/app.o: src/app.c
	    $(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

    lib/libtest.a:
	    $(MAKE) -C lib libtest.a

else
    # Dynamic linking configuration
    CFLAGS := -Wall -I./inc -fPIC
    LDFLAGS := -shared -ltest -L./lib

    app: src/app.o lib/libtest.so
	    $(CROSS_COMPILE)gcc src/app.o -o $@ $(LDFLAGS)

    src/app.o: src/app.c
	    $(CROSS_COMPILE)gcc -c $< $(CFLAGS) -o $@

    lib/libtest.so:
	    $(MAKE) -C lib libtest.so

endif

$(DESTDIR):
	mkdir -p $(DESTDIR)

install: app | $(DESTDIR)
	install -m 755 app $(DESTDIR)/app

clean:
	rm -f app src/*.o
	#rm -r ./bin
	$(MAKE) -C lib clean

.PHONY: clean install
