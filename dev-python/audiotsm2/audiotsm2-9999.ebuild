# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} pypy3 )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit git-r3 distutils-r1

DESCRIPTION="audiotsm2"

HOMEPAGE="https://github.com/WyattBlue/audiotsm2"

EGIT_REPO_URI="https://github.com/PyAV-Org/PyAV"

LICENSE="Unlicense"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND="dev-python/numpy"
RDEPEND="${DEPEND}"

src_unpack() {
	git-r3_src_unpack
}

python_prepare_all() {
	distutils-r1_python_prepare_all
}

python_compile() {
	distutils-r1_python_compile
}

python_install_all() {
	distutils-r1_python_install_all
}
