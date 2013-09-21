
## Process this file with automake to produce Makefile.in

SUBDIRS                      =
ACLOCAL_AMFLAGS = -I m4
lib_LTLIBRARIES              = libbltsville_hw2d.la

libbltsville_hw2d_la_SOURCES = gcbv/gcmain.c \
                               gcbv/mirror/gcbv.c gcbv/mirror/gcparser.c \
                               gcbv/mirror/gcmap.c gcbv/mirror/gcbuffer.c \
                               gcbv/mirror/gcfill.c gcbv/mirror/gcblit.c \
                               gcbv/mirror/gcfilter.c gcbv/mirror/gcdbglog.c
libbltsville_hw2d_la_CFLAGS  = -fPIC -Wno-pointer-to-int-cast -DBUILDOS_LINUX=1\
				$(WARN_CFLAGS) \
				-Igcbv/mirror/include \
                                -Ibltsville/include \
                                -Iocd/include \
                                -Igcbv/mirror/ \
                                -Igcbv/

libbltsville_hw2d_la_LDFLAGS = -lpthread -lrt -no-undefined -version-info 1:0:0
libbltsville_hw2d_la_LIBADD  =

libbltsville_hw2d_la_includedir = $(includedir)/bltsville
libbltsville_hw2d_la_include_HEADERS = bltsville/include/bvblend.h \
                                        bltsville/include/bltsville.h \
                                        bltsville/include/bvbuffdesc.h \
                                        bltsville/include/bvcache.h \
                                        bltsville/include/bventry.h \
                                        bltsville/include/bverror.h \
                                        bltsville/include/bvfilter.h \
                                        bltsville/include/bvsurfgeom.h \
                                        ocd/include/ocd.h

pkgconfig_DATA               = libbltsville_hw2d.pc
pkgconfigdir                 = $(libdir)/pkgconfig

install-exec-hook:
	cd $(DESTDIR)$(libdir) && \
          $(LN_S) libbltsville_hw2d.so.$(VERSION) libbltsville_2d.so

