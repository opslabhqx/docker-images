# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.3

FROM alpine:${ALPINE_VERSION} AS base

FROM base

RUN apk add --no-cache sudo bash

FROM base AS final

USER root
