#!/bin/bash

# Setting up sssh for server. 

# set up ssh key
ssh-keygen -t ed25519 -C "batman"
# copying public ssh key to the server's authorized_keys file
ssh-copy-id -i ~/.ssh/id_ed25519.pub batman@10.0.0.107

# ssh into the server
ssh batman@10.0.0.107

# disable password authentication using nano
nano /etc/ssh/ssh_config

# changing password_authentication to 'no'
sudo nano /etc/ssh/ssh_config

# restarting ssh
sudo service ssh restart