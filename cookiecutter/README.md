# cookiecutter

## Description

`cookiecutter` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/cookiecutter](https://hub.docker.com/r/opslabhq/cookiecutter)

## Docker Image

- **Image Name**: `cookiecutter`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `pypi`
- **Depname**: `cookiecutter`

## Tags

The Docker image is tagged as follows:

- `opslabhq/cookiecutter:latest` - The latest stable version.
- `opslabhq/cookiecutter:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/cookiecutter:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/cookiecutter:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/cookiecutter:latest

# Run the image
docker run --name <container_name> -d opslabhq/cookiecutter:latest
```
