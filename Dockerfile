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

RUN mkdir -p /etc/bash_completion.d \
    && yatr --install-bash-completions > /dev/null \
    && echo "source /etc/bash_completion.d/yatr" >> /root/.bashrc

CMD ["python2"]