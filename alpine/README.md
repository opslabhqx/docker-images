# alpine

## Description

`alpine` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/alpine](https://hub.docker.com/r/opslabhq/alpine)

## Docker Image

- **Image Name**: `alpine`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `dockerhub`
- **Depname**: `alpine`

## Tags

The Docker image is tagged as follows:

- `opslabhq/alpine:${{ env.ALPINE_VERSION }}`
- `opslabhq/alpine:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/alpine:latest

# Run the image
docker run --name <container_name> -d opslabhq/alpine:latest
```
