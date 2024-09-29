# ubuntu-base

![Build status](https://github.com/opslabhqx/docker-images/actions/workflows/build-push-dev-ubuntu-base.yml/badge.svg)
![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

## Description

`ubuntu-base` Docker image. It is maintained and published under the `opslabhq` Amazon ECR Public Gallery account.

[https://gallery.ecr.aws/opslabhq/devcontainers/ubuntu-base](https://gallery.ecr.aws/opslabhq/devcontainers/ubuntu-base)

## Docker Image

- **Image Name**: `ubuntu-base`
- **Group**: `devcontainers`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Base Image**: `ubuntu`
- **Datasource**: `docker`
- **Depname**: `ubuntu`

## Tags

The Docker image is tagged as follows:

```
"${OWNER}/${FILE}"
"${OWNER}/${FILE}:${TAG}"
```

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull public.ecr.aws/opslabhq/devcontainers/ubuntu-base:latest

# Run the image
docker run --name <container_name> -d public.ecr.aws/opslabhq/devcontainers/ubuntu-base:latest
```
