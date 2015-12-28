FROM haproxy:1.5

ENV REMORT_SERVER_ADDR=do.xulog.com
ENV REMOTE_PORT=8888
ENV RELAY_PORT=9999

EXPOSE $RELAY_PORT

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN echo "frontend RELAY \n bind *:$RELAY_PORT \n default_backend REMOTE_SERVER" >> /usr/local/etc/haproxy/haproxy.cfg

RUN echo "backend REMOTE_SERVER \n server server1 $REMORT_SERVER_ADDR:$REMOTE_PORT maxconn 20480" >> /usr/local/etc/haproxy/haproxy.cfg
