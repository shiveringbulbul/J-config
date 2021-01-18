#!/usr/bin/env bash


export DOLLAR='$'
envsubst < ./src/configs/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g "daemon off;"
