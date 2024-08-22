# packer

## Description

`packer` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/packer](https://hub.docker.com/r/opslabhq/packer)

## Docker Image

- **Image Name**: `packer`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-releases`
- **Depname**: `hashicorp/packer`

## Tags

The Docker image is tagged as follows:

- `opslabhq/packer:latest` - The latest stable version.
- `opslabhq/packer:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/packer:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/packer:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/packer:latest

# Run the image
docker run --name <container_name> -d opslabhq/packer:latest
```
