#!/bin/bash

echo "Set permission for graphite exporter"
chown -R $(id -u $(whoami)) ./graphite_exporter/
chmod +x ./graphite_exporter/graphite_exporter

cd ./graphite_exporter
echo "Start graphite exporter"
./graphite_exporter --graphite.sample-expiry="48h"