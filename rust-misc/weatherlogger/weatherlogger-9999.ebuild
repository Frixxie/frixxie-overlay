# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cargo

CRATES=""

DESCRIPTION="This is a sample skeleton ebuild file"

HOMEPAGE="https://foo.example.org/"

EGIT_REPO_URI="https://github.com/Frixxie/weatherlogger.git"

LICENSE=""

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

RDEPEND="dev-lang/rust"

#DEPEND="${RDEPEND}"

#BDEPEND="virtual/pkgconfig"

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_configure() {
	cargo_src_configure --no-default-features
}

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install --path /bin
}
