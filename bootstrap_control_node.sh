#!/usr/bin/env bash

sudo sh -c 'cat <<EOD >> /etc/hosts
192.168.150.10  debian.example.org  debian
192.168.150.20  rocky.example.org   rocky
192.168.150.30  suse.example.org    suse
192.168.150.40  ubuntu.example.org  ubuntu
EOD'

sudo apt-cache clean
sudo apt-get update
sudo apt install python3-pip phython3-venv
python3 -m venv ~/venv/ansible
source ~/venv/ansible/bin/activate
pip3 install --upgrade "pip < 22.0"
pip3 install ansible ansible-lint yamllint paramiko
mkdir -p ~/.ssh && chmod 700 ~/.ssh
ssh-keyscan -t rsa debian rocky suse ubuntu > ~/.ssh/known_hosts
ssh-keygen -t rsa -b 4096 -C "Ansible sshkey" -f ~/.ssh/id_rsa
ssh-copy-id vagrant@debian
ssh-copy-id vagrant@rocky
ssh-copy-id vagrant@suse
ssh-copy-id vagrant@ubuntu
