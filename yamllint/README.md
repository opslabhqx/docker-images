# yamllint

## Description

`yamllint` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/yamllint](https://hub.docker.com/r/opslabhq/yamllint)

## Docker Image

- **Image Name**: `yamllint`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `pypi`
- **Depname**: `yamllint`

## Tags

The Docker image is tagged as follows:

- `opslabhq/yamllint:latest` - The latest stable version.
- `opslabhq/yamllint:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/yamllint:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/yamllint:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/yamllint:latest

# Run the image
docker run --name <container_name> -d opslabhq/yamllint:latest
```
