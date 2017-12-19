# Supported tag and `Dockerfile` link

- [`latest` _(Dockerfile)_](https://github.com/robertpeteuil/docker-compose-alpine/blob/master/Dockerfile)


# DOCKER-COMPOSE-ALPINE

Extremely small **Docker-Compose** image built with **Alpine Linux 3.6**.  It’s only 35 MB (approx.) when downloaded locally.

**GitHub Repo**: <https://github.com/robertpeteuil/docker-compose-alpine>

**Docker Hub Image**: <https://hub.docker.com/r/robpco/docker-compose-alpine/>

# USING THIS IMAGE

Pull the image with:

```shell
docker pull robpco/docker-compose-alpine
```

Configure your system to use this image as a local command by creating an alias in .bashrc:

```shell
alias docker-compose='docker run --rm -t $(tty &>/dev/null && echo "-i") robpco/docker-compose-alpine'
```

# REFERENCE

This image installs docker-compose version 1.18.0 (released 2017-12-18)

If you need a different version of docker-compose:
- clone this repo locally
- edit the Dockerfile and change the value of ENV DOCKER_COMPOSE_VERSION to the version you want
  - note: the version specified must be available on PyPi
