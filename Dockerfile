FROM ghcr.io/dock0/arch:20250414-118f508
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
