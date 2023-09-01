FROM docker:23.0.6-dind

ENV EDGE_MAIN http://dl-cdn.alpinelinux.org/alpine/edge/main
ENV EDGE_COMMUNITY http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN apk update \
    --repository=$EDGE_MAIN \
    --repository=$EDGE_COMMUNITY

RUN apk --no-cache add \
    bash \
    git \
    curl \
    make \
    python3 \
    py3-pip \
    python3-dev \
    gcc \
    libc-dev \
    libffi-dev \
    php \
    php-common \
    php-curl \
    php-exif \
    php-iconv \
    php-intl \
    php-json \
    php-mbstring \
    php-posix \
    php-xml \
    php-zip \
    php-zlib \
    php-dom \
    zip \
    openssl-dev \
    openssh-client \
    lftp \
    rsync \
    --repository=$EDGE_MAIN \
    --repository=$EDGE_COMMUNITY

RUN rm -f /var/cache/apk/* \
	&& rm -rf /root/.cache