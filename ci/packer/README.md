# packer

![Build status](https://github.com/opslabhqx/docker-images/actions/workflows/build-push-ci-packer.yml/badge.svg)
![Docker Image Size (latest)](https://img.shields.io/docker/image-size/opslabhq/packer/latest)
![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

## Description

`packer` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/packer](https://hub.docker.com/r/opslabhq/packer)

## Docker Image

- **Image Name**: `packer`
- **Group**: `ci`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Base Image**: `alpine`
- **Datasource**: `github-releases`
- **Depname**: `hashicorp/packer`

## Tags

The Docker image is tagged as follows:

```
"${OWNER}/${FILE}"
"${OWNER}/${FILE}:${TAG}"
"${OWNER}/${FILE}:${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}:${TAG}-${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}:rootless"
"${OWNER}/${FILE}:${TAG}-rootless"
```

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/packer:latest

# Run the image
docker run --name <container_name> -d opslabhq/packer:latest
```
