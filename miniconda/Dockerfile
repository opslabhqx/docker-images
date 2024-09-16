# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ubuntu
ARG UBUNTU_VERSION=oracular-20240617

FROM ubuntu:${UBUNTU_VERSION} AS base

RUN apt-get update \
    && apt-get install -y curl

FROM base AS final

# renovate: datasource=github-releases depName=conda/conda
ARG MINICONDA_VERSION=24.7.1

RUN case `uname -m` in \
    x86_64) ARCH=x86_64; ;; \
    aarch64) ARCH=aarch64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-py312_${MINICONDA_VERSION}-0-Linux-$ARCH.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -b -p /opt/conda \
    && rm /tmp/miniconda.sh

ENV PATH=/opt/conda/bin:$PATH

WORKDIR /root

USER root
