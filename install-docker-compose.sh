#!/usr/bin/env bash

printf "\nDownload docker-compose.yml ...\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/docker-compose.yml --output docker-compose.yml

printf "Create the .docker/php directory\n"
mkdir -p .docker/php

printf "Download .docker/php/Dockerfile file\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/.docker/php/Dockerfile --output .docker/php/Dockerfile


printf "Create the .docker/nginx directory\n"
mkdir -p .docker/nginx

printf "Download .docker/nginx local certificate\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/.docker/nginx/localhost.crt --output .docker/nginx/localhost.crt
curl --silent https://github.com/jorisros/laravel-docker-compose/blob/master/.docker/nginx/localhost.key --output .docker/nginx/localhost.key

printf "Download .docker/nginx/site.conf file\n"
curl --silent https://raw.githubusercontent.com/jorisros/laravel-docker-compose/master/.docker/nginx/site.conf --output .docker/nginx/site.conf

printf "\n\nNow you can run the docker-compose up -d command\n"
