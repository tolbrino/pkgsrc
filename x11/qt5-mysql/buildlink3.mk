# $NetBSD: buildlink3.mk,v 1.21 2018/11/12 03:51:34 ryoon Exp $

BUILDLINK_TREE+=	qt5-mysql

.if !defined(QT5_MYSQL_BUILDLINK3_MK)
QT5_MYSQL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-mysql+=	qt5-mysql>=5.5.1
BUILDLINK_ABI_DEPENDS.qt5-mysql+=	qt5-mysql>=5.11.2nb1
BUILDLINK_PKGSRCDIR.qt5-mysql?=		../../x11/qt5-mysql

BUILDLINK_LIBDIRS.qt5-mysql+=		qt5/plugins

.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# QT5_MYSQL_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-mysql
