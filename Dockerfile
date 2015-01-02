FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby openssh base-devel musl clang
RUN gem install --no-user-install --no-rdoc --no-ri targit
WORKDIR /opt/build
CMD ["make", "local"]
