#
# The FreeBSD Russian Documentation Project
#
Team
====
Andrei Zakhvatov

To join, just drop a short message to andrey.zakhvatov@gmail.com

Instructions to build
=====================
(root) # pkg install docproj
# working dir is "tmp"
# tmp/doc -> original documentation set
# tmp/frdp -> russian documentation set
$ mkdir tmp
$ cd tmp
$ svn checkout svn://svn.FreeBSD.org/doc/head doc
$ cd doc
$ tar -czvf share.tar.gz share
$ cd ..
$ git clone http://github.com/azakhvatov/frdp
$ cd frdp
$ tar -zxvf ../doc/share.tar.gz
$ rm ../doc/share.tar.gz
$ cd ru_RU.UTF-8/books/faq
# $ mkdir share
# $ cd share
# $ mkdir xml
# $ cp ../../../ru_RU.KOI8-R/share/xml/* xml
# $ cd ..
$ make
