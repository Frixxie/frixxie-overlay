# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} pypy3 )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit git-r3 distutils-r1

DESCRIPTION="Wrapper package for OpenCV python bindings."

HOMEPAGE="https://github.com/skvark/opencv-python"

EGIT_REPO_URI="https://github.com/skvark/opencv-python"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

DEPEND=">=dev-python/numpy-1.19.4
		dev-python/scikit-build"
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
