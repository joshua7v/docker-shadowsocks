#!/bin/bash

# ENV
SSSERVER_PORT=${SSSERVER_PORT:-8888}
SSSERVER_PASSWORD=${SSSERVER_PASSWORD:-freedom}
SSSERVER_TIMEOUT=${SSSERVER_TIMEOUT:-300}
SSSERVER_METHOD=${SSSERVER_METHOD:-aes-256-cfb}
SSSERVER_FAST_OPEN=${SSSERVER_FAST_OPEN:-true}
SSSERVER_WORKERS=${SSSERVER_WORKERS:-2}

echo "{
        \"server\": \"0.0.0.0\",
        \"server_port\": $SSSERVER_PORT,
        \"local_address\": \"127.0.0.1\",
        \"local_port\": 1080,
        \"password\": \"$SSSERVER_PASSWORD\",
        \"timeout\": $SSSERVER_TIMEOUT,
        \"method\": \"$SSSERVER_METHOD\",
        \"fast_open\": $SSSERVER_FAST_OPEN,
        \"workers\": $SSSERVER_WORKERS
}" > /etc/shadowsocks.json
     
ssserver -c /etc/shadowsocks.json start