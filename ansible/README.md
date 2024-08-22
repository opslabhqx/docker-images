# ansible

## Description

`ansible` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/ansible](https://hub.docker.com/r/opslabhq/ansible)

## Docker Image

- **Image Name**: `ansible`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `pypi`
- **Depname**: `ansible`

## Tags

The Docker image is tagged as follows:

- `opslabhq/ansible:latest` - The latest stable version.
- `opslabhq/ansible:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/ansible:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/ansible:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/ansible:latest

# Run the image
docker run --name <container_name> -d opslabhq/ansible:latest
```
