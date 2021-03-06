# $NetBSD: Makefile,v 1.37 2018/05/10 21:53:32 wiz Exp $

DISTNAME=	pygame-1.9.3
PKGREVISION=	1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pygame/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://www.pygame.org/
COMMENT=	Set of Python modules designed for writing games
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	pkg-config

REPLACE_PYTHON+=	bundle_docs.py
REPLACE_PYTHON+=	config.py
REPLACE_PYTHON+=	examples/*.py
REPLACE_PYTHON+=	makeref.py
REPLACE_PYTHON+=	run_tests.py
REPLACE_PYTHON+=	setup.py

SUBST_CLASSES+=		fixpath
SUBST_STAGE.fixpath=	pre-configure
SUBST_MESSAGE.fixpath=	Fixing paths.
SUBST_FILES.fixpath=	config_darwin.py config_unix.py
SUBST_SED.fixpath=	-e 's,/usr/local,${PREFIX},g'

.include "../../mk/bsd.prefs.mk"
PLIST_VARS+=		darwin
.if ${OPSYS} != "Darwin"
.  include "../../x11/libX11/buildlink3.mk"
.else
PLIST.darwin=		yes
.endif

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../multimedia/smpeg/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
