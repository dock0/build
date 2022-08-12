FROM ghcr.io/dock0/arch:20220812-1d1a19e
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
