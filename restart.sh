#!/usr/bin/env bash

docker-compose restart web

docker-compose build nginx && docker-compose up -d nginx

docker-compose logs --tail=12 web
