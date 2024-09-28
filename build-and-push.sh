#!/bin/bash

# Log in to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build and push Docker image
#docker buildx build --platform linux/amd64,linux/arm64 -t user/repo:latest --push .
# Build the Docker image
#docker build -t shivkumar/github-action:latest .
# Push the Docker image
#docker push shivkumar/github-action:latest

# Build the Docker image
docker build -t shivkumar/github-action:${GITHUB_REF_NAME} .



# Push the Docker image with the specific tag
docker push shivkumar/github-action:${GITHUB_REF_NAME}
