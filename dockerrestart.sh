#!/bin/sh

echo "STOP DOCKER"
docker-compose -f docker-compose.yml down

echo "START DOCKER"
docker-compose -f docker-compose.yml up -d