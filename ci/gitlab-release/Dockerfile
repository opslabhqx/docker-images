# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3@sha256:2d3dea7c9bec65f9dd9147e63ee74a30b594e5ad5b415db446857e90b02e03d0

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

FROM base AS build

# renovate: datasource=gitlab-releases depName=gitlab-org/release-cli
ARG IMAGE_VERSION=v0.18.0

RUN case `uname -m` in \
    x86_64) ARCH=amd64; ;; \
    aarch64) ARCH=arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN apk add --no-cache bash curl jq

RUN export ARCH=$(cat /tmp/ARCH) \
    && echo $ARCH \
    && curl --location --output /usr/local/bin/release-cli "https://gitlab.com/gitlab-org/release-cli/-/releases/${IMAGE_VERSION}/downloads/bin/release-cli-linux-${ARCH}"

FROM base AS final

COPY --from=build /usr/local/bin/release-cli /usr/local/bin

RUN chmod +x /usr/local/bin/*

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
