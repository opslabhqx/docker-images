# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine:${IMAGE_VERSION} AS base

FROM base

RUN apk add --no-cache aws-cli curl jq \
    && ln -s $(which aws) /bin/aws-cli

FROM base AS final

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
