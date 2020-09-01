#!/bin/sh

echo "BUILD DOCKER"
docker-compose -f docker-compose.yml build

echo "START DOCKER"
docker-compose -f docker-compose.yml up -d

echo "REMOVE UNUSED IMAEGE"
docker rmi $(docker images -q -f dangling=true)

echo "DOCKER LOGS"
docker-compose -f docker-compose.yml logs -f --tail=100
