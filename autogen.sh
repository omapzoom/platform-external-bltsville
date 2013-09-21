#! /bin/sh

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

ORIGDIR=`pwd`
cd $srcdir

libtoolize --copy --force
autoreconf -v --install --force || exit 1

cd $ORIGDIR || exit $?

test -n "$NOCONFIGURE" && {
  echo "skipping configure stage as requested."
  echo "autogen.sh done."
  exit 0
}

$srcdir/configure --enable-maintainer-mode --host=arm-linux-gnueabihf "$@"
