FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y supervisor

COPY /assets /tmp

ENV SUPER="Hello supervisor vars"

CMD ["/usr/bin/supervisord", "-c", "/tmp/supervisor/supervisord.conf"]
