# $NetBSD: Makefile,v 1.2 2018/10/23 16:29:18 adam Exp $

.include "../../mail/dovecot2/Makefile.plugin"

PKGNAME=		${DISTNAME:S/dovecot/dovecot-mysql/}
COMMENT+=		(mysql plugin)

CONFIGURE_ARGS+=	--with-sql=plugin
CONFIGURE_ARGS+=	--with-mysql

INSTALLATION_DIRS+=	lib/dovecot/auth lib/dovecot/dict

do-install:
	cd ${WRKSRC} && ${LIBTOOL} --mode=install ${INSTALL_LIB} 	\
		src/lib-sql/libdriver_mysql.la 				\
		${DESTDIR}${PREFIX}/lib/dovecot
	${LN} -s ../libdriver_mysql.so 					\
		${DESTDIR}${PREFIX}/lib/dovecot/auth/libdriver_mysql.so
	${LN} -s ../libdriver_mysql.so 					\
		${DESTDIR}${PREFIX}/lib/dovecot/dict/libdriver_mysql.so

.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
