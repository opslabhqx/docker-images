# terraform

## Description

`terraform` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/terraform](https://hub.docker.com/r/opslabhq/terraform)

## Docker Image

- **Image Name**: `terraform`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-releases`
- **Depname**: `hashicorp/terraform`

## Tags

The Docker image is tagged as follows:

- `opslabhq/terraform:latest` - The latest stable version.
- `opslabhq/terraform:${{ env.IMAGE_VERSION }}-alpine${{ env.ALPINE_VERSION }}` - Specific version with Alpine tag.
- `opslabhq/terraform:${{ env.IMAGE_VERSION }}` - Specific version.
- `opslabhq/terraform:alpine${{ env.ALPINE_VERSION }}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/terraform:latest

# Run the image
docker run --name <container_name> -d opslabhq/terraform:latest
```
