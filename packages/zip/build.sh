TERMUX_PKG_HOMEPAGE=https://github.com/r9926640-cyber/zip30?tab=readme-ov-file
TERMUX_PKG_DESCRIPTION="Tools for working with zip files"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.0"
TERMUX_PKG_REVISION=7
TERMUX_PKG_SRCURL="https://github.com/r9926640-cyber/zip30/archive/refs/heads/main.tar.gz"
TERMUX_PKG_SHA256=acc4159ce7b9f2564f6986b5a21266cc2501c2bd8000138e8b10eb3ede4d6c28
TERMUX_PKG_DEPENDS="libandroid-support, libbz2"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	cp unix/Makefile Makefile
}

termux_step_make() {
	LD="$CC $LDFLAGS" CC="$CC $CFLAGS $CPPFLAGS $LDFLAGS" make -j $TERMUX_PKG_MAKE_PROCESSES generic
}
