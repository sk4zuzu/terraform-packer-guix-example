
terraform {
  required_version = ">= 0.12"
}

variable "vcpu" {
  type    = string
  default = "1"
}

variable "memory" {
  type    = string
  default = "1024"
}

variable "pool_directory" {
  type    = string
  default = "/stor/guix"
}

variable "artifact" {
  type    = string
  default = "./../../packer/guix/output/packer-guix.qcow2"
}

provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_pool" "guix" {
  name = "guix"
  type = "dir"
  path = var.pool_directory
}

resource "libvirt_volume" "guix" {
  name   = "guix"
  pool   = libvirt_pool.guix.name
  source = var.artifact
  format = "qcow2"
}

resource "libvirt_network" "guix" {
   name      = "guix"
   domain    = "guix.local"
   mode      = "nat"
   addresses = [ "10.11.12.0/24" ]
}

resource "libvirt_domain" "guix" {
  name   = "guix"
  vcpu   = var.vcpu
  memory = var.memory

  cpu = {
    mode = "host-passthrough"
  }

  network_interface {
    network_id     = libvirt_network.guix.id
    wait_for_lease = false
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = libvirt_volume.guix.id
  }

  video {
    type = "virtio"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

# vim:ts=2:sw=2:et:
