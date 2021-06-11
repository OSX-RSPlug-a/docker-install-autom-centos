#!/bin/bash

# Install req packs
sudo yum install yum-utils device-mapper-persistent-data lvm2 -y

# Config docker repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker-ce
sudo yum install docker-ce docker-ce-cli containerd.io -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Create Docker group
sudo groupadd docker

# Add user to the docker group
sudo usermod -aG docker $USER

# Install compose
sudo yum install docker-compose -y

echo "Installation Complete -- Logout and Log back"

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Permssion +x execute binary
chmod +x /usr/local/bin/docker-compose

# Create link symbolic 
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Check Version docer-compose
echo "Installation Complete -- Logout and Log back"
docker-compose --version
