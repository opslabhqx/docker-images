# Docker Images

![Licence: MIT](https://img.shields.io/github/license/opslabhqx/docker-images)

This repository contains Dockerfiles for building Docker images for various tools. Each tool has its own directory, with a Dockerfile tailored for it.

The repository is configured to automatically update and rebuild Docker images using Renovate. Renovate monitors each Dockerfile and creates pull requests to update them when new versions are available.

[https://hub.docker.com/u/opslabhq](https://hub.docker.com/u/opslabhq)

## Cookiecutter Template

This repository uses [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) for managing Docker image templates. When initializing a new Docker image, Cookiecutter will prompt for the following variables:

1. **image_name**: The name of the Docker image (e.g., `terraform`).
2. **IMAGE_NAME**: The uppercase version of the image name (e.g., `TERRAFORM`).
3. **dockerhub_username**: Your Docker Hub username (e.g., `opslabhq`).
4. **image_platforms**: The platforms to support (e.g., `linux/amd64,linux/arm64`).
5. **image_datasource**: The datasource for version updates (e.g., `https://docs.renovatebot.com/modules/datasource/`).
6. **image_depname**: The dependency name for the Docker image (e.g., `hashicorp/terraform`).

To generate a new Docker image template, navigate to the root of this repository and run:

```
cookiecutter .
```

Follow the prompts to input the required information.

## Contributing

Contributions are welcome! To contribute to this project:

1. Fork the repository and clone your fork locally.
2. Create a new branch for your changes.
3. Make your changes and commit them with descriptive messages.
4. Push your changes to your fork and create a pull request against the main repository.

Please ensure that your changes adhere to the project's coding standards and pass all tests.

## License

This project is licensed under the [MIT License](/LICENSE). See the LICENSE file for details.
