# $NetBSD: Makefile,v 1.6 2018/09/08 18:56:47 schmonz Exp $

DISTNAME=	libidn2-2.0.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=libidn/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/libidn/
COMMENT=	Convert internationalized domain names to/from ASCII Encoding
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	libidn2.pc.in
INFO_FILES=		yes

# XXX: Kludge to avoid uncoditionally pick up some gtkdoc-* tools if gtk-doc
# XXX: package is installed and then fails in the installation phase.
CONFIGURE_ENV+=		ac_cv_prog_GTKDOC_CHECK= \
			ac_cv_path_GTKDOC_CHECK_PATH= \
			ac_cv_path_GTKDOC_REBASE= \
			ac_cv_path_GTKDOC_MKPDF=

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../textproc/libunistring/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
