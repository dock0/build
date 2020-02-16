FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20200216-f005dfa
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm base-devel musl-amylum vim-minimal tree
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
