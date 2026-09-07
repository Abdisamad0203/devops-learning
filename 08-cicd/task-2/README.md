# Task 2 - CD Pipeline

A GitHub Actions workflow that builds and publishes a Docker image automatically.

## What it does

- runs when code is pushed to main
- checks out the repository
- logs in to Docker Hub using GitHub Secrets
- builds the Docker image
- pushes the image to Docker Hub

## Why

The aim is to remove the manual image build and push steps from the deployment process.
