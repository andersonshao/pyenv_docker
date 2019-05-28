#!/usr/bin/env bash

docker-compose build

docker-compose up -d

docker container prune -f

docker image prune -f

docker volume prune -f

docker exec -it backend_web_1 /bin/sh -c "python3 manage.py collectstatic"
