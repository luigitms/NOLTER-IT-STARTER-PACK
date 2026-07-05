#!/usr/bin/env bash

set -euo pipefail

mkdir -p backups

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

echo "Creating NetBox database backup..."
docker exec nolter-netbox-db pg_dump -U "${NETBOX_DB_USER:-netbox}" "${NETBOX_DB_NAME:-netbox}" > "backups/netbox-db-${DATE}.sql"

echo "NetBox backup created: backups/netbox-db-${DATE}.sql"