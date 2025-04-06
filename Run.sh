#!/bin/bash

CONFIG_PATH="/data/mpp-solar.conf"

cat <<EOF > $CONFIG_PATH
[global]
loglevel = info
mqttbroker = ${MQTT_HOST}
mqttport = ${MQTT_PORT}
mqttuser = ${MQTT_USER}
mqttpassword = ${MQTT_PASSWORD}
mqtttopic = mppsolar
mqttdiscovery = True
mqttdiscoveryprefix = homeassistant
devicepath = /dev/ttyUSB0

[device]
name = axpert
protocol = PI30
port = /dev/ttyUSB0
commands = QPIGS
EOF

echo "Starting mpp-solar with config:"
cat $CONFIG_PATH

while true; do
    mpp-solar -c $CONFIG_PATH
    sleep 10
done
