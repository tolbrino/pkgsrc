# $NetBSD: Makefile,v 1.2 2018/11/04 18:38:02 bsiegert Exp $

DISTNAME=	godirwalk-1.7.3
PKGNAME=	go-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=karrick/}
GITHUB_PROJECT=	godirwalk
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/karrick/godirwalk
COMMENT=	Fast directory traversal for Golang
LICENSE=	2-clause-bsd

GO_DIST_BASE=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
GO_SRCPATH=	github.com/karrick/godirwalk

.include "../../devel/go-errors/buildlink3.mk"
.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
