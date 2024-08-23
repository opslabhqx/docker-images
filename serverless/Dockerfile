# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.2
# renovate: datasource=docker depName=node
ARG SERVERLESS_VERSION=20.17.0

FROM alpine:${ALPINE_VERSION} AS base

FROM base AS final

RUN apk add --no-cache bash nodejs npm aws-cli \
    && ln -s $(which aws) /bin/aws-cli

RUN npm install -g serverless@$SERVERLESS_VERSION

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
