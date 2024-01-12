# Release Belt Docker image

Built upon a minimal and reasonably secure PHP + Nginx image. Credit:
- GitHub [TrafeX/docker-php-nginx](https://github.com/TrafeX/docker-php-nginx).
- Docker Hub [trafex/php-nginx](https://hub.docker.com/r/trafex/php-nginx).

## Building
Build from main project folder:
> docker build --file docker/Dockerfile . -t release-belt

## Running
Using a named volume to store releases:
> docker run --publish 8080:8080 --volume rb-releases:/var/www/html/releases release-belt
