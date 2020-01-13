{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "terraform-packer-guix-example-env";
  buildInputs = [
    git xz
    qemu_kvm libvirt libxslt
    pkgconfig gnumake
    go gcc
    patchelf
  ];
}

# vim:ts=2:sw=2:et:syn=nix:
