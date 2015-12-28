FROM haproxy:1.5

ENV REMORT_SERVER_ADDR do.xulog.com
ENV REMOTE_PORT 8888
ENV RELAY_PORT 8000

EXPOSE $RELAY_PORT

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
