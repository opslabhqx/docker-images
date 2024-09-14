# python-no-gil

## Description

`python-no-gil` Docker image. It is maintained and published under the `opslabhq` Docker Hub account.

[https://hub.docker.com/r/opslabhq/python-no-gil](https://hub.docker.com/r/opslabhq/python-no-gil)

## Docker Image

- **Image Name**: `python-no-gil`
- **Docker Hub Username**: `opslabhq`
- **Supported Platforms**: `linux/amd64`
- **Datasource**: `github-tags`
- **Depname**: `python/cpython`

## Tags

The Docker image is tagged as follows:

- `opslabhq/python-no-gil:${{ env.PYTHON_VERSION }}-alpine${{ env.ALPINE_VERSION }}`
- `opslabhq/python-no-gil:${{ env.PYTHON_VERSION }}`
- `opslabhq/python-no-gil:alpine${{ env.ALPINE_VERSION }}`
- `opslabhq/python-no-gil:latest`

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull opslabhq/python-no-gil:latest

# Run the image
docker run --name <container_name> -d opslabhq/python-no-gil:latest
```
