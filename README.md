# OpenVPN for Docker on Alpine

Quick instructions: see https://github.com/jpetazzo/dockvpn


Specific for alpine :

```bash
CID=$(docker run -d --privileged --restart=always -p 1194:1194/udp eigen/alpinevpn)
docker run -rm -t -i -p 8080:8080 --volumes-from $CID eigen/alpinevpn serveconfig
```
