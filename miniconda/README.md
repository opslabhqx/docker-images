# miniconda

![Build status](https://github.com/opslabhqx/docker-images/actions/workflows/build-push-miniconda.yml/badge.svg)
![Docker Image Size (latest)](https://img.shields.io/docker/image-size/opslabhq/miniconda/latest)
![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

## Description

`miniconda` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/miniconda](https://hub.docker.com/r/opslabhq/miniconda)

## Docker Image

- **Image Name**: `miniconda`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Base Image**: `ubuntu`
- **Datasource**: `github-releases`
- **Depname**: `conda/conda`

## Tags

The Docker image is tagged as follows:

```
"${OWNER}/${FILE}:${TAG}"
"${OWNER}/${FILE}:${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}:${TAG}-${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}"
```

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/miniconda:latest

# Run the image
docker run --name <container_name> -d opslabhq/miniconda:latest
```
