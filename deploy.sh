#!/bin/bash

REGISTRY_URL="https://index.docker.io/v1/"
USERNAME="deepthiarmour"
read -s -p "Enter Docker Hub password: " PASSWORD
echo "$PASSWORD" | docker login $REGISTRY_URL -u $USERNAME --password-stdin
unset PASSWORD
docker-compose up -d
docker tag nodejs deepthiarmour/react-node

docker push deepthiarmour/react-node

