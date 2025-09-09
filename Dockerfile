FROM ghcr.io/dock0/arch:20250909-844e8b8
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
