FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby openssh base-devel musl vim-minimal tree
RUN gem install --no-user-install --no-rdoc --no-ri targit gist
ENV EDITOR vim
WORKDIR /opt/build
CMD ["make", "local"]
