#!/bin/sh

set -o errexit -o nounset -o pipefail
set -x

parted --script /dev/vda mklabel msdos
parted --script /dev/vda mkpart primary ext4 "1MiB" "100%"

sync

# vim:ts=4:sw=4:et:syn=sh:
