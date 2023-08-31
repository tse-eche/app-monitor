#!/bin/bash

echo "Set permission for prometheus"
chown -R $(id -u $(whoami)) ./prometheus/
chmod +x ./prometheus/prometheus

cd ./prometheus
echo "Start prometheus"
./prometheus --web.listen-address=:8080 --enable-feature=remote-write-receiver
