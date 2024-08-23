# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ubuntu
ARG UBUNTU_VERSION=22.10

FROM ubuntu:${UBUNTU_VERSION} AS base

RUN apt-get update \
    && apt-get install -y curl

FROM base AS final

# renovate: datasource=github-releases depName=conda/conda
ARG MINICONDA_VERSION=24.5.0

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=aarch64; \
    else \
        export ARCH=x86_64; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-py312_$MINICONDA_VERSION-0-Linux-$ARCH.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b \
    && rm /tmp/miniconda.sh

USER root
