#!/usr/bin/env sh

# Install required software
sudo apt update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

if [ ! -f "/usr/share/keyrings/docker-archive-keyring.gpg" ]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
fi

sudo apt update

sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    docker-compose-plugin
