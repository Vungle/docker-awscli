FROM alpine:3.8

# Default evironment variables.

RUN apk add -q --update \
    && apk add -q \
            python py-pip py-setuptools \
            ca-certificates \
    && pip install --upgrade pip \
    && pip install awscli \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]