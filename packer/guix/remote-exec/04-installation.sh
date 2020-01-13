#!/bin/sh

set -o errexit -o nounset -o pipefail
set -x

herd start cow-store /mnt/

guix system init /mnt/etc/config.scm /mnt/

sync

# vim:ts=4:sw=4:et:syn=sh:
