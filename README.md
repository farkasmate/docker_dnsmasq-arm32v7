# docker_dnsmasq-arm32v7

Docker container to run dnsmasq on arm32v7.

To use on WD EX2 Ultra NAS (comes with `docker`).

## DISCLAIMER

*From WD's website:*

**Critical:** The use of SSH (Secure Shell) can potentially harm the My Cloud EX2 Ultra device and could result in loss of access to the device and/or data.
**The use of SSH to modify or attempt to modify the device outside of the normal operation of the product voids your WD warranty.**

## Usage

```
docker run --detach --name pxe-server --volume /shares/Volume_1/home/git/docker_dnsmasq-arm32v7/example/dnsmasq.conf:/etc/dnsmasq.conf:ro --volume /shares/Volume_1/tftpboot/:/tftpboot/:ro --net host matefarkas/dnsmasq-arm32v7:latest
```
