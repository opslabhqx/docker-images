# docker

## Description

`docker` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/docker](https://hub.docker.com/r/opslabhq/docker)

## Docker Image

- **Image Name**: `docker`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `docker`
- **Depname**: `docker`

## Tags

The Docker image is tagged as follows:

- `opslabhq/docker:${{ env.DOCKER_VERSION }}-dind`
- `opslabhq/docker:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/docker:latest

# Run the image
docker run --name <container_name> -d opslabhq/docker:latest
```
