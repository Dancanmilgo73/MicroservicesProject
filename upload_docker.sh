#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="dancan/pricepredictionapp"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag pricepredictionapp $dockerpath:v1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1
