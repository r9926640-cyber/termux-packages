TERMUX_PKG_HOMEPAGE=https://github.com/r9926640-cyber/zip30?tab=readme-ov-file
TERMUX_PKG_DESCRIPTION="Tools for working with zip files"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@RJ"
TERMUX_PKG_VERSION="3.0.0.1"
TERMUX_PKG_REVISION=7
TERMUX_PKG_SRCURL="https://github.com/r9926640-cyber/zip30/archive/refs/heads/main.tar.gz"
TERMUX_PKG_SHA256=86dd59a49c80ba0007ad417a8c29af57ceeeaa0340b22df6463f6f1ecbde7424
TERMUX_PKG_DEPENDS="libandroid-support, libbz2"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	cp unix/Makefile Makefile
}

termux_step_make() {
	LD="$CC $LDFLAGS" CC="$CC $CFLAGS $CPPFLAGS $LDFLAGS" make -j $TERMUX_PKG_MAKE_PROCESSES generic
}
