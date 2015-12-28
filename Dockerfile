FROM haproxy:1.5
MAINTAINER XGFan

EXPOSE 9999

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
