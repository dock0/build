FROM docker.pkg.github.com/dock0/arch/arch:20200217-3eef3df
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
