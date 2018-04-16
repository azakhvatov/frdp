# $FreeBSD: head/Makefile 47296 2015-08-22 08:58:34Z blackend $
#
# The user can override the default list of languages to build and install
# with the DOC_LANG variable.
#
# It's just a dirty hack to build the tree
#
# Original revision: 47296
#
DOC_LANG=	ru_RU.UTF-8
SUBDIR = 	${DOC_LANG}

# Redefine it for 
DOC_PREFIX=	../doc

SUBDIR+=	share


.if exists(/usr/bin/svnlite)
SVN?=		/usr/bin/svnlite
.else
SVN?=		/usr/local/bin/svn
.endif

update:
.if !exists(${SVN})
	@${ECHODIR} "--------------------------------------------------------------"
	@${ECHODIR} ">>> ${SVN} is required to update ${.CURDIR}"
	@${ECHODIR} "--------------------------------------------------------------"
	@${EXIT}
.else
	@${ECHODIR} "--------------------------------------------------------------"
	@${ECHODIR} ">>> Updating ${.CURDIR} from svn repository"
	@${ECHODIR} "--------------------------------------------------------------"
	cd ${.CURDIR}; ${SVN} update
.endif

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
