FROM sorccu/adb/
RUN mkdir /config
COPY config /config
COPY adb-start.sh /usr/local/bin/adb-start.sh
RUN apk add --no-cache bash
CMD ["/usr/local/bin/adb-start.sh"]

