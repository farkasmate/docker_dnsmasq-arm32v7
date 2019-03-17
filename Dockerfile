FROM arm32v7/ubuntu:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    dnsmasq \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 67/udp 69/udp 4011/udp
ENTRYPOINT ["/usr/sbin/dnsmasq", "--conf-file=/etc/dnsmasq.conf", "--keep-in-foreground"]
