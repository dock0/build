FROM docker.pkg.github.com/dock0/arch/arch:20210704-f5a6fa0
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree openssh
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
