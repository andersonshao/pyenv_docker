#!/usr/bin/env bash

docker-compose down

docker rm $(docker ps -aq) -f

docker rmi $(docker images -aq) -f

docker volume prune -f
