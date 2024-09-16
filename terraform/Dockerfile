# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG IMAGE_VERSION=3.20.3

FROM opslabhq/alpine-ci:${IMAGE_VERSION} AS base

FROM base AS build

# renovate: datasource=github-releases depName=hashicorp/terraform
ARG TERRAFORM_VERSION=1.9.5
# renovate: datasource=github-releases depName=gruntwork-io/terragrunt
ARG TERRAGRUNT_VERSION=0.67.6
# renovate: datasource=github-releases depName=terraform-docs/terraform-docs
ARG TERRAFORMDOCS_VERSION=0.18.0

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
    && wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_${ARCH}.zip \
    && unzip /tmp/terraform_${TERRAFORM_VERSION}_${ARCH}.zip -d /tmp \
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

RUN chmod +x /usr/local/bin/*

FROM base AS final

COPY --from=build /usr/local/bin/* /usr/local/bin/

USER root
