# kubectl

## Description

`kubectl` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/kubectl](https://hub.docker.com/r/opslabhq/kubectl)

## Docker Image

- **Image Name**: `kubectl`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `github-tags`
- **Depname**: `kubernetes/kubectl`

## Tags

The Docker image is tagged as follows:

- `opslabhq/kubectl:${{ env.KUBECTL_VERSION }}-alpine${{ env.IMAGE_VERSION }}`
- `opslabhq/kubectl:${{ env.KUBECTL_VERSION }}`
- `opslabhq/kubectl:alpine${{ env.IMAGE_VERSION }}`
- `opslabhq/kubectl:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/kubectl:latest

# Run the image
docker run --name <container_name> -d opslabhq/kubectl:latest
```
