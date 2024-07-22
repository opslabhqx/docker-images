# docker-images

This repository contains Dockerfiles for building Docker images for various tools. It is organized into directories, each with its own Dockerfile.

The repository is set up to automatically update the Docker images and rebuild them using Renovate. Renovate is configured to monitor the Dockerfile in each directory and create pull requests to update them when a new version is available.

[![Docker Image for Ansible](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_ansible.yml/badge.svg)](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_ansible.yml)
[![Docker Image for Packer](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_packer.yml/badge.svg)](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_packer.yml)
[![Docker Image for Terraform](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_terraform.yml/badge.svg)](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_terraform.yml)
[![Docker Image for Tor](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_tor.yml/badge.svg)](https://github.com/opslabhqx/docker-images/actions/workflows/docker_buildx_tor.yml)

## License

This project is licensed under the [MIT License](/LICENSE). See the LICENSE file for details.
