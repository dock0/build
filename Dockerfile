FROM docker.pkg.github.com/dock0/arch/arch:20200214-3f4ffcc
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
