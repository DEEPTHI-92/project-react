#!/bin/bash

REGISTRY_URL="https://index.docker.io/v1/"
USERNAME="deepthiarmour"
PASSWORD="dckr_pat_3b3_K-a-aEoJgFegBCo9cAp6n0Q"
echo "$PASSWORD" | docker login $REGISTRY_URL -u $USERNAME --password-stdin

docker-compose up -d
docker tag nodejs deepthiarmour/dev

docker push deepthiarmour/dev

