#!/usr/bin/env bash

sudo apt-cache clean
sudo apt-get update
sudo apt install python3-pip phython3-venv
python3 -m venv ~/venv/ansible
source ~/venv/ansible/bin/activate
pip3 install --upgrade "pip < 22.0"
pip3 install ansible ansible-lint yamllint paramiko
