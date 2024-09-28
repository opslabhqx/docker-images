# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=alpine
ARG BASE_VERSION=3.20.3@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d

FROM alpine:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

RUN apk add --no-cache sudo bash python3

FROM base AS build

# renovate: datasource=pypi depName=yamllint
ARG IMAGE_VERSION=1.35.1

RUN apk add --no-cache py3-pip py3-virtualenv python3-dev

RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir yamllint==${IMAGE_VERSION}

FROM base AS final

COPY --from=build /venv /venv

ENV PATH="/venv/bin:$PATH"

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
