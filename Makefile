DESTDIR=/

HOOKS=\
	hooks/ext_live \
	hooks/ext_live_loop \

HOOKINS=\
	installs/ext_live \
	installs/ext_live_kms \
	installs/ext_live_loop \

all: install

prepare:
	mkdir -p $(DESTDIR)/usr/lib/initcpio/hooks
	mkdir -p $(DESTDIR)/usr/lib/initcpio/install
	
install: prepare
	install -dm0755 $(DESTDIR)/usr/lib/initcpio/hooks
	install -m0755 ${HOOKS} $(DESTDIR)/usr/lib/initcpio/hooks

	install -dm0755 $(DESTDIR)/usr/lib/initcpio/install
	install -m0755 ${HOOKINS} $(DESTDIR)/usr/lib/initcpio/install
	
remove:
	rm -f $(DESTDIR)/usr/lib/initcpio/hooks/*
	rm -f $(DESTDIR)/usr/lib/initcpio/install/*
