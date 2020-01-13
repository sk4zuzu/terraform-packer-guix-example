
SELF := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

ARTIFACT ?= guix.iso
CHECKSUM ?= 4ef91c584c6749d6796ab17537bbead7fb41741e47fedab9457607a292a98de1

CPUS      ?= 1
MEMORY    ?= 1024
DISK_SIZE ?= 16384

PACKER_LOG ?= 1
HEADLESS   ?= true

define Packerfile
{
	"builders": [{
		"type": "qemu",
		"accelerator": "kvm",

		"cpus": "$(CPUS)",
		"memory": "$(MEMORY)",
		"qemuargs": [
			[ "-cpu", "host" ]
		],

		"disk_size": "$(DISK_SIZE)",

		"iso_url": "file://$(SELF)/../../downloads/$(ARTIFACT)",
		"iso_checksum": "$(CHECKSUM)",
		"iso_checksum_type": "sha256",

		"output_directory": "$(SELF)/output",
		"format": "qcow2",

		"vm_name": "packer-guix.qcow2",
		"headless": $(HEADLESS),

		"boot_wait": "10s",
		"boot_command": [
			"<wait20s><enter>",
			"<down><down><down><down><down><down><down><down>",
			"<down><down><down><down><down><down><down><down><enter>",
			"<wait1s><down><enter>",
			"<wait1s><enter>",
			"herd start ssh-daemon<enter>",
			"<wait1s>",
			"passwd root<enter>",
			"root<enter>",
			"root<enter>"
		],
		"shutdown_command": "shutdown",

		"communicator": "ssh",
		"ssh_username": "root",
		"ssh_password": "root"
	}],
	"provisioners": [{
		"type": "shell",
		"scripts": [
			"remote-exec/01-partitions.sh",
			"remote-exec/02-filesystems.sh",
			"remote-exec/03-configuration.sh",
			"remote-exec/04-installation.sh",
			"remote-exec/05-cleanup.sh"
		]
	}]
}
endef

export

.PHONY: all build clean

all: build

build: output/packer-guix.qcow2

output/packer-guix.qcow2: Makefile $(wildcard $(SELF)/remote-exec/*.sh)
	packer build -force - <<< "$$Packerfile"

clean:
	-rm -rf $(SELF)/output/

# vim:ts=4:sw=4:noet:syn=make:
