# $NetBSD: Makefile,v 1.19 2018/11/12 03:51:10 ryoon Exp $

DISTNAME=	kdoctools-${KF5VER}
PKGREVISION=	3
CATEGORIES=	devel

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	Documentation generation from docbook
LICENSE=	gnu-lgpl-v2.1

.include "../../meta-pkgs/kde/kf5.mk"

USE_TOOLS+=	msgmerge perl

BUILD_DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

.include "../../archivers/karchive/buildlink3.mk"
.include "../../devel/ki18n/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
