# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=docker
ARG DOCKER_VERSION=27.3

FROM docker:${DOCKER_VERSION}-dind AS base

RUN apk add --no-cache sudo bash aws-cli git curl jq ca-certificates util-linux \
    && ln -s $(which aws) /bin/aws-cli

FROM base AS final

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
