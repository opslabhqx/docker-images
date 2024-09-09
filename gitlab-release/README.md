# gitlab-release

## Description

`gitlab-release` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/gitlab-release](https://hub.docker.com/r/opslabhq/gitlab-release)

## Docker Image

- **Image Name**: `gitlab-release`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64,linux/arm64`
- **Datasource**: `gitlab-releases`
- **Depname**: `gitlab-org/release-cli`

## Tags

The Docker image is tagged as follows:

- `opslabhq/gitlab-release:${{ env.GITLAB_RELEASE_VERSION }}-alpine${{ env.IMAGE_VERSION }}`
- `opslabhq/gitlab-release:${{ env.GITLAB_RELEASE_VERSION }}`
- `opslabhq/gitlab-release:alpine${{ env.IMAGE_VERSION }}`
- `opslabhq/gitlab-release:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/gitlab-release:latest

# Run the image
docker run --name <container_name> -d opslabhq/gitlab-release:latest
```
