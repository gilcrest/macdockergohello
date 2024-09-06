#!/bin/zsh

PROJECT_NAME="macdockergohello"

# Tagged version
TAG="latest"

# full image name
IMAGE_NAME=$USER/$PROJECT_NAME:$TAG

echo "Building image: $IMAGE_NAME"

# build image
docker build --tag "$IMAGE_NAME" .
docker inspect "$IMAGE_NAME"