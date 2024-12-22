#!/bin/bash

SERVICE="exemple"
OUTPUT="/var/lib/node_exporter/textfile_collector/service_exemple.prom"

if systemctl is-active --quiet "$SERVICE"; then
        STATUS=1

else
        STATUS=0

fi

echo "service_exemple_status{service=\"$SERVICE\"} $STATUS" > "$OUTPUT"
