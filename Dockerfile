FROM alpine 

RUN apk update && \
	apk add openssl openvpn iptables socat curl

ADD ./bin /sbin

VOLUME /etc/openvpn

EXPOSE 443/tcp 1194/udp 8080/tcp

CMD run
