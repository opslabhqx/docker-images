# serverless

## Description

`serverless` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/serverless](https://hub.docker.com/r/opslabhq/serverless)

## Docker Image

- **Image Name**: `serverless`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-releases`
- **Depname**: `serverless/serverless`

## Tags

The Docker image is tagged as follows:

- `opslabhq/serverless:latest` - The latest stable version.
- `opslabhq/serverless:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/serverless:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/serverless:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/serverless:latest

# Run the image
docker run --name <container_name> -d opslabhq/serverless:latest
```
