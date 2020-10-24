FROM docker.pkg.github.com/dock0/arch/arch:20201024-c0d7a74
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree openssh
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
