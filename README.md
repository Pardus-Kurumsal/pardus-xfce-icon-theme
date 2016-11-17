## Pardus Xfce Icon Theme
Pardus Xfce Icon Theme Package for Xfce Desktop Environment

### Installing
```sh
sudo apt-get install git make
git clonehttp://10.10.20.13:10080/yusuf/pardus-xfce-icon-theme
cd pardus-xfce-icon-theme
sudo make install
```

### Uninstalling
```sh
cd pardus-xfce-icon-theme
sudo make uninstall
```

### Deb Packaging
```sh
sudo apt-get install build-essential debmake debhelper git-buildpackage pristine-tar
cd pardus-xfce-icon-theme
debmake -n -u 0.1(_Version_)
```

** "debmake" command created debian files. **
** We must control and edit all debian files. **


Now, install necessary packages for countine packaging.
```
sudo apt-get install git-buildpackage rsync
```

go package folder
```
cd pardus-xfce-icon-theme
touch .drone.yml
```

copy paste .drone.yml
```
build:
  package:
    image: pardus/pardus-package
    volumes:
      - /tmp/packages:/packages
    commands:
      - echo "TODO lintian -i /packages/$(basename $DRONE_REPO)/*.changes"
      - apt-get update
      - apt-get install build-essential equivs devscripts
      - mkdir -p build-area
      - cd build-area
      - dpkg-source -x /packages/$(basename $DRONE_REPO)/*.dsc build-$(basename $DRONE_REPO)
      - cd build-$(basename $DRONE_REPO)
      - mk-build-deps -i -r
      - dpkg-buildpackage -b -uc
      - cd ..
      - cp  -vt /packages/$(basename $DRONE_REPO) *.udeb *.deb *.changes 2>/dev/null || true
  test:
    image: pardus/pardus-test
    volumes:
      - /tmp/packages:/packages
    commands:
      - apt-get update
      - apt-get install /packages/$(basename $DRONE_REPO)/*.deb
  deploy:
    image: pardus/pardus-test
    volumes:
      - /tmp/packages:/packages
    commands:
      - apt-get update
      - echo "TODO deployment container (pardus/pardus-deploy) is yet to be prepared"
      - ls -al /packages/$(basename $DRONE_REPO)
      - echo "deployment commands go here"
branches:
  - master
```

Make debian ignore '.drone.yml'
```
echo 'extend-diff-ignore = ".drone.yml"' >> debian/source/local-options
```
