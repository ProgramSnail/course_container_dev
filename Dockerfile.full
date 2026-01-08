# FROM quay.io/fedora/fedora-toolbox:42 
FROM fedora:42 
WORKDIR /usr/local/course

RUN dnf install -y python ansible python3-github3py python3-rpm git make gmp-devel

# setup with ansible
COPY setup ./setup
WORKDIR setup
# RUN ansible-playbook playbooks/setup.yml
RUN ansible-playbook playbooks/setup.yml --tags env
RUN ansible-playbook playbooks/setup.yml --tags python
RUN ansible-playbook playbooks/setup.yml --tags haskell
RUN ansible-playbook playbooks/setup.yml --tags ocanren

# do the rest
WORKDIR /usr/local/tasks
# ...
