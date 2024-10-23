# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3@sha256:717fe6ca662b94e35472a622c3ab83705f2a55b3f61e661aa1615bf84e24c182

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

FROM base AS build

# renovate: datasource=github-releases depName=hashicorp/terraform
ARG IMAGE_VERSION=1.9.8
# renovate: datasource=github-releases depName=gruntwork-io/terragrunt
ARG TERRAGRUNT_VERSION=0.68.4
# renovate: datasource=github-releases depName=terraform-docs/terraform-docs
ARG TERRAFORMDOCS_VERSION=0.19.0

RUN case `uname -m` in \
    x86_64) ARCH=linux_amd64; ;; \
    aarch64) ARCH=linux_arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN apk add --no-cache wget unzip

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://releases.hashicorp.com/terraform/${IMAGE_VERSION}/terraform_${IMAGE_VERSION}_${ARCH}.zip \
    && unzip /tmp/terraform_${IMAGE_VERSION}_${ARCH}.zip -d /tmp \
    && mv /tmp/terraform /usr/local/bin/terraform

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_${ARCH} \
    && mv /tmp/terragrunt_$ARCH /usr/local/bin/terragrunt

RUN export ARCH=$(cat /tmp/ARCH | sed 's/_/-/g') \
    && cd /tmp \
    && wget -q https://github.com/terraform-docs/terraform-docs/releases/download/v${TERRAFORMDOCS_VERSION}/terraform-docs-v${TERRAFORMDOCS_VERSION}-${ARCH}.tar.gz \
    && tar -xvf terraform-docs-v${TERRAFORMDOCS_VERSION}-${ARCH}.tar.gz \
    && mv /tmp/terraform-docs /usr/local/bin/terraform-docs

FROM base AS final

COPY --from=build /usr/local/bin/* /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ARG USER=default
ENV HOME=/home/$USER

RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME
