# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=alpine
ARG ALPINE_VERSION=3.20.3

FROM alpine:${ALPINE_VERSION} AS base

FROM base as build

# renovate: datasource=github-releases depName=hashicorp/terraform
ARG TERRAFORM_VERSION=1.9.5
# renovate: datasource=github-releases depName=gruntwork-io/terragrunt
ARG TERRAGRUNT_VERSION=0.67.5
# renovate: datasource=github-releases depName=terraform-docs/terraform-docs
ARG TERRAFORMDOCS_VERSION=0.18.0

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        export ARCH=linux_arm64; \
    else \
        export ARCH=linux_amd64; \
    fi \
    && echo $ARCH > /tmp/ARCH

RUN apk add --no-cache wget unzip

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_$ARCH.zip \
    && unzip /tmp/terraform_${TERRAFORM_VERSION}_$ARCH.zip -d /tmp \
    && mv /tmp/terraform /usr/local/bin/terraform

RUN export ARCH=$(cat /tmp/ARCH) \
    && cd /tmp \
    && wget -q https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_$ARCH \
    && mv /tmp/terragrunt_$ARCH /usr/local/bin/terragrunt

RUN export ARCH=$(cat /tmp/ARCH | sed 's/_/-/g') \
    && cd /tmp \
    && wget -q https://github.com/terraform-docs/terraform-docs/releases/download/v${TERRAFORMDOCS_VERSION}/terraform-docs-v${TERRAFORMDOCS_VERSION}-$ARCH.tar.gz \
    && tar -xvf terraform-docs-v${TERRAFORMDOCS_VERSION}-$ARCH.tar.gz \
    && mv /tmp/terraform-docs /usr/local/bin/terraform-docs

RUN chmod +x /usr/local/bin/*

FROM base AS final

RUN apk add --no-cache bash aws-cli \
    && ln -s $(which aws) /bin/aws-cli

COPY --from=build /usr/local/bin/* /usr/local/bin/

RUN mkdir -p /var/cache/apk \
    && ln -s /var/cache/apk /etc/apk/cache \
    && rm -rf /var/cache/apk/*

USER root
