# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${IMAGE_VERSION} AS base

FROM base AS build

# renovate: datasource=gitlab-releases depName=gitlab-org/release-cli
ARG GITLAB_RELEASE_VERSION=v0.18.0

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=arm64; \
    else \
        export ARCH=amd64; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN apk add --no-cache bash curl jq

RUN export ARCH=$(cat /tmp/ARCH) \
    && echo $ARCH \
    && curl --location --output /usr/local/bin/release-cli "https://gitlab.com/gitlab-org/release-cli/-/releases/$GITLAB_RELEASE_VERSION/downloads/bin/release-cli-linux-$ARCH" \
    && chmod +x /usr/local/bin/release-cli \
    && release-cli --version

FROM base AS final

COPY --from=build /usr/local/bin/release-cli /usr/local/bin

USER root
