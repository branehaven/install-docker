#!/bin/bash
# A Bash script to install Docker and Docker Compose on Debian 11

# Install Docker

# Ask for the user password:
# sudo true
if [[ "$EUID" = 0 ]]; then
    echo "(1) already root"
else
    sudo -k # make sure to ask for password on next sudo
    if sudo true; then
        echo "(2) correct password"
    else
        echo "(3) wrong password"
        exit 1
    fi
fi

# Update existing packages:
sudo apt update

# Install packages to applow apt to use repository over HTTPS:
sudo apt -y install apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository:

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update repositories and install Docker
sudo apt update

sudo apt -y install docker-ce docker-ce-cli containerd.io
