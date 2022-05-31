#!/usr/bin/env bash

sudo apt-get clean
sudo apt update
sudo apt install python3-pip python3-venv
[ ! -f ~/venv/ansible/bin/activate ] && python3 -m venv ~/venv/ansible
[ -z "$VIRTUAL_ENV" ] && source ~/venv/ansible/bin/activate
pip3 install --upgrade "pip < 22.0"
pip3 install -r requirements.txt
echo "Done. Have fun."
