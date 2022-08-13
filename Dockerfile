FROM ghcr.io/dock0/arch:20220813-6d40699
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
