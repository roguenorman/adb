#!/bin/bash

test -f /config/config && . /config/config || echo "config file does not exist."

while true; do             
    for val in "${ipaddr[@]}"; do
        if [ $(adb devices | grep "$val" | wc -l) -lt 1 ]; then
            adb connect $val                                   
            adbExitCode=$?                                   
            if [ $adbExitCode -ne 0 ]; then
                echo "adb connect failed"  
            fi                             
        fi                               
        sleep $timer
    done
done                                                           

