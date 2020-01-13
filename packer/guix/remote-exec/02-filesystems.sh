#!/bin/sh

set -o errexit -o nounset -o pipefail
set -x

mkfs.ext4 -L "root" /dev/vda1
mount LABEL="root" /mnt/

sync

# vim:ts=4:sw=4:et:syn=sh:
