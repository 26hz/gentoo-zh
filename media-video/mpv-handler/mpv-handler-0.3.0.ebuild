#Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	base64-0.13.1
	bitflags-1.3.2
	cfg-if-1.0.0
	dirs-4.0.0
	dirs-sys-0.3.7
	getrandom-0.2.8
	libc-0.2.137
	proc-macro2-1.0.47
	quote-1.0.21
	redox_syscall-0.2.16
	redox_users-0.4.3
	serde-1.0.147
	serde_derive-1.0.147
	syn-1.0.103
	thiserror-1.0.37
	thiserror-impl-1.0.37
	toml-0.5.9
	unicode-ident-1.0.5
	wasi-0.11.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo xdg desktop

DESCRIPTION="A protocol handler for mpv, written by Rust."
HOMEPAGE="https://github.com/akiirui/mpv-handler"
SRC_URI="
	$(cargo_crate_uris)
	https://github.com/akiirui/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"
KEYWORDS="~amd64"
RESTRICT="strip"

LICENSE="MIT"
SLOT="0"

RDEPEND="
	media-video/mpv
"

src_install() {
	dobin "target/release/mpv-handler"
	dodoc "share/linux/config.toml"
	domenu "share/linux/mpv-handler.desktop"
}

pkg_postinst() {
	elog "install net-misc/youtube-dl (recommended) or net-misc/yt-dlp"
	elog "to enable mpv to play video and music from the websites."
}
