#!/bin/bash

# Copy authorized_keys to root's home directory
sudo cp /home/$USER/.ssh/authorized_keys /root/.ssh/
sudo chmod 600 /root/.ssh/authorized_keys

# Enable root login via ssh
sudo sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

# Restart ssh service
sudo systemctl restart ssh
