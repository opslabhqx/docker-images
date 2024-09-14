# python

## Description

`python` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/python](https://hub.docker.com/r/opslabhq/python)

## Docker Image

- **Image Name**: `python`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-tags`
- **Depname**: `python/cpython`

## Tags

The Docker image is tagged as follows:

- `opslabhq/python:${{ env.PYTHON_VERSION }}-alpine${{ env.ALPINE_VERSION }}`
- `opslabhq/python:${{ env.PYTHON_VERSION }}`
- `opslabhq/python:alpine${{ env.ALPINE_VERSION }}`
- `opslabhq/python:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/python:latest

# Run the image
docker run --name <container_name> -d opslabhq/python:latest
```
