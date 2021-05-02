# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} pypy3 )
DISTUTILS_USE_SETUPTOOLS=no

inherit git-r3 distutils-r1

DESCRIPTION="Simple calendar utility for University of Tromso's courses"

HOMEPAGE="https://github.com/Frixxie/uit_calendar_util"

EGIT_REPO_URI="https://github.com/Frixxie/uit_calendar_util"
EGIT_BRANCH="master"

SLOT="0"

KEYWORDS="~amd64"

IUSE=""

RDEPEND=">=dev-python/requests-2.25.1-r1"

src_unpack(){
	git-r3_src_unpack
}

python_install(){
	esetup.py install_lib
}
