#!/bin/bash

MODEM=192.168.0.1

sleep 5m

while true;
do
    ping -c1 $MODEM > /dev/null 2>&1
    if[ $? -qe 0 ]; then
        echo "OK" > /dev/null
    else
        shutdown -h now
    fi
done
