PREFIX=$(DESTDIR)/usr/local
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/share/man

rpm2cpio: rpm2cpio.py
	cat $< > $@
	chmod +x $@

install: rpm2cpio
	install -d $(BINDIR)
	install -m 755 rpm2cpio $(BINDIR)/
	install -d $(MANDIR)/man1
	install -m 644 rpm2cpio.1 $(MANDIR)/man1

uninstall:
	rm -f $(BINDIR)/rpm2cpio
	rm -f $(MANDIR)/man1/rpm2pcio.1

clean:
	rm -f *~ rpm2cpio *.pyc
