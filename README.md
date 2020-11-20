## Description
extends the adb server from sorccu/adb with an auto reconnect feature.

## Usage

Create a file named config in /config with the following parameters:

#interval to reconnect to the devices  
timer=15 

#address:port of each device to reconnect to  
ipaddr=(192.168.1.20:5555 192.168.1.21:5555) 


```
docker run -d --name adb-server \
-v /path/to/config:/config \
-p 5037:5037 \
rogueranga/adb
```


please see sorccu/adb repo for full documentation
