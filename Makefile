CC          ?= gcc
INSTALL     ?= /usr/bin/install
DESTDIR     ?=
PREFIX      ?= /usr/local
INSTALL_DIR ?= $(DESTDIR)/$(PREFIX)/bin

OBJS = btcrack.o btcrackmain.o

CFLAGS  ?= -O3
LDFLAGS ?= -lpthread

all: btcrack

btcrack: $(OBJS)
	$(CC) -o btcrack $(OBJS) $(LDFLAGS)

install: btcrack
	$(INSTALL) -m 0755 btcrack $(INSTALL_DIR)

uninstall:
	rm -f $(INSTALL_DIR)/btcrack

clean:
	rm -f btcrack $(OBJS)