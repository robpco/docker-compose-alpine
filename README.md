# Supported tags and `Dockerfile` links

- [`latest`, `1.23.0` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/33175ed36a6c6931f498222723757e4fb6f0e936/Dockerfile)
- [`1.22.0` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/571382f6dc1f4f99ef8398f0d935328f83bb5b05/Dockerfile)
- [`1.21.2` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/976b72d54365fc366bfa345eec8c2c18de65634d/Dockerfile)
- [`1.19.0` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/1a37dc907d1e40c56962e9da4810e97f319aa99b/Dockerfile)
- [`1.18.0` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/7f5827df56639565a2f644d1ae70adf240bb5179/Dockerfile)
- [`1.17.1` _(Dockerfile)_](https://github.com/robpco/docker-compose-alpine/blob/a959e78571971578d2819230ec640417378562c8/Dockerfile)

Tags correspond to the **docker-compose** version used in the image

## DOCKER-COMPOSE-ALPINE

Extremely small **Docker-Compose** image built with **Alpine Linux 3.7** that's only 35MB when pulled locally.

**GitHub Repo**: <https://github.com/robpco/docker-compose-alpine>

**Docker Hub Image**: <https://hub.docker.com/r/robpco/docker-compose-alpine/>

## USING THIS IMAGE AS LOCAL COMMAND

Pull the image with:

```shell
docker pull robpco/docker-compose-alpine
```

Configure your system to use this image as a local command by creating an alias in .bashrc:

```shell
alias docker-compose='docker run --rm -t $(tty &>/dev/null && echo "-i") robpco/docker-compose-alpine'
```

## ADVANCED CONFIGURATION

To use a specific version of docker-compose (that's not available via an image tag):

- clone this repo locally
- edit the Dockerfile and set DOCKER_COMPOSE_VERSION to the required version
  - note: the version specified must be available on PyPi
- build your adjusted Dockerfile with a unique tag: `docker build -t docker-compose-alpine:${UNIQUE_VERSION} .`
- use as described above, but use your unique tag when defining the `alias`
