#!/bin/bash

docker build -t nodejs .
docker images

docker stop nodejs
docker rm nodejs
