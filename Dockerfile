FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

# Install LaTeX and required packages
RUN apt-get update -q && apt-get install -qy \
    curl jq \
    texlive-full \
    texlive-fonts-extra \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
