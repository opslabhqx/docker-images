# syntax=docker/dockerfile:1@sha256:865e5dd094beca432e8c0a1d5e1c465db5f998dca4e439981029b3b81fb39ed5

# renovate: datasource=docker depName=opslabhq/alpine-ci
ARG BASE_VERSION=3.20.3@sha256:119f02da851c5168179c6ca0dc2d2f46d4afe2da8c4230794a0e414052c1a544

FROM opslabhq/alpine-ci:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

FROM base AS build

# renovate: datasource=github-tags depName=kubernetes/kubectl
ARG IMAGE_VERSION=1.17.5
# renovate: datasource=github-releases depName=helm/helm
ARG HELM_VERSION=3.16.1
# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ARG KUSTOMIZE_VERSION=v5.4.3

RUN case `uname -m` in \
    x86_64) ARCH=amd64; ;; \
    aarch64) ARCH=arm64; ;; \
    *) echo "un-supported arch, exit ..."; exit 1; ;; \
    esac \
    && echo $ARCH > /tmp/ARCH \
    && cat /tmp/ARCH

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -sLO "https://dl.k8s.io/release/v${IMAGE_VERSION}/bin/linux/${ARCH}/kubectl" \
    && mv kubectl /usr/local/bin/kubectl

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -sL https://get.helm.sh/helm-v${HELM_VERSION}-linux-${ARCH}.tar.gz | tar -xvz \
    && mv linux-${ARCH}/helm /usr/local/bin/helm \
    && rm -rf linux-${ARCH}

RUN helm plugin install https://github.com/chartmuseum/helm-push \
    && rm -rf /tmp/helm-*

RUN export ARCH=$(cat /tmp/ARCH) \
    && curl -sLO https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_${ARCH}.tar.gz \
    && tar xvzf kustomize_${KUSTOMIZE_VERSION}_linux_${ARCH}.tar.gz \
    && mv kustomize /usr/local/bin/kustomize \
    && rm kustomize_${KUSTOMIZE_VERSION}_linux_${ARCH}.tar.gz

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
