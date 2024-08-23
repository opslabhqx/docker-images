# syntax=docker/dockerfile:1

# renovate: datasource=docker depName={{ cookiecutter.base_image }}
ARG {{ cookiecutter.BASE_IMAGE }}_VERSION=1.0.0

FROM {{ cookiecutter.base_image }}:{% raw %}${{% endraw %}{{ cookiecutter.BASE_IMAGE }}_VERSION{% raw %}}{% endraw %} AS base

FROM base AS build

# renovate: datasource={{ cookiecutter.image_datasource }} depName={{ cookiecutter.image_depname }}
ARG {{ cookiecutter.IMAGE_NAME }}_VERSION=1.0.0

## Set up architecture-specific variables
RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=linux_arm64; \
    else \
        export ARCH=linux_amd64; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN apk add --no-cache bash

## Main
RUN export ARCH=$(cat /tmp/ARCH) \
    && echo $ARCH

FROM base AS final

## COPY --from=build . .

USER root
