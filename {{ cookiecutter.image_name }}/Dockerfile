# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.2

FROM alpine:${ALPINE_VERSION} as base

FROM base as build

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

FROM base as final

## COPY --from=build . .

## Clear and enable Alpine caching
RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
