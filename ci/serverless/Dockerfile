# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3@sha256:8c090efb3ffbe5796dc7d09cddf96acea7bcbad83b70521f77ee95ab67135dc1

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

FROM base AS final

# renovate: datasource=npm depName=serverless
ARG IMAGE_VERSION=4.4.5

RUN apk add --no-cache nodejs npm

RUN npm install -g serverless@${IMAGE_VERSION}

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
