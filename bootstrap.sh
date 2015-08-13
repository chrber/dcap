#!/bin/sh
set -x
mkdir -p config
aclocal -I config
autoheader

case `uname` in
    Darwin*)
        glibtoolize --automake
        ;;
    *)
        libtoolize --automake
        ;;
esac

automake  --add-missing --copy --foreign
autoconf

