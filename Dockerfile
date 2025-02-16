FROM ghcr.io/dock0/arch:20250216-0e07f13
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
