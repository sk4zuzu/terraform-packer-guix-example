#!/bin/sh

set -o errexit -o nounset -o pipefail
set -x

mkdir -p /mnt/etc/

cat >/mnt/etc/config.scm <<EOF
(use-modules (gnu))
(use-service-modules dbus desktop docker networking ssh xorg)
(use-package-modules admin base bash certs docker mc package-management suckless tmux version-control vim wm xorg)

(define %packages
    (cons* docker-cli docker-compose git htop mc nss-certs slock stow tmux vim xmonad xterm
           %base-packages))

(define %services
  (list (service login-service-type)

        (service virtual-terminal-service-type)
        (service console-font-service-type
                 (map (lambda (tty)
                        (cons tty %default-console-font))
                      '("tty1" "tty2" "tty3" "tty4" "tty5" "tty6")))

        (service agetty-service-type (agetty-configuration
                                       (extra-options '("-L")) ; no carrier detect
                                       (term "vt100")
                                       (tty #f))) ; automatic

        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty1")))
        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty2")))
        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty3")))
        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty4")))
        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty5")))
        (service mingetty-service-type (mingetty-configuration
                                         (tty "tty6")))

        (service static-networking-service-type
                 (list (static-networking (interface "lo")
                                          (ip "127.0.0.1")
                                          (requirement '())
                                          (name-servers '("8.8.8.8"))
                                          (provision '(loopback)))))

        (syslog-service)
        (service urandom-seed-service-type)
        (service guix-service-type)
        (service nscd-service-type)

        (service special-files-service-type
                 \`(("/bin/sh", (file-append (canonical-package bash)
                                             "/bin/sh"))
                    ("/usr/bin/env", (file-append (canonical-package coreutils)
                                                  "/bin/env"))))

        (service dhcp-client-service-type)
        (service openssh-service-type)
        (service dbus-root-service-type)
        (service elogind-service-type)
        (service docker-service-type)

        (service slim-service-type)
        (screen-locker-service slock)))

(operating-system
  (host-name "dolan")
  (timezone "Europe/Warsaw")
  (locale "en_US.utf8")

  (bootloader (bootloader-configuration
                (bootloader grub-bootloader)
                (target "/dev/vda")))

  (file-systems (cons (file-system
                        (device (file-system-label "root"))
                        (mount-point "/")
                        (type "ext4"))
                      %base-file-systems))

  (sudoers-file (plain-file "sudoers" "root ALL=(ALL) ALL\\n%wheel ALL=(ALL) NOPASSWD: ALL\\n"))

  (users (cons (user-account
                (name "dolan")
                (password (crypt "pls" "\$6\$abc"))
                (group "users")
                (supplementary-groups '("wheel" "netdev" "audio" "video" "docker")))
               %base-user-accounts))

  (packages %packages)
  (services %services))
EOF

sync

# vim:ts=4:sw=4:et:syn=sh:
