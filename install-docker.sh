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

# Install Docker Compose

# Get the docker compose lates version number:
# COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oE "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | sort --version-sort | tail -n 1`

# Download version 2.2.3 of docker compose and save the executable file at /user/local/bin/docker-compose, which will make the software globally available as docker-compose:
sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Set correct permissions so that the docker-compose command is executable:
sudo chmod +x /usr/local/bin/docker-compose