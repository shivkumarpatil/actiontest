#!/bin/bash

# Log in to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build and push Docker image
#docker buildx build --platform linux/amd64,linux/arm64 -t user/repo:latest --push .
# Build the Docker image
docker build -t user/repo:latest .

# Push the Docker image
docker push user/repo:latest
