#!/usr/bin/env bash

docker run \
    -d \
    --name some-nginx \
    --network host \
    -v "${HOME}":/root \
    -v "${HOME}/nginx_docker/config/nginx.conf":/etc/nginx/nginx.conf \
    -v "${HOME}/nginx_docker/config/conf.d":/etc/nginx/conf.d \
    nginx:alpine
