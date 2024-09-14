# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.3

FROM alpine:${ALPINE_VERSION} AS base

RUN apk add --no-cache sudo bash

FROM base AS build

# renovate: datasource=github-tags depName=python/cpython
ARG PYTHON_VERSION=3.13.0b4

RUN apk add --no-cache git build-base zlib-dev ncurses-dev gdbm-dev nss-dev openssl-dev sqlite-dev readline-dev libffi-dev wget bzip2-dev \
    && git clone https://github.com/python/cpython.git -b v$PYTHON_VERSION \
    && cd cpython \
    && ./configure --disable-gil --enable-optimizations \
    && make \
    && sudo make install \
    && rm -rf /cpython

FROM base AS final

COPY --from=build /usr/local/bin/* /usr/local/bin
COPY --from=build /usr/local/lib/python* /usr/local/lib

USER root
