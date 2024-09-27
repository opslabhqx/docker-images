# ansible

![Build status](https://github.com/opslabhqx/docker-images/actions/workflows/build-push-ansible.yml/badge.svg)
![Docker Image Size (latest)](https://img.shields.io/docker/image-size/opslabhq/ansible/latest)
![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

## Description

`ansible` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/ansible](https://hub.docker.com/r/opslabhq/ansible)

## Docker Image

- **Image Name**: `ansible`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Base Image**: `alpine`
- **Datasource**: `pypi`
- **Depname**: `ansible`

## Tags

The Docker image is tagged as follows:

```
"${OWNER}/${FILE}:${TAG}"
"${OWNER}/${FILE}:${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}:${TAG}-${BASE_IMAGE}${BASE_VERSION}"
"${OWNER}/${FILE}"
"${OWNER}/${FILE}:${TAG}-rootless"
"${OWNER}/${FILE}:rootless"
```

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/ansible:latest

# Run the image
docker run --name <container_name> -d opslabhq/ansible:latest
```
