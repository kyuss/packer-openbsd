#!/bin/sh

set -e

uname_r=`uname -r`

export PKG_PATH="$MIRROR/pub/OpenBSD/$uname_r/packages/`arch -s`/"

# set pkg path for users
echo "export PKG_PATH=\"$PKG_PATH\"" >> /root/.profile
echo "export PKG_PATH=\"$PKG_PATH\"" >> /home/vagrant/.profile

. /root/.profile

pkg_add sudo--
echo "vagrant ALL=(ALL) NOPASSWD: SETENV: ALL" >> /etc/sudoers

pkg_add ansible
