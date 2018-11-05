#!/bin/bash

set -euxo pipefail

sleep_cnt=0
limit=5

while [ $sleep_cnt -lt $limit ]; do
    if docker-compose exec mysql $1; then break; fi
    >&2 echo "MySQL is unavailable - sleeping"
    sleep 1
    sleep_cnt=$(($sleep_cnt+1))
done

if [ $sleep_cnt -eq $limit ]; then
    >&2 echo "Timed out attempting to connect to MySQL"
    exit 1
fi
