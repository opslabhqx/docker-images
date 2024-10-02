# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=ubuntu
ARG BASE_VERSION=oracular-20240918@sha256:c62f1babc85f8756f395e6aabda682acd7c58a1b0c3bea250713cd0184a93efa

FROM ubuntu:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

RUN apt-get update \
    && apt-get install -y curl

FROM base AS final

# renovate: datasource=github-releases depName=conda/conda
ARG IMAGE_VERSION=24.7.1

RUN case `uname -m` in \
    x86_64) ARCH=x86_64; ;; \
    aarch64) ARCH=aarch64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-py312_${IMAGE_VERSION}-0-Linux-$ARCH.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b -p /opt/conda \
    && rm /tmp/miniconda.sh

ENV PATH=/opt/conda/bin:$PATH

USER root
WORKDIR /root
