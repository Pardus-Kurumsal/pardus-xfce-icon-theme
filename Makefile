ICONS_TARGET=/usr/share/icons

all: install

install:
	@echo "Installing Pardus Xfce icon themes"
	@cp -fr pardus-xfce-icon-theme $(ICONS_TARGET)
	@cp -fr pardus-xfce-icon-theme-dark $(ICONS_TARGET)
	@gtk-update-icon-cache -t $(ICONS_TARGET)/pardus-xfce-icon-theme
	@gtk-update-icon-cache -t $(ICONS_TARGET)/pardus-xfce-icon-theme-dark

uninstall:
	@echo "Removing Pardus Xfce icon themes"
	@rm -fr $(ICONS_TARGET)/pardus-xfce-icon-theme
	@rm -fr $(ICONS_TARGET)/pardus-xfce-icon-theme-dark

.PHONY: install uninstall
