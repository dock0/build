FROM docker.pkg.github.com/dock0/arch/arch:20200214-14e4f0c
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
