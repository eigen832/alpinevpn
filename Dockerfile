FROM alpine 
RUN apk update && \
	apk add openssl openvpn curl
ADD ./bin /sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp
CMD run
