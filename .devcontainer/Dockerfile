# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/devcontainer/ubuntu-base
ARG VARIANT=jammy@sha256:aaf36fc661c0255318a150ec590382f8525005eb7a519bf18ec0305d9cf86b8b

FROM public.ecr.aws/opslabhq/devcontainer/ubuntu-base:${VARIANT:-latest}

# [Optional] Uncomment this section to install additional OS packages.
# RUN $(which sudo) apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && $(which sudo) apt-get install -y --no-install-recommends <your-package-list-here>
