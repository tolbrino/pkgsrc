# $NetBSD: Makefile,v 1.18 2018/11/14 22:22:03 kleink Exp $

PKGREVISION= 4
.include "../../meta-pkgs/mate/Makefile.common"

DISTNAME=	libmateweather-${VERSION}
CATEGORIES=	misc

COMMENT=	Weather information access library

PKGCONFIG_OVERRIDE+=	libmateweather/mateweather.pc.in

.include "../../devel/glib2/schemas.mk"

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
