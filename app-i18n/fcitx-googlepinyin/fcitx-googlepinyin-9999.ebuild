# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit cmake-utils git-2

EGIT_REPO_URI="http://code.google.com/p/fcitx.fcitx-googlepinyin/"

DESCRIPTION="Fcitx Wrapper for googlepinyin"
HOMEPAGE="https://code.google.com/p/fcitx"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=app-i18n/fcitx-4.1.1
	>=app-i18n/libgooglepinyin-0.1.1"
DEPEND="${RDEPEND}
	dev-util/intltool"

