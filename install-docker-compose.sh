#!/usr/bin/env bash

printf "\nDownload docker-compose.yml ...\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/docker-compose.yml --output docker-compose.yml

printf "Create the .docker/php directory\n"
mkdir -p .docker/php

printf "Download .docker/php/Dockerfile file\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/.docker/php/Dockerfile --output .docker/php/Dockerfile


printf "Create the .docker/nginx directory\n"
mkdir -p .docker/nginx

printf "Generate SSL certificate"
openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -subj "/C=NL/ST=NH/L=AMSTERDAM/O=JORISROS/CN=localhost" -keyout ./.docker/nginx/localhost.key -out ./.docker/nginx/localhost.crt

printf "Download .docker/nginx/site.conf file\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/.docker/nginx/site.conf --output .docker/nginx/site.conf

printf "\n\nNow you can run the `docker-compose up -d` command\n"
