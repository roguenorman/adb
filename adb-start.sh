#/bin/bash

/bin/sh -c "adb -a -P 5037 server nodaemon &"
/bin/bash /usr/local/bin/adb-auto-reconnect.sh 

