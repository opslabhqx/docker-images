# syntax=docker/dockerfile:1

# renovate: datasource=docker depName=ubuntu
ARG BASE_VERSION=jammy

FROM ubuntu:${BASE_VERSION} AS base

LABEL maintainer="Anthony Yung <yhs88a@gmail.com>" \
    org.opencontainers.image.source="https://github.com/opslabhqx/docker-images"

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y --no-install-recommends sudo git curl ca-certificates build-essential zsh nano

ARG USER=default
ENV HOME=/home/$USER

RUN adduser --disabled-password --gecos "" $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && passwd $USER -d \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME

RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
    && echo "HISTFILE=~/.bash_history" >> ~/.bashrc \
    && echo "HISTSIZE=10000" >> ~/.bashrc \
    && echo "HISTFILESIZE=10000" >> ~/.bashrc \
    && echo "shopt -s histappend" >> ~/.bashrc \
    && echo 'PROMPT_COMMAND="history -a; $PROMPT_COMMAND"' >> ~/.bashrc \
    && (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc \
    && touch ~/.bash_history \
    && chmod 600 ~/.bash_history

RUN touch ~/.zshrc \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions \
    && echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting \
    && echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc \
    && echo "HISTFILE=~/.zsh_history" >> ~/.zshrc \
    && echo "HISTSIZE=10000" >> ~/.zshrc \
    && echo "SAVEHIST=10000" >> ~/.zshrc \
    && echo "setopt INC_APPEND_HISTORY" >> ~/.zshrc \
    && echo "setopt SHARE_HISTORY" >> ~/.zshrc \
    && echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc \
    && touch ~/.zsh_history \
    && chmod 600 ~/.zsh_history
