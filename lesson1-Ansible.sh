#!/bin/bash

# Installing Ansible version 2.16.9 
ANSIBLE_VERSION="2.16.9"
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
sudo apt install pipx
pipx install ansible-core==$ANSIBLE_VERSION
pipx ensurepath
ansible --version