#!/bin/bash

# Update the package manager's package list
apt-get update

# Install Docker
apt-get install -y docker.io

# Add the current user to the docker group, so you don't have to use sudo to run Docker commands

useradd -S -D alphonse_rama
usermod -aG docker alphonse_rama

# Install Docker Compose
curl -L "https://github.com/771999489/postgresql-powerBI/blob/main/docker1/docker-compose.yml"$ -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

# Navigate to the directory containing the Docker Compose file
cd /home/nom/postgres-powerBI/docker1/docker-compose.yml

# Build and start the containers with Docker Compose
docker-compose up -d --build
