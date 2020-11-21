FROM /sorccu/adb/
RUN mkdir /config
COPY config /config
COPY adb-start.sh /usr/local/bin/adb-start.sh
COPY adb-auto-reconnect.sh /usr/local/bin/adb-auto-reconnect.sh
RUN apk add --no-cache bash
EXPOSE 5037
CMD ["/usr/local/bin/adb-start.sh"]

