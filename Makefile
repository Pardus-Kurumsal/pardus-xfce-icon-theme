ifndef PREFIX
	PREFIX = /usr/share/icons
endif

all: install

install:
	@echo "Installing Pardus Xfce icon themes"
	@cp -fr pardus-xfce-icon-theme $(DESTDIR)$(PREFIX) 
	@cp -fr pardus-xfce-icon-theme-dark $(DESTDIR)$(PREFIX)
	@gtk-update-icon-cache -q -f -t $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme
	@gtk-update-icon-cache -q -f -t $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme-dark

uninstall:
	@echo "Removing Pardus Xfce icon themes"
	@rm -fr $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme
	@rm -fr $(DESTDIR)$(PREFIX)/pardus-xfce-icon-theme-dark

.PHONY: install uninstall
