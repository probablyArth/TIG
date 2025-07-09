#!/usr/bin/env bash

./generate-configs.sh
docker-compose --env-file .env up -d
