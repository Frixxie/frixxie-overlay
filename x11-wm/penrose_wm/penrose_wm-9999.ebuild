# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=8

CRATES="
anyhow-1.0.48
autocfg-1.0.1
bitflags-1.3.2
cairo-rs-0.9.1
cairo-sys-rs-0.10.0
cc-1.0.72
cfg-if-0.1.10
cfg-if-1.0.0
chrono-0.4.19
either-1.6.1
futures-channel-0.3.18
futures-core-0.3.18
futures-executor-0.3.18
futures-macro-0.3.18
futures-task-0.3.18
futures-util-0.3.18
glib-0.10.3
glib-macros-0.10.1
glib-sys-0.10.1
gobject-sys-0.10.0
heck-0.3.3
itertools-0.9.0
libc-0.2.108
log-0.4.14
nix-0.17.0
num-integer-0.1.44
num-traits-0.2.14
once_cell-1.8.0
pango-0.9.1
pango-sys-0.10.0
pangocairo-0.10.0
pangocairo-sys-0.11.0
pin-project-lite-0.2.7
pin-utils-0.1.0
pkg-config-0.3.22
proc-macro-crate-0.1.5
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-1.0.32
quote-1.0.10
serde-1.0.130
simplelog-0.8.0
slab-0.4.5
strum-0.18.0
strum-0.19.5
strum_macros-0.18.0
strum_macros-0.19.4
syn-1.0.81
system-deps-1.3.2
termcolor-1.1.2
thiserror-1.0.30
thiserror-impl-1.0.30
time-0.1.44
toml-0.5.8
unicode-segmentation-1.8.0
unicode-xid-0.2.2
version-compare-0.0.10
version_check-0.9.3
void-1.0.2
wasi-0.10.0+wasi-snapshot-preview1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
xcb-0.9.0
"

inherit cargo git-r3

DESCRIPTION="penrose_wm"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/sminez/penrose"

EGIT_REPO_URI="https://github.com/Frixxie/penrose_wm.git"
EGIT_BRANCH="master"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0 WITH LLVM-exception MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=x11-misc/xcb-2.4-r1
	>=x11-libs/cairo-1.16.0-r5
	>=x11-libs/pango-1.48.10-r1
	>=x11-misc/polybar-3.5.7"
RDEPEND=""

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_configure() {
	cargo_gen_config
	cargo_src_configure --no-default-features
}

src_compile() {
	# cargo_gen_config
	cargo_src_compile
}

src_install() {
	cargo_src_install
}
