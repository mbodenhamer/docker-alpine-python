FROM python:2-alpine
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk add --no-cache \
    bash \
    gcc \
    libc-dev \
    make

CMD ["python2"]
