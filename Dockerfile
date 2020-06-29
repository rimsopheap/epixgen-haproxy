FROM alpine
RUN apk add --no-cache rsyslog haproxy
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
CMD rsyslogd
