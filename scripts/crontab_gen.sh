#!/bin/sh
#set -e

echo "${CRON_RUN_MINUTE-0} ${CRON_RUN_HOUR-0} * * * /pgpass.sh /pg_backup_rotated.sh  2>&1 | tee /log/docker_pg_backup.log" >/etc/crontabs/root
