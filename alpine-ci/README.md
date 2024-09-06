# alpine-ci

## Description

`alpine-ci` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/alpine-ci](https://hub.docker.com/r/opslabhq/alpine-ci)

## Docker Image

- **Image Name**: `alpine-ci`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `dockerhub`
- **Depname**: `opslabhq/alpine`

## Tags

The Docker image is tagged as follows:

- `opslabhq/alpine-ci:${{ env.IMAGE_VERSION }}`
- `opslabhq/alpine-ci:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/alpine-ci:latest

# Run the image
docker run --name <container_name> -d opslabhq/alpine-ci:latest
```
