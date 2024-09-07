# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.3

FROM alpine:${ALPINE_VERSION} AS base

FROM base AS build

# renovate: datasource=pypi depName=yamllint
ARG YAMLLINT_VERSION=1.35.1

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=arm64; \
    else \
        export ARCH=64bit; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN apk add --no-cache dpkg curl python3 py3-pip py3-virtualenv python3-dev

RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir yamllint==${YAMLLINT_VERSION}

FROM base AS final

RUN apk add --no-cache bash python3

COPY --from=build /venv /venv

ENV PATH="/venv/bin:$PATH"

RUN yamllint --version

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
