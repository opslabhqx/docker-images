# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ubuntu
ARG UBUNTU_VERSION=oracular

FROM ubuntu:${UBUNTU_VERSION} AS base

RUN apt-get update

FROM base AS build

# renovate: datasource=github-tags depName=python/cpython
ARG PYTHON_VERSION=3.13.0rc2

RUN sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev \
    && git clone https://github.com/python/cpython.git -b v$PYTHON_VERSION \
    && cd cpython \
    && ./configure --disable-gil --enable-optimizations \
    && make \
    && sudo make install \
    && rm -rf /cpython

FROM base AS final

COPY --from=build /usr/local/bin/* /usr/local/bin
COPY --from=build /usr/local/lib /usr/local/lib

USER root
