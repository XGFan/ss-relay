FROM haproxy:1.5


ENV RELAY_PORT=9999

EXPOSE $RELAY_PORT

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN echo "frontend RELAY \n bind *:$RELAY_PORT \n default_backend REMOTE_SERVER" >> /usr/local/etc/haproxy/haproxy.cfg

RUN echo "backend REMOTE_SERVER \n server server1 $IP:$PORT maxconn 20480" >> /usr/local/etc/haproxy/haproxy.cfg
