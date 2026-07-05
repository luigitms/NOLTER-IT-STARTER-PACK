#!/usr/bin/env bash

set -euo pipefail

if [ ! -f .env ]; then
  echo ".env file not found. Creating it from .env.example..."
  cp .env.example .env
fi

docker compose up -d
docker ps