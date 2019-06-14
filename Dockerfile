FROM alpine:latest

LABEL maintainer Robert Peteuil <https://github.com/robertpeteuil>

ENV DOCKER_COMPOSE_VERSION 1.23.0

RUN apk --update add py-pip &&\
    pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} &&\
    rm -rf `find / -regex '.*\.py[co]' -or -name apk`

WORKDIR /app
ENTRYPOINT ["/usr/bin/docker-compose"]
CMD ["--version"]
