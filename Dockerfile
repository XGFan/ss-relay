FROM haproxy:1.5
MAINTAINER 40huo

EXPOSE 40001 40002 40003

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
