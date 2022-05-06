#!/bin/bash

docker-compose -f infra/docker-compose.yaml up -d
docker-compose -f infra/docker-compose.yaml exec web python manage.py makemigrations
docker-compose -f infra/docker-compose.yaml exec web python manage.py migrate
docker-compose -f infra/docker-compose.yaml exec web python manage.py collectstatic --noinput
