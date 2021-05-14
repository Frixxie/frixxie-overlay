# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7


# inherit lists eclasses to inherit functions from. For example, an ebuild
# that needs the eautoreconf function from autotools.eclass won't work
# without the following line:
#inherit autotools
#
# Eclasses tend to list descriptions of how to use their functions properly.
# Take a look at the eclass/ directory for more examples.

# Short one-line description of this package.
DESCRIPTION="Express vpn"

# Homepage, not used by Portage directly but handy for developer reference
HOMEPAGE="https://expressvpn.com/"

SRC_URI="https://www.expressvpn.works/clients/linux/expressvpn_3.7.0.29-1_amd64.deb"

LICENSE=""

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

BDEPEND=">=app-arch/dpkg-1.19.0.5"

RESTRICT="strip"

src_unpack() {
	unpack ${A}
	tmp=$(pwd)
	mkdir ${S}
	cd ${S}
	tar -xzvf ${tmp}/data.tar.gz
	cd -
}

src_prepare() {
	default
}

src_configure() {
	true
}

src_compile() {
	true
}

src_test() {
	true
}

src_install() {
	cp -vr ${S}/etc ${D}
	cp -vr ${S}/usr/bin ${D}
	cp -vr ${S}/usr/lib ${D}
	cp -vr ${S}/usr/sbin ${D}
}
