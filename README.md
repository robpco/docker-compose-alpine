# Supported tags and `Dockerfile` links

- [`latest`, `1.18.0` _(Dockerfile)_](https://github.com/robertpeteuil/docker-compose-alpine/blob/7f5827df56639565a2f644d1ae70adf240bb5179/Dockerfile)
- [`1.17.1` _(Dockerfile)_](https://github.com/robertpeteuil/docker-compose-alpine/blob/a959e78571971578d2819230ec640417378562c8/Dockerfile)

Tags correspond to the version of docker-compose in the image

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

If you need a different version of docker-compose:
- clone this repo locally
- edit the Dockerfile and change the value of ENV DOCKER_COMPOSE_VERSION to the version you want
  - note: the version specified must be available on PyPi
