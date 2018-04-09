#
# The FreeBSD Russian Documentation Project
#
Team
====
Andrey Zakhvatov

To join, just drop a short message to andrey.zakhvatov@gmail.com

Instructions to build
=====================
$ mkdir tmp
$ cd tmp
$ svn checkout svn://svn.FreeBSD.org/doc/head doc
$ cd doc
$ tar -czvf share.tar.gz share
$ git clone http://github.com/frdp
$ cd frdp
$ tar -zxvf ../share.tar.gz
$ make
