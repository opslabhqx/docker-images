# miniconda-alpine

## Description

`miniconda-alpine` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/miniconda-alpine](https://hub.docker.com/r/opslabhq/miniconda-alpine)

## Docker Image

- **Image Name**: `miniconda-alpine`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-releases`
- **Depname**: `conda/conda`

## Tags

The Docker image is tagged as follows:

- `opslabhq/miniconda-alpine:latest` - The latest stable version.
- `opslabhq/miniconda-alpine:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/miniconda-alpine:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/miniconda-alpine:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/miniconda-alpine:latest

# Run the image
docker run --name <container_name> -d opslabhq/miniconda-alpine:latest
```
