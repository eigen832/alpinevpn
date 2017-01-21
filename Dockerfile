FROM alpine
RUN apk update && \
    apk add openssl openvpn iptables curl
ADD ./bin /sbin
EXPOSE 1194/udp
CMD run
