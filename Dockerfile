FROM alpine:latest
LABEL maintainer "DI GREGORIO Nicolas <nicolas.digregorio@gmail.com>"

ARG TEST1
ARG DOCKPGDB
ARG DOCKPGHOST
ARG DOCKPGUSER
ARG DOCKPGPASSWD

### Environment variables
ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    TERM='xterm' \
    TEST1=$TEST1 \
    DOCKPGDB=$DOCKPGDB \
    DOCKPGHOST=$DOCKPGHOST \
    DOCKPGUSER=$DOCKPGUSER \
    DOCKPGPASSWD=$DOCKPGPASSWD


### Install Application
RUN apk --no-cache upgrade && \
    apk add --no-cache --virtual=build-deps \
      gcc \
      jpeg-dev \
      python3-dev \
      musl-dev \
      postgresql-dev \
      zlib-dev && \
    apk add --no-cache --virtual=run-deps \
      python3 \ 
      jpeg \
      ssmtp \
      postgresql-libs \
      su-exec && \
    pip3 --no-cache-dir install --upgrade setuptools pip && \
    pip3 --no-cache-dir install --upgrade mezzanine psycopg2 gunicorn && \
    apk del --no-cache --purge \
      build-deps  && \
    rm -rf /tmp/* \
           /var/cache/apk/*  \
           /var/tmp/*

### Add Original Django Project
RUN mkdir /project
COPY project /project

### Expose ports
EXPOSE 8000

### Running User: not used, managed by docker-entrypoint.sh
#USER mezzanine

### Start Mezzanine
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mezzanine"]
