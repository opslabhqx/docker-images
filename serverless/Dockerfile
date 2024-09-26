# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${IMAGE_VERSION} AS base

FROM base AS final

# renovate: datasource=npm depName=serverless
ARG SERVERLESS_VERSION=4.4.3

RUN apk add --no-cache nodejs npm

RUN npm install -g serverless@${SERVERLESS_VERSION}

USER root
