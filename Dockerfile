FROM haproxy:1.5

ENV HP_SERVER_ADDR www.shadowsocks.com
ENV HP_PORT 1080


EXPOSE 8000

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
