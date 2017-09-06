build:
	@echo "no build step."

package:
	git-deb-changelog > debian/changelog
	gbp buildpackage -us -uc

clean:
	@echo "No clean step"

install:
	install -Dm 644 -o root -g root 20-intel.conf ${DESTDIR}/etc/X11/xorg.conf.d/20-intel.conf
	install -Dm 644 -o root -g root 40-monitor.conf ${DESTDIR}/etc/X11/xorg.conf.d/40-monitor.conf
	install -Dm 644 -o root -g root 99-touchscreen.conf ${DESTDIR}/etc/X11/xorg.conf/99-touchscreen.conf
	install -Dm 755 -o root -g root gpdfan ${DESTDIR}/usr/bin/gpdfan
	install -Dm 755 -o root -g root gpdfan.init ${DESTDIR}/etc/init.d/gpdfan
