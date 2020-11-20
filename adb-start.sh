#/bin/bash

/bin/bash /usr/local/bin/adb-auto-reconnect.sh
adb -a -P 5037 server nodaemon

