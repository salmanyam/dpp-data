# Generated automatically from Makefile.in by configure.
#
# Copyright (c) 1999 WU-FTPD Development Group.
# All rights reserved.
# 
# Portions Copyright (c) 1980, 1985, 1988, 1989, 1990, 1991, 1993, 1994 
#    The Regents of the University of California.  
# Portions Copyright (c) 1993, 1994 Washington University in Saint Louis.  
# Portions Copyright (c) 1989 Massachusetts Institute of Technology.  
# Portions Copyright (c) 1998 Sendmail, Inc.
# Portions Copyright (c) 1983, 1995, 1996, 1997 Eric P. Allman.  
# Portions Copyright (c) 1996, 1998 Berkeley Software Design, Inc.  
# Portions Copyright (C) 1991, 1992, 1993, 1994, 1995 1996, 1997 
#    Free Software Foundation, Inc.  
# Portions Copyright (c) 1997 Stan Barber.  
# Portions Copyright (c) 1997 Kent Landfield.
# 
# Use and distribution of this software and its source code are governed by 
# the terms and conditions of the WU-FTPD Software License ("LICENSE").
# 
# If you did not receive a copy of the license, it may be obtained online at
# http://www.wu-ftpd.org/license.html.
# 
# $Id: Makefile.in,v 1.10 1999/09/18 09:56:37 wuftpd Exp $
#

prefix=/usr
exec_prefix=${prefix}
srcdir=.
mandir=${prefix}/man
INSTALL=/usr/bin/install -c
INSTALL_PROGRAM=${INSTALL}
INSTALL_DATA=${INSTALL} -m 644

all:
	(cd support ; $(MAKE) all)
	(cd util/privatepw ; $(MAKE) all)
	(cd src ; $(MAKE) all)
	if [ ! -d bin ]; then mkdir bin; fi
	rm -f bin/ftpd bin/ftpshut bin/ftpcount bin/ftpwho bin/ckconfig bin/ftprestart
	ln src/ftpd bin
	ln src/ftpshut bin
	ln src/ftpcount bin
	ln src/ftpcount bin/ftpwho
	ln src/ckconfig bin
	ln src/ftprestart bin
	size bin/ftpd bin/ftpshut bin/ftpcount bin/ftpwho bin/ckconfig bin/ftprestart
clean:
	(cd support ; $(MAKE) clean)
	(cd util/privatepw ; $(MAKE) clean)
	(cd src ; $(MAKE) clean)
	-rm -rf bin
distclean: clean
	(cd support ; $(MAKE) distclean)
	(cd util/privatepw ; $(MAKE) distclean)
	(cd src ; $(MAKE) distclean)
	-rm -f *~
	-rm -f src/*~
	-rm -f support/*~
	-rm -f doc/*~
	-rm -f util/*~
	-rm -f config.log config.status config.cache Makefile config.h
install: all
	@echo installing binaries.
	-@mkdir -p ${exec_prefix}/sbin
	-@mkdir -p ${exec_prefix}/bin
	${INSTALL} -o bin -g bin -m 755 bin/ftpd ${exec_prefix}/sbin/in.ftpd
	${INSTALL} -o bin -g bin -m 755 bin/ftpshut ${exec_prefix}/sbin/ftpshut
	${INSTALL} -o bin -g bin -m 755 bin/ftpcount ${exec_prefix}/bin/ftpcount
	${INSTALL} -o bin -g bin -m 755 bin/ftpwho ${exec_prefix}/bin/ftpwho
	${INSTALL} -o bin -g bin -m 755 bin/ckconfig ${exec_prefix}/sbin/ckconfig
	${INSTALL} -o bin -g bin -m 755 bin/ftprestart ${exec_prefix}/sbin/ftprestart
	@echo installing manpages.
	-@mkdir -p $(mandir)
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpd.8 $(mandir)/man8/ftpd.8
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpcount.1 $(mandir)/man1/ftpcount.1
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpwho.1 $(mandir)/man1/ftpwho.1
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpshut.8 $(mandir)/man8/ftpshut.8
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpaccess.5 $(mandir)/man5/ftpaccess.5
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftphosts.5 $(mandir)/man5/ftphosts.5
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpconversions.5 $(mandir)/man5/ftpconversions.5
#	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftpservers.5 $(mandir)/man5/ftpservers.5
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/xferlog.5 $(mandir)/man5/xferlog.5
	${INSTALL} -m 644 -o bin -g bin -m 644 doc/ftprestart.8 $(mandir)/man8/ftprestart.8
	@if test ! -f /etc/ftpaccess; then echo "Since you didn't have a ftpaccess file, the sample has been"; echo "installed to /etc/ftpaccess."; echo "You will probably want to edit it."; /usr/bin/install -c -c -o bin -g bin -m 644 doc/examples/ftpaccess /etc/ftpaccess; fi
	@if test ! -f /etc/ftpconversions; then echo "Since you didn't have a ftpconversions file, the sample has been"; echo "installed to /etc/ftpconversions."; echo "You will probably want to edit it."; /usr/bin/install -c -c -o bin -g bin -m 644 doc/examples/ftpconversions /etc/ftpconversions; fi
