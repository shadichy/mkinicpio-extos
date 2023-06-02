DESTDIR=/

HOOKS=\
	dist/hooks/ext_live \
	dist/hooks/ext_live_loop \

HOOKINS=\
	dist/installs/ext_live \
	dist/installs/ext_live_kms \
	dist/installs/ext_live_loop \

all: install

prepare:
	rm -rf dist
	mkdir -p $(DESTDIR)/usr/lib/initcpio/hooks
	mkdir -p $(DESTDIR)/usr/lib/initcpio/install
	sh build.sh
	
install: prepare
	install -dm0755 $(DESTDIR)/usr/lib/initcpio/hooks
	install -m0755 ${HOOKS} $(DESTDIR)/usr/lib/initcpio/hooks

	install -dm0755 $(DESTDIR)/usr/lib/initcpio/install
	install -m0755 ${HOOKINS} $(DESTDIR)/usr/lib/initcpio/install
	rm -rf dist
	
remove:
	rm -f $(DESTDIR)/usr/lib/initcpio/hooks/*
	rm -f $(DESTDIR)/usr/lib/initcpio/install/*
