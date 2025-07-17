#!/bin/bash

IMAGE_NAME="flexslider-ms"
CONTAINER_NAME="flexslider-ms-container"

# Step 0: Remove old image if it exists (ignore errors)
docker rmi -f $IMAGE_NAME:latest 2>/dev/null || true

# Step 1: Build the image (force rebuild)
docker build -t $IMAGE_NAME:latest .

# Step 2: Remove old container if it exists (ignore errors)
docker rm -f $CONTAINER_NAME 2>/dev/null || true

# Step 3: Run new container
docker run -it --rm \
  --name $CONTAINER_NAME \
  -v "$(pwd)":/app \
  -w /app \
  -p 3000:3000 \
  $IMAGE_NAME:latest

