FROM alpine:3.6

LABEL maintainer Robert Peteuil <https://github.com/robertpeteuil>

ENV DOCKER_COMPOSE_VERSION 1.18.0

RUN apk --update add py-pip py-yaml &&\
    pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} &&\
    rm -rf `find / -regex '.*\.py[co]' -or -name apk`

WORKDIR /app
ENTRYPOINT ["/usr/bin/docker-compose"]
CMD ["--version"]
