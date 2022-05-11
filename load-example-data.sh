#!/bin/bash

docker-compose -f infra/docker-compose.yaml exec web python3 manage.py loaddata fixtures.json