#!/bin/sh

set -o errexit -o nounset -o pipefail
set -x

# Decrease box size
dd if=/dev/zero of=/mnt/EMPTY bs=1M || true
rm -f /mnt/EMPTY

sync

# vim:ts=4:sw=4:et:syn=sh:
