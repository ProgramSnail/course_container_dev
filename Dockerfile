FROM quay.io/fedora/fedora-toolbox:42 
WORKDIR /usr/local/course

RUN dnf install -y python ansible python3-github3py python3-rpm git make

# setup with ansible
COPY setup ./setup
WORKDIR setup
RUN ansible-playbook playbooks/setup.yml

# do the rest
WORKDIR /usr/local/tasks
# ...
