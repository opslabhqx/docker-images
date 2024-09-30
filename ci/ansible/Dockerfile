# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3@sha256:aea0743e634b1942d9161ec801abb2d8c5d8fd85eff4950ba37e4b7e21c44c0d

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

RUN apk add --no-cache sudo bash python3 openssh curl make libc6-compat

FROM base AS build

# renovate: datasource=pypi depName=ansible
ARG IMAGE_VERSION=10.4.0

RUN case `uname -m` in \
    x86_64) ARCH=64bit; ;; \
    aarch64) ARCH=arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN apk add --no-cache dpkg py3-pip py3-virtualenv libffi-dev gcc musl-dev python3-dev

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_${ARCH}/session-manager-plugin.deb" -o "session-manager-plugin.deb" \
    && dpkg -x session-manager-plugin.deb session-manager-plugin \
    && cp session-manager-plugin/usr/local/sessionmanagerplugin/bin/session-manager-plugin /usr/local/bin/session-manager-plugin

RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir ansible==${IMAGE_VERSION} boto3

FROM base AS final

COPY --from=build /usr/local/bin/session-manager-plugin /usr/local/bin
COPY --from=build /venv /venv

RUN chmod +x /usr/local/bin/*

ENV PATH="/venv/bin:$PATH"

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
