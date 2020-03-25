FROM ubuntu:18.04

# Change default shell to sh
RUN rm /bin/sh && ln -sf /bin/bash /bin/sh

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    apt-utils \
    apt-transport-https \
    gnupg2 \
    curl \
    wget \
    locales && \
    rm -rf /var/lib/apt/lists/*

# Set default language to US and UTF8 encoding
RUN locale-gen "en_US.UTF-8"

ENV LANG "en_US.UTF-8"
ENV LANGUAGE "en_US.UTF-8"
ENV LC_ALL "en_US.UTF-8"

# Install apt packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    kubectl=1.16.3-00

RUN cp monitor /usr/local/bin/monitor && \
chmod a+x /usr/local/bin/monitor
