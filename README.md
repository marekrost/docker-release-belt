# Docker Release Belt on PHP-FPM+Nginx+Alpine by trafex/php-nginx

Image repository:
- GitHub [marekrost/docker-release-belt](https://github.com/marekrost/docker-release-belt)
- Docker Hub [marekrost/release-belt](https://hub.docker.com/r/marekrost/release-belt)

Release Belt is a Composer repo for ZIPs.
- Original GitHub repo [Rarst/release-belt](https://github.com/Rarst/release-belt)

Docker image is based upon minimal PHP + Nginx from TrafeX.
- GitHub [TrafeX/docker-php-nginx](https://github.com/TrafeX/docker-php-nginx)
- Docker Hub [trafex/php-nginx](https://hub.docker.com/r/trafex/php-nginx)

## Usage

> docker run --publish 8080:8080 --volume rb-releases:/var/www/html/releases marekrost/release-belt
