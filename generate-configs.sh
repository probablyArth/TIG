#!/usr/bin/env bash

set -e

echo "✅ Loading environment variables from .env..."

# Load .env into current shell
set -o allexport
source .env
set +o allexport

echo "✅ Generating Telegraf config..."

envsubst < telegraf/telegraf.template.conf > telegraf/telegraf.conf

echo "✅ Generating Grafana datasource config..."

envsubst < grafana/datasources/datasource.template.yml > grafana/datasources/datasource.yml

echo "✅ All configs generated!"
