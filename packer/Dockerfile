# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${IMAGE_VERSION} AS base

FROM base AS build

# renovate: datasource=github-releases depName=hashicorp/packer
ARG PACKER_VERSION=1.11.2

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
    && wget -q https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_${ARCH}.zip \
    && unzip /tmp/packer_${PACKER_VERSION}_${ARCH}.zip -d /tmp \
    && mv /tmp/packer /usr/local/bin/packer

RUN chmod +x /usr/local/bin/packer

FROM base AS final

COPY --from=build /usr/local/bin/packer /usr/local/bin/

USER root
