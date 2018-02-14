#!/bin/sh
echo "This script is only to be run on Debian-Based linux distros!"
echo "Installing Docker..."
curl -fsSL get.docker.com -o /tmp/get-docker.sh && sudo bash /tmp/get-docker.sh
echo "Downloading Required Files..."
git clone https://github.com/fracturedface/Desmos-Docker.git && mv Desmos-Docker /desmostmp/
docker build -t desmosimg /desmostmp/
docker create --name desmos -p 54487:54487 desmostmp
docker start desmos
