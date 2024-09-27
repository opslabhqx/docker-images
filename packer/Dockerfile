# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

FROM base AS build

# renovate: datasource=github-releases depName=hashicorp/packer
ARG IMAGE_VERSION=1.11.2

RUN case `uname -m` in \
    x86_64) ARCH=linux_amd64; ;; \
    aarch64) ARCH=linux_arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN apk add --no-cache wget unzip

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://releases.hashicorp.com/packer/${IMAGE_VERSION}/packer_${IMAGE_VERSION}_${ARCH}.zip \
    && unzip /tmp/packer_${IMAGE_VERSION}_${ARCH}.zip -d /tmp \
    && mv /tmp/packer /usr/local/bin/packer

FROM base AS final

COPY --from=build /usr/local/bin/packer /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
