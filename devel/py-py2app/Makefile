# $NetBSD: Makefile,v 1.10 2018/04/14 08:38:53 adam Exp $

DISTNAME=	py2app-0.14
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/py2app/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://bitbucket.org/ronaldoussoren/py2app
COMMENT=	Create standalone Mac OS X applications with Python
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-altgraph>=0.13:../../graphics/py-altgraph
DEPENDS+=	${PYPKGPREFIX}-modulegraph>=0.15:../../devel/py-modulegraph
DEPENDS+=	${PYPKGPREFIX}-macholib>=1.8:../../devel/py-macholib
TEST_DEPENDS+=	${PYPKGPREFIX}-pyobjc-core-[0-9]*:../../devel/py-pyobjc-core

ONLY_FOR_PLATFORM=	Darwin-*-*

post-install:
	cd ${DESTDIR}${PREFIX}/bin && ${MV} py2applet py2applet${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
