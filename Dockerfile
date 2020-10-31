FROM docker.pkg.github.com/dock0/arch/arch:20201031-4fc2a64
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree openssh
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
