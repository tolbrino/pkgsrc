# $NetBSD: Makefile,v 1.23 2018/11/12 03:51:32 ryoon Exp $

DISTNAME=	kitemviews-${KF5VER}
PKGREVISION=	3
CATEGORIES=	x11

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	Widget addons for Qt Model/View
LICENSE=	gnu-lgpl-v2.1

.include "../../meta-pkgs/kde/kf5.mk"

.include "../../x11/qt5-qtbase/buildlink3.mk"
BUILDLINK_DEPMETHOD.qt5-qttools= build
.include "../../x11/qt5-qttools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
