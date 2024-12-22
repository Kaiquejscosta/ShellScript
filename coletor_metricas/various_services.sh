#!/bin/bash

SERVICES=("exemple1" "exemple2" "exemple3")
OUTPUT="/var/lib/node_exporter/textfile_collector/service_exemple.prom"

> "$OUTPUT"

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quit "$SERVICE"; then
        STATUS=1

     else
        STATUS=0
     fi

     echo "service_exemple_status{service=\"$SERVICE\"} $STATUS" >> "$OUTPUT"
done
