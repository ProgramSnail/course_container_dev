help:
	echo "options:"
	echo "  - make prepare_manual"
	echo "  - make prepare_container"
	echo "  - make install"

prepare_manual:
	-sudo dnf install python ansible python3-github3py python3-rpm git make gmp-devel
	-sudo pacman -Syu python ansible python-github3py git make gmp
	# NOTE: apt manual install is not supported
	# -sudo apt install python3 ansible libgmp-dev git make pipx + install packages from pip: python-github3py, uv ...

prepare_container:
	-sudo dnf install podman podman-compose podman-docker just git make
	-sudo pacman -Syu podman podman-compose podman-docker just git make
	-sudo apt install podman podman-compose podman-docker just git make

install:
	ansible-playbook playbooks/setup.yml
