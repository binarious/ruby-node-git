FROM starefossen/ruby-node:2-8-alpine

RUN apk update \
  && apk add \
  git \
  build-base \
  openssh-client \
  python2

# For ImageMagick 6 hack
RUN apk add ca-certificates wget \
  && update-ca-certificates \
  && wget https://www.imagemagick.org/download/releases/ImageMagick-6.9.9-20.tar.xz \
  && tar -xf ImageMagick-6.9.9-20.tar.xz \
  && cd ImageMagick-6.9.9-20/ \
  && ./configure \
  && make install