FROM haproxy:1.5

ENV HP_SERVER_ADDR www.shadowsocks.com
ENV HP_PORT 1080
ENV HP_LPORT 8888


EXPOSE $HP_LPORT

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
