# -*- dockerfile -*-
FROM python:2-alpine
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk add --no-cache \
    bash \
    gcc \
    libc-dev \
    make

RUN pip install -U --no-cache \
    depman==0.3.4 \
    yatr==0.0.5

CMD ["python2"]