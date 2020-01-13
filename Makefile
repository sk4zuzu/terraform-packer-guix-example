
SELF := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

export

.PHONY: all requirements \
        binaries extras iso

all: guix

requirements: binaries extras iso

binaries:
	make -f $(SELF)/Makefile.BINARIES

extras:
	make -f $(SELF)/Makefile.EXTRAS

iso:
	make -f $(SELF)/Makefile.ISO

.PHONY: guix volume

volume:
	cd $(SELF)/packer/guix/ && make build

guix: volume
	cd $(SELF)/terraform/guix/ && (terraform init && terraform apply)

.PHONY: destroy clean

destroy:
	cd $(SELF)/terraform/guix/ && (terraform init && terraform destroy)

clean:
	-make clean -f $(SELF)/Makefile.BINARIES
	-make clean -f $(SELF)/Makefile.EXTRAS
	-make clean -f $(SELF)/Makefile.ISO
	-cd $(SELF)/packer/guix/ && make clean

# vim:ts=4:sw=4:noet:syn=make:
