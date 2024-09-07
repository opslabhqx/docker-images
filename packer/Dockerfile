# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.3

FROM alpine:${ALPINE_VERSION} AS base

FROM base as build

# renovate: datasource=github-releases depName=hashicorp/packer
ARG PACKER_VERSION=1.11.2

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=linux_arm64; \
    else \
        export ARCH=linux_amd64; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN apk add --no-cache wget unzip

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_$ARCH.zip \
    && unzip /tmp/packer_${PACKER_VERSION}_$ARCH.zip -d /tmp \
    && mv /tmp/packer /usr/local/bin/packer

RUN chmod +x /usr/local/bin/packer

FROM base AS final

RUN apk add --no-cache bash aws-cli \
    && ln -s $(which aws) /bin/aws-cli

COPY --from=build /usr/local/bin/packer /usr/local/bin/

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
