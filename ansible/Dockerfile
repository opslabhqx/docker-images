# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${IMAGE_VERSION} AS base

FROM base AS build

# renovate: datasource=pypi depName=ansible
ARG ANSIBLE_VERSION=10.4.0

RUN case `uname -m` in \
    x86_64) ARCH=64bit; ;; \
    aarch64) ARCH=arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN apk add --no-cache dpkg curl python3 py3-pip py3-virtualenv libffi-dev gcc musl-dev python3-dev

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_${ARCH}/session-manager-plugin.deb" -o "session-manager-plugin.deb" \
    && dpkg -x session-manager-plugin.deb session-manager-plugin \
    && cp session-manager-plugin/usr/local/sessionmanagerplugin/bin/session-manager-plugin /usr/local/bin/session-manager-plugin \
    && chmod +x /usr/local/bin/session-manager-plugin

RUN python3 -m venv /venv \
    && . /venv/bin/activate \
    && pip install --no-cache-dir ansible==${ANSIBLE_VERSION} boto3

FROM base AS final

RUN apk add --no-cache bash python3 openssh curl make libc6-compat

COPY --from=build /usr/local/bin/session-manager-plugin /usr/local/bin
COPY --from=build /venv /venv

ENV PATH="/venv/bin:$PATH"

RUN ansible --version

USER root
