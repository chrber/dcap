
if WANT_LIBGSSTUNNEL
GSSAPI = gssapi
endif
if WANT_LIBSSLTUNNEL
SSL = ssl
endif

SUBDIRS = $(GSSAPI) $(SSL)

.PHONY: tags
tags:
	make TAGS
	list=''; for subdir in "$list"; do \
	test "$subdir" = . || (cd $subdir && make tags); \
		echo $subdir; \
	done
