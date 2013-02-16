PREFIX = /usr/local

install :: permute permute.1
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f permute ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/permute
	mkdir -p ${DESTDIR}${PREFIX}/man/man1
	cp -f permute.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/permute.1

pdf :: permute.1
	man -t ./permute.1 > permute.ps
	ps2pdf permute.ps

print-pdf :: permute.pdf
	cygstart -p permute.pdf

clean ::
	rm -r permute.ps

remove ::
	rm -f ${DESTDIR}${PREFIX}/bin/permute
	rm -f ${DESTDIR}${PREFIX}/man/man1/permute.1
