build:
	@echo "no build step."

package:
	git-deb-changelog > debian/changelog
	gbp buildpackage -us -uc

clean:
	@echo "No clean step"

install:
	install -Dm 644 -o root -g root 20-intel.conf ${DESTDIR}/etc/X11/xorg.conf.d/20-intel.conf
