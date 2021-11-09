FROM docker.pkg.github.com/dock0/arch/arch:20211109-5b6e7bb
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree openssh
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
