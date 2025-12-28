help:
	echo "options:"
	echo "  - make prepare_manual"
	echo "  - make prepare_container"
	echo "  - make install"

prepare_manual:
	-sudo dnf install python ansible python3-github3py python3-rpm git make gmp-devel
	-sudo pacman -Syu python ansible python-github3py python-rpm git make gmp

prepare_container:
	-sudo dnf install docker docker-compose just git make
	-sudo pacman -Syu docker docker-compose just git make

install:
	ansible-playbook playbooks/setup.yml
