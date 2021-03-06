# $NetBSD: Makefile,v 1.58 2018/11/14 22:22:25 kleink Exp $
#

DISTNAME=	gnome-volume-manager-2.24.1
PKGREVISION=	50
CATEGORIES=	sysutils gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-volume-manager/2.24/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnome.org/
COMMENT=	GNOME daemon to auto-mount and manage storage devices
LICENSE=	gnu-gpl-v2

DEPENDS+=	gnome-mount>=0.8:../../sysutils/gnome-mount

GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		gmake intltool msgfmt perl pkg-config
USE_LIBTOOL=		YES

LDFLAGS.DragonFly=	-lX11

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--enable-multiuser
CONFIGURE_ARGS+=	--enable-automount
# console-auth-dir is only applicable for Linux
CONFIGURE_ARGS+=	--with-console-auth-dir=/var/run/console

GCONF_SCHEMAS+=		gnome-volume-manager.schemas

.include "../../devel/GConf/schemas.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../sysutils/hal/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
