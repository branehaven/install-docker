#!/bin/bash
# A Bash script to install Docker and Docker Compose on Ubuntu 20.04

# Install Docker

# Ask for the user password:
sudo true

# Update existing packages:
sudo apt -y update

# Install prerequisite packages which let apt use packages over HTTPS:
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to the system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Install Docker:
sudo apt update
sudo apt -y install docker-ce

# Execute the docker command without sudo

# Add your username to the docker group:
sudo usermod -aG docker ${USER}

# Apply the new group membership (without having to log out and back in):
su - ${USER}