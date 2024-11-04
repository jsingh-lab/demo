#!/bin/bash

# Database credentials
DB_HOST="172.25.0.5"
DB_PORT="3306"
DB_USER="semaphore"
DB_PASS="google@123"

# Connect to MySQL and list all databases, then count tables in each
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "
SELECT table_schema AS 'Database', COUNT(*) AS 'Table Count'
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
GROUP BY table_schema;
"
