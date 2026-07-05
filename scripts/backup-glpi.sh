#!/usr/bin/env bash

set -euo pipefail

mkdir -p backups

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

echo "Creating GLPI database backup..."
docker exec nolter-glpi-db mysqldump -u root -p"${MYSQL_ROOT_PASSWORD:-root_password}" glpi > "backups/glpi-db-${DATE}.sql"

echo "GLPI backup created: backups/glpi-db-${DATE}.sql"