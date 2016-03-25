FROM python:2-alpine
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk update && apk add \
    bash

CMD ["python2"]
