
#!/bin/bash

# Database credentials
DB_HOST="172.25.0.5"
DB_PORT="3306"
DB_USER="semaphore"
DB_PASS="google@123"

# Run the command to get the GTID position
gtid_binlog_pos=$(mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "SELECT @@gtid_binlog_pos")

# Check if the GTID position was retrieved
if [ -z "$gtid_binlog_pos" ]; then
    echo "Failed to retrieve GTID position. Make sure GTID-based replication is enabled."
else
    echo "Current GTID position: $gtid_binlog_pos"
fi
