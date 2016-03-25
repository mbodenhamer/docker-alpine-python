FROM mbodenhamer/alpine:latest
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk update && apk add \
    python-dev \
    py-pip

RUN pip install -U pip
