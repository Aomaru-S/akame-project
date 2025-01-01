FROM mcr.microsoft.com/devcontainers/base:jammy

USER root

# Prepare
RUN apt-get update &&\
    apt-get install -y curl

USER vscode

# Install nvm and Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" &&\
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" &&\
    nvm install 22.12.0
