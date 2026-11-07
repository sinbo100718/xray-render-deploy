FROM docker.io/teddysun/xray:latest
ENTRYPOINT []
CMD ["/bin/sh", "-c", "printf \"%s\" \"$XRAY_CONFIG\" > /tmp/config.json; sed -i \"s/__PORT__/${PORT:-10000}/g\" /tmp/config.json; exec /usr/bin/xray run -config /tmp/config.json"]
