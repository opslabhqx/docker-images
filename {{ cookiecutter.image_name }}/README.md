# {{ cookiecutter.image_name }}

## Description

`{{ cookiecutter.image_name }}` Docker image. It is maintained and published under the `{{ cookiecutter.dockerhub_username }}` Docker Hub account.

## Docker Image

- **Image Name**: `{{ cookiecutter.image_name }}`
- **Docker Hub Username**: `{{ cookiecutter.dockerhub_username }}`
- **Supported Platforms**: `{{ cookiecutter.image_platforms }}`
- **Datasource**: `{{ cookiecutter.image_datasource }}`
- **Depname**: `{{ cookiecutter.image_depname }}`

## Tags

The Docker image is tagged as follows:

- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest` - The latest stable version.
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:{% raw %}${{ env.IMAGE_VERSION }}{% endraw %}-alpine{% raw %}${{ env.ALPINE_VERSION }}{% endraw %}` - Specific version with Alpine tag.
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:{% raw %}${{ env.IMAGE_VERSION }}{% endraw %}` - Specific version.
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:alpine{% raw %}${{ env.ALPINE_VERSION }}{% endraw %}` - Alpine version.

## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest

# Run the image
docker run --name <container_name> -d {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest
```
