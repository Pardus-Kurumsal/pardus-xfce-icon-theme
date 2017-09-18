ifndef PREFIX
	PREFIX = /usr/share/icons
endif

all: install

install:
	@echo "Installing Pardus Xfce icon themes"
	mkdir -p $(DESTDIR)$(PREFIX)
	@cp -fr pardus-xfce-icon-theme-dark $(DESTDIR)$(PREFIX)
	@cp -fr pardus-xfce-icon-theme-darker $(DESTDIR)$(PREFIX)

uninstall:
	@echo "Removing Pardus Xfce icon themes"
	@rm -fr $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme-dark
	@rm -fr $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme-darker

.PHONY: install uninstall
