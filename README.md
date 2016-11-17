##Pardus Xfce Icon Theme
Pardus Xfce Icon Theme Package for Xfce Desktop Environment

###Installing
```sh
sudo apt-get install git make
git clonehttp://10.10.20.13:10080/yusuf/pardus-xfce-icon-theme
cd pardus-xfce-icon-theme
sudo make install
```

###Uninstalling
```sh
cd pardus-xfce-icon-theme
sudo make uninstall
```

###Deb Packaging
```sh
sudo apt-get install build-essential debmake debhelper git-buildpackage pristine-tar
cd pardus-xfce-icon-theme
debmake -n -u 0.1(_Version_)
```

**Edit debian/* files**

**_debian/copyright_**
>Format: http://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
Upstream-Name: Planet Venus
Upstream-Contact: John Doe <jdoe@example.com>
Source: http://www.example.com/code/venus

>Files: debian/patches/theme-diveintomark.patch
Copyright: 2008, Joe Hacker <hack@example.org>
License: GPL-2+
 [LICENSE TEXT]

>Files: planet/vendor/htmltmpl.py
Copyright: 2004, Thomas Brown <coder@example.org>
License: GPL-2+
 This program is free software; you can redistribute it
 and/or modify it under the terms of the GNU General Public
 License as published by the Free Software Foundation; either
 version 2 of the License, or (at your option) any later
 version.
 .
 This program is distributed in the hope that it will be
 useful, but WITHOUT ANY WARRANTY; without even the implied
 warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 PURPOSE.  See the GNU General Public License for more
 details.
 .
 You should have received a copy of the GNU General Public
 License along with this package; if not, write to the Free
 Software Foundation, Inc., 51 Franklin St, Fifth Floor,
 Boston, MA  02110-1301 USA
 .
 On Debian systems, the full text of the GNU General Public
 License version 2 can be found in the file
 `/usr/share/common-licenses/GPL-2'.

**_debian/changelog_**
>pardus-xfce-icon-theme (0.1) pardus; urgency=low

>  * Initial release.

> -- Yusuf Düzgün <yusuf.duzgun@pardus.org.tr>  Wed, 16 Nov 2016 17:32:57 +0300

**_debian/control_**
>Source: pardus-xfce-icon-theme
Section: xfce
Priority: extra
Maintainer: Yusuf Düzgün <yusuf.duzgun@pardus.org.tr>
Build-Depends: debhelper (>=9)
Standards-Version: 3.9.7
Homepage: http://pardus.org.tr

>Package: pardus-xfce-icon-theme
Architecture: any
Multi-Arch: foreign
Depends: 
Description: Pardus Xfce Icon Theme for Pardus XFCE desktop environment
 Pardus xfce icon theme package have 2 icon theme set.
 "pardus-xfce-icon-theme" for normal(white) panel.
 "pardus-xfce-icon-theme-dark" for dark(black) panel.

