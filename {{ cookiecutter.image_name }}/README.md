# {{ cookiecutter.image_name }}

## Description

`{{ cookiecutter.image_name }}` Docker image. It is maintained and published under the `{{ cookiecutter.dockerhub_username }}` Docker Hub account.

[https://hub.docker.com/r/{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}](https://hub.docker.com/r/{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }})

## Docker Image

- **Image Name**: `{{ cookiecutter.image_name }}`
- **Docker Hub Username**: `{{ cookiecutter.dockerhub_username }}`
- **Supported Platforms**: `{{ cookiecutter.image_platforms }}`
- **Datasource**: `{{ cookiecutter.image_datasource }}`
- **Depname**: `{{ cookiecutter.image_depname }}`

## Tags

The Docker image is tagged as follows:

- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:{% raw %}${{ env.IMAGE_VERSION }}{% endraw %}-{{ cookiecutter.base_image }}{% raw %}${{ env.{% endraw %}{{ cookiecutter.BASE_IMAGE }}_VERSION {% raw %}}}{% endraw %}`
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:{% raw %}${{ env.IMAGE_VERSION }}{% endraw %}`
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:{{ cookiecutter.base_image }}{% raw %}${{ env.{% endraw %}{{ cookiecutter.BASE_IMAGE }}_VERSION {% raw %}}}{% endraw %}`
- `{{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest`
ASE
## Usage

To pull and run the Docker image, use the following commands:

```bash
# Pull the image
docker pull {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest

# Run the image
docker run --name <container_name> -d {{ cookiecutter.dockerhub_username }}/{{ cookiecutter.image_name }}:latest
```
