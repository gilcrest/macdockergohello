#!/bin/zsh

PROJECT_NAME="macdockergohello"

# Tagged version
TAG="latest"

# full image name
IMAGE_NAME=$USER/$PROJECT_NAME:$TAG

# run the container
#
# --rm flag removes the container after it exits
#  -it flag runs the container in interactive mode
docker run -it --rm --name my-running-app "$IMAGE_NAME"
