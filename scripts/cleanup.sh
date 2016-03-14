#!/bin/sh

set -e

. /root/.profile

rcctl disable smtpd

pkg_delete -a

dd if=/dev/zero of=/EMPTY bs=1M || true
rm -f /EMPTY
sync
