DESTDIR ?= tmp/output
INSTALL ?= install

all:

clean:

mrproper: clean
	rm -rf tmp/output
	-rmdir --ignore-fail-on-non-empty --parents tmp

install:
	umask 022
	mkdir -p $(DESTDIR)/lib/udev/rules.d
	cp -rt $(DESTDIR)/lib/udev udev/libvirt-attach-usb
	cp -rt $(DESTDIR)/lib/udev/rules.d udev/80-libvirt-attach.rules

.PHONY: all install clean
