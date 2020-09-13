#!/bin/sh

echo "STOP DOCKER"
docker-compose -f docker-compose.yml down

echo "BUILD DOCKER"
docker-compose -f docker-compose.yml build

echo "START DOCKER"
docker-compose -f docker-compose.yml up -d

echo "REMOVE UNUSED IMAEGE"
docker rmi $(docker images -q -f dangling=true)