# yamllint

![Build status](https://github.com/opslabhqx/docker-images/actions/workflows/build-push-ci-yamllint.yml/badge.svg)
![Docker Image Size (latest)](https://img.shields.io/docker/image-size/opslabhq/yamllint/latest)
![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

## Description

`yamllint` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/yamllint](https://hub.docker.com/r/opslabhq/yamllint)

## Docker Image

- **Image Name**: `yamllint`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Base Image**: `alpine`
- **Datasource**: `pypi`
- **Depname**: `yamllint`

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
docker pull opslabhq/yamllint:latest

# Run the image
docker run --name <container_name> -d opslabhq/yamllint:latest
```
