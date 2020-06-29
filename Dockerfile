FROM alpine
RUN apk add --no-cache rsyslog haproxy
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
COPY rsyslog.conf /etc/rsyslog.conf
CMD rsyslogd -n && haproxy -f /etc/haproxy/haproxy.cfg
