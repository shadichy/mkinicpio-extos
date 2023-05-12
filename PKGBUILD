pkgname=mkinitcpio-extos
pkgver=0.0.1
pkgrel=1
pkgdesc="ExtOS hooks for mkinitcpio."
arch=("any")
license=('GPL')
depends=("mkinitcpio")

package() {
	# cd "$srcdir/$pkgname"
	cd ..
	make install DESTDIR=$pkgdir
}
