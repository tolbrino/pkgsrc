# $NetBSD: Makefile,v 1.3 2018/07/18 00:06:12 joerg Exp $

DISTNAME=	flatzebra-0.1.6
CATEGORIES=	devel
MASTER_SITES=	http://perso.b2b2c.ca/~sarrazip/dev/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/afternoonstalker.html
COMMENT=	Generic game engine for 2D double-buffering animation
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++03

PKGCONFIG_OVERRIDE+=	flatzebra-0.1.pc.in

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
